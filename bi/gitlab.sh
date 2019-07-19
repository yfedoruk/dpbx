#!/bin/bash

project=`git config --get remote.origin.url`
delimiter="%2F"
source_branch=`git symbolic-ref --short HEAD`
token=$(<~/bi/gitlab_token.txt)

project="${project:19}"
project="${project:0:-4}"
echo ${project}

project="${project//\//$delimiter}"

url="https://gitlab.favorit/api/v4/projects/${project}/merge_requests"
echo ${url}


echo "Source branch is: ${source_branch} ? (y/n)"
read -s -n 1 is_source_correct 

if [[ "${is_source_correct}" == "y" || "${is_source_correct}" == "" ]]; then
    echo "...proceed..."
else
    echo "wrong!"
    exit 1
fi

echo "Create merge request ${source_branch} ==> dev"

create_result=`curl -k -H "PRIVATE-TOKEN: ${token}" -X POST "${url}?source_branch=${source_branch}&target_branch=dev&title=${source_branch}&assignee_id=75"`

iid=`echo ${create_result} | jq '.iid'`

#is iid a number?
re='^[0-9]+$'
if ! [[ ${iid} =~ $re ]] ; then
   echo "error: ${create_result}" >&2;
   exit 1
fi

echo "iid=${iid}"

echo "merge ${source_branch} ==> dev"
merge_result=`curl -k -H "PRIVATE-TOKEN: ${token}" -X PUT "${url}/${iid}/merge?&should_remove_source_branch=false&merge_when_pipeline_succeeds=true"`
echo ${merge_result}

message=`echo ${merge_result} | jq '.message'`

if [[ "${message}" == "\"405 Method Not Allowed\"" ]]; then

    close_msg="close iid=${iid}"
    echo -e "\033[41m${close_msg}\033[0m"

    close_result=`curl -k -H "PRIVATE-TOKEN: ${token}" -X PUT "${url}/${iid}?state_event=close"`
    close_state=`echo ${close_result}  | jq '.state'`

    if [[ "${close_state}" != "\"closed\"" ]]; then
        echo ${close_result}
    fi
fi

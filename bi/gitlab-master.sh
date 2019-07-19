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

create_result=`curl -k -H "PRIVATE-TOKEN: ${token}" -X POST "${url}?source_branch=${source_branch}&target_branch=master&title=WIP:${source_branch}&assignee_id=103"`

iid=`echo ${create_result} | jq '.iid'`

#is iid a number?
re='^[0-9]+$'
if ! [[ ${iid} =~ $re ]] ; then
   echo "error: ${create_result}" >&2;
   exit 1
fi

echo "iid=${iid}"

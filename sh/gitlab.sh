#!/bin/bash

echo "project: ihub(1), icms(2)"
read service

if [ ${service} -eq 1  ]; then
    project="ihub-sw"
    echo $project
elif [ ${service} -eq 2  ]; then
    project="icms"
    echo $project
else
    echo "wrong!"
    exit 1
fi

source_branch=`git symbolic-ref --short HEAD`
echo "Source branch is: ${source_branch} ? (y/n)"
read -s -n 1 is_source_correct


if [[ "${is_source_correct}" == "y" || "${is_source_correct}" == "" ]]; then
	echo "...proceed..."
elif [ "${is_source_correct}" == "n"  ]; then
	echo "Enter source branch:"
    read source_branch
else
    echo "wrong!"
    exit 1
fi

url=""

echo "Create merge reauest ${source_branch} ==> dev"
iid=`curl -k -H "PRIVATE-TOKEN: " -X POST "${url}?source_branch=${source_branch}&target_branch=dev&title=${source_branch}&assignee_id=75" | jq '.iid'`

echo "iid=${iid}"

echo "merge ${source_branch} ==> dev"
curl -k -H "PRIVATE-TOKEN: " -X PUT "${url}/${iid}/merge?&should_remove_source_branch=false&merge_when_pipeline_succeeds=true"

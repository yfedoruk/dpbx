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

echo "Source branch:"
read source_branch

echo "Create merge reauest ${source_branch} ==> dev"
iid=`curl -k -H "PRIVATE-TOKEN: " -X POST "%2F${project}/merge_requests?source_branch=${source_branch}&target_branch=dev&title=${source_branch}&assignee_id=75" | jq '.iid'`

echo "iid=${iid}"

echo "merge ${source_branch} ==> dev"
curl -k -H "PRIVATE-TOKEN: " -X PUT "%2F${project}/merge_requests/${iid}/merge?&should_remove_source_branch=false&merge_when_pipeline_succeeds=true"

#!/bin/bash


# GLOBIGNORE is a shell variable that allows to define certain patterns to identify things we don’t want to be displayed whenever wildcards are used. So if I said “GLOBIGNORE=”*secret*”, secret.txt and top_secret.txt would not have been listed. 

IFS=$'\r\n' GLOBIGNORE='*' :; arr=($(git config --get-regexp  gitflow.branch.hotfix/*))

#IFS=$'\n' read -d '' -r -a arr | xargs git config --get-regexp  gitflow.branch.hotfix/*

#readarray arr  | git config --get-regexp  gitflow.branch.hotfix/*
for i in "${!arr[@]}"
do
	if [ $((i % 2)) == 0 ]; then
		t="$(echo "${arr[$i]}" | sed "s/\.base//g")"
		git config --remove-section $t
	fi
done


#echo "${arr[1]}"


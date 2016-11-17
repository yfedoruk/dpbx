#!/bin/bash
git fetch origin
OUTPUT=$(git log HEAD..origin/master --oneline | wc -l)
if [ $OUTPUT -gt 0 ]
then
	git pull origin master
fi


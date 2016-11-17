#!/bin/bash
#
# get list of directories in the current directory and create for each directory file directory_name.csv.
# Find $this->__('some_text') in all files in directory_name and return list of "some_text" into directory_name.csv file.
#

d=`ls -d */`
export pattern="/"

for word in $d; do
    cue=$(echo $word | tr -d '/')
    grep -rh --exclude-dir={\.svn,var,sql} "\$this->__('" ./$cue/* > $cue.csv ;
    sed -i "s/.*\$this->__('/\"/" $cue.csv
    sed -i "s/'.*/\"/" $cue.csv
done


#grep -rh --exclude-dir={\.svn,var,sql} "\$this->__('" ./$@/* > $@.csv ;
#sed -i "s/.*\$this->__('/\"/" $@.csv
#sed -i "s/'.*/\"/" $@.csv

#grep -rnE --exclude-dir={\.svn,var,sql} '[^-]>\s*\w+[^<]*<' .
perl -ne '/[^-]>\s*(\w+[^<]*)</ && print "$1\n"' ./wishlist/view.phtml

#replace
perl -pi~ -e 's/([^-]>\s*)(\w+[^<]*)(<)/$1$2$3/' header.phtml



grep -rnE --exclude-dir={runtime,vac_storage,yii,var,l10n} --include=*{\.js,\.php} 'https://inmyvac.com' ./owncloud/
#find
perl -ne '/('"'"'https:\/\/inmyvac.com)/ && print "$1\n"' ./owncloud/settings/templates/logs.php
#replace
perl -pi~ -e 's/('"'"'https:\/\/inmyvac.com)/'"'"'https:\/\/'"'"' \+ window.location.host \+ '"'"'/' ./owncloud/settings/templates/logs.php

perl -pi~ -e 's/("https:\/\/inmyvac.com)/"https:\/\/" \+ window.location.host \+ "/'
perl -ne '/("https:\/\/inmyvac.com)/ && print "$1\n"'
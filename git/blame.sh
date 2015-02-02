#! /bin/bash
files=($(find ./mailvac -type f))
for item in ${files[*]}
do
  #printf "   %s\n" $item
  x=$(git blame $item | grep vac2)
  if [ ! -z "$x" ]; then
  	printf "   %s\n" $item
  fi
done
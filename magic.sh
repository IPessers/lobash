#!/bin/bash

#find all files with lodash
# find . \( -iname *.js -o -iname *.jsx \) -type f -print

# starting from current position, excluding node_modules & build directory, find all files ending with js or jsx and pass them to look for lodash word
#find . -path './node_modules' -prune -o -path './build' -prune -o -regex '.*jsx?$' -type f -print0 | xargs --null grep -Ee 'lodash'

#possibility exclude file or folder
#exclude node_modules
#possibilty to give the location of the project to script

filesWithLodash="$(\
  find . \
    -path './node_modules' -prune -o \
    -path './build' -prune -o \
    -regex '.*jsx?$' -type f -print0 | \
  xargs --null grep -Ee 'lodash'\
)"
#echo "${filesWithLodash}"

#find var name for lodash in the file
#replace all usage
#store found function
#no duplication

for importLine in $filesWithLodash; do
  echo "$importLine"
done

#replace import
#generate 1 import per function used in the file
#support commonJs + ES6

#generate statistics

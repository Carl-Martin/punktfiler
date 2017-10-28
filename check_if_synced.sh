#!/bin/bash

# Help variable
equal=1
for file in $(git ls-files); do
    echo $file
    diff $file "${HOME}/${file}" || equal=0
done

if [[ $equal == 1 ]]
then
    echo "All files are in sync!"
    exit 0
else
    echo "WARNING: Files out of sync!"
    exit 1
fi

exit 2

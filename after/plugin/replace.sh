#!/bin/zsh

find . -type f -name '*.lua' | while read FILE ; do
    newfile="$(echo ${FILE} |sed -e 's/.rc//')" ;
    # mv "${FILE}" "${newfile}" ;
    git mv "${FILE}" "${newfile}" ;
done

#!/bin/sh -l
for f in $(find $1 *.lsl -type f -print)
do
    lslint -v -p $f
done

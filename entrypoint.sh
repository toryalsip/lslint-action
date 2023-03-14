#!/bin/sh -l
for f in $(find $1 -name '*.lsl' -type f -print)
do
    lslint -v -p $f
done

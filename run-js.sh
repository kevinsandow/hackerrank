#!/usr/bin/env bash

for i in $1/*.in
do
    echo ${i}
    cat ${i} | node ${1}/solution.js | tee ${i%.in}.tmp
    diff -u ${i%.in}.tmp  ${i%.in}.out
done
#!/bin/bash



for i in $(seq 0 ${#1})
do
    echo ${1[${i}]}
done
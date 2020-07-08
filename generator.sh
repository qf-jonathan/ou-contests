#!/usr/bin/env bash

baseDir=$1
firstCase=$2
lastCase=$3
casesDir=$baseDir/cases

if [ $# -lt 4 ]; then
    prefix=""
else
    prefix=$4
fi

generatorSource=$baseDir/$baseDir-gen.cpp

if [ ! -e $generatorSource ]; then
    tput bold; tput setaf 1; echo "ERROR: Generator source not found!!"; tput sgr0;
    exit 1
fi

g++ $generatorSource -o __generator__ -std=c++14
for case in $(seq $firstCase 1 $lastCase); do
    name=$casesDir/$prefix$case.in
    ./__generator__ $(( (RANDOM<<15) | RANDOM )) > $name
done
rm __generator__

tput bold; tput setaf 2; echo "SUCCESS: Generated cases!!"; tput sgr0;
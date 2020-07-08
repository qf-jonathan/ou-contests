#!/usr/bin/env bash

baseDir=$1
distDir="$baseDir/dist"
statementDir="$distDir/statements"
casesDir="$distDir/cases"

if [ ! -e $baseDir/ ]; then
    tput setaf 1; echo "ERROR: No problem directory found"; tput sgr0
    exit 1
fi

rm $distDir/ -rf
mkdir $distDir/
mkdir $statementDir/
mkdir $casesDir/

bash ./validate.sh $1 >/dev/null 2>&1
validationCode=$?

if [ $validationCode -eq 2 ]; then
    tput bold; tput setaf 3; echo "WARNING: No validator found!!"; tput sgr0
fi

if [ $validationCode -eq 0 ] || [ $validationCode -eq 2 ]; then
    ls -1 $baseDir/statements/*.markdown >/dev/null 2>&1
    if [ $? -eq 0 ]; then
        cp $baseDir/statements/*.markdown $statementDir
    else
        tput bold; tput setaf 3; echo "WARNING: No statements found!!"; tput sgr0
    fi
    ls -1 $baseDir/cases/*.in >/dev/null 2>&1
    if [[ $? -eq 0 ]]; then
        cp $baseDir/cases/*.in $casesDir
        g++ $baseDir/$1.cpp -o __problemSolution__ -std=c++14
        for input in $casesDir/*.in; do
            ./__problemSolution__ < $input > $casesDir/$(basename $input .in).out
        done
        rm __problemSolution__
        tput bold; tput setaf 2; echo "SUCCESS: Contest Created!!"; tput sgr0
    else
        tput bold; tput setaf 3; echo "WARNING: No cases found!!"; tput sgr0
    fi
else
    tput bold; tput setaf 1;
    echo "ERROR: There are validation errors, please execute the command \"./validate.sh $1\""; tput sgr0
fi
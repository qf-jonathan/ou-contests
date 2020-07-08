#!/usr/bin/env bash

baseDir=$1
casesDir="$baseDir/cases"
validatorSource=$baseDir/$baseDir-val.cpp

if [ -f $validatorSource ]; then
    g++ $validatorSource -o __validator__ -std=c++14
    count=0
    tput bold; tput setaf 4; echo "Validating cases in \"$casesDir\":"; tput sgr0;
    for input in $casesDir/*.in; do
        msg="$(./__validator__ < $input 2>&1)"
        if [ $? -eq 0 ]; then
            echo "Validation of \"$input\": $(tput setaf 2)OK$(tput sgr0)"
        else
            echo "Validation of \"$input\": $(tput setaf 1)$msg"; tput sgr0;
            ((count++))
        fi
    done
    rm __validator__
    if [ $count -eq 0 ]; then
        tput bold; tput setaf 2; echo "SUCCESS: All validations passed!!"; tput sgr0;
        exit 0
    else
        tput bold; tput setaf 1; echo "ERROR: There are validation errors ($count)!!"; tput sgr0;
    fi
else
    tput bold; tput setaf 1; echo "ERROR: Validator source not found!!"; tput sgr0;
    exit 2
fi
exit 1
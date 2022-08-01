#!/bin/bash

# Script: Ops 201 Class 06 Ops Challenge Solution
# Author: Jon Salhus
# Date of latest revision: 8/1/2022
# Purpose: Detects if a file exists, creates file if it does not

#Main
    FILE_ARRAY=( file1.txt file2.txt )
    if [[ -f ${FILE_ARRAY[0]} ]]; then
        echo "${FILE_ARRAY[0]} exists."
    else
        echo "${FILE_ARRAY[0]} does not exist. Creating file..."
        until [[ -f ${FILE_ARRAY[0]} ]]
        do
            > ${FILE_ARRAY[0]}
        done
    fi

       if [[ -f ${FILE_ARRAY[1]} ]]; then
        echo "${FILE_ARRAY[1]} exists."
    else
        echo "${FILE_ARRAY[1]} does not exist. Creating file..."
        until [[ -f ${FILE_ARRAY[1]} ]]
        do
            > ${FILE_ARRAY[1]}
        done
    fi
#End

#!/bin/bash

# Script: Ops 201 Class 05 Ops Challenge Solution
# Author: Jon Salhus                  
# Date of latest revision: 7/29/2022   
# Purpose: Print running processes, ask the user for a PID, then kill the process with that PID

# This initializes a process in the background
    nohup vim &
# This displays running processes
    ps -aux
# This asks the user for input
    echo "Please enter a proccess ID."
    read -p 'PID: ' pidvar
# This creates a loop using 'pidvar'
    yournumber='^[0-9]+$'
    until [[ $pidvar =~ $yournumber ]]
        do 
            echo "PID must be a number. Please try again."
            read -p 'PID: ' pidvar
    done
# This kills the process
    kill $pidvar
#!/bin/bash

# Script: Ops 201 Class 03 Ops Challenge Solution
# Author: Jon Salhus
# Date of latest revision: 7/27/2022
# Purpose: Print login history of users on this system

function print_users {
	a=$1
	if [ $a == "run" ]; then
	 last
	fi
	echo "Login history of users successfully printed."
}

#This calls the function print_users
print_users run

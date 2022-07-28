#!/bin/bash

# Script: Ops 201 Class 04 Ops Challenge Solution
# Author: Jon Salhus
# Date of latest revision: 7/28/2022
# Purpose: Creates directories and files within those directories

# Creates four directories
	mkdir {dir1,dir2,dir3,dir4}
# Creates an array
	DIR_ARRAY=(
/c/users/Jon/Ops_Challenges/dir1
/c/users/Jon/Ops_Challenges/dir2
/c/users/Jon/Ops_Challenges/dir3
/c/users/Jon/Ops_Challenges/dir4
)
# References the array and creates a file in each directory
> ${DIR_ARRAY[0]}/file1.txt
> ${DIR_ARRAY[1]}/file2.txt
> ${DIR_ARRAY[2]}/file3.txt
> ${DIR_ARRAY[3]}/file4.txt


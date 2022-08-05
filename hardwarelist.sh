#!/bin/bash

# Script: Ops 201 Class 07 Ops Challenge Solution
# Author: Jon Salhus
# Date of latest revision: 8/4/2022
# Purpose: Displays system information, parses out unnecessary information

#Main

#Computer Name
    echo "Computer Name: "
    sudo lshw -class system | head -n 1
#CPU
    echo "CPU: "
    sudo lshw -class processor | grep "product"
    sudo lshw -class processor | grep "vendor"
    sudo lshw -class processor | grep "physical id"
    sudo lshw -class processor | grep "bus info"
    sudo lshw -class processor | grep "width"
#RAM
    echo "RAM: "
    sudo lshw | grep -A 4 "*-memory" | grep -v "*-" | grep -v "slot"
#Display adapter
    echo "Display adapter: "
    sudo lshw -class display | grep -v "version" | grep -v "logical name" | grep -v "*-"
#Network adapter
    echo "Network adapter: "
    sudo lshw -class network | grep -v "*-"



#End
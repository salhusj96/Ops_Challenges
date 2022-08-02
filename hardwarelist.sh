#!/bin/bash

# Script: Ops 201 Class 07 Ops Challenge Solution
# Author: Jon Salhus
# Date of latest revision: 8/2/2022
# Purpose: Displays system information, parses out unnecessary information

#Main

#Computer Name
    echo "Computer Name: "
    sudo lshw -class system | grep "product" | grep -v "PnP"
#CPU
    echo "CPU: "
    sudo lshw -class processor | grep "product"
    sudo lshw -class processor | grep "vendor"
    sudo lshw -class processor | grep "physical id"
    sudo lshw -class processor | grep "bus info"
    sudo lshw -class processor | grep "width"
#RAM
    echo "RAM: "
    sudo lshw -class memory | grep "description" | grep -v "firmware" | grep -v "cache" | grep -v "bank" | grep -v "BIOS" | grep -v "System Memory"
    sudo lshw -class memory | grep "physical id" | grep -v "bank" | grep -v "0" | grep -v "34"| grep -v "35"| grep -v "36" | grep -v "1"
    sudo lshw -class memory | grep "size" | grep -v "bank"
#Display adapter
    echo "Display adapter: "
    sudo lshw -class display | grep -v "version" | grep -v "logical name" | grep -v "*-"
#Network adapter
    echo "Network adapter: "
    sudo lshw -class network | grep -v "*-"


#End
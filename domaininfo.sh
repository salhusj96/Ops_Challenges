#!/bin/bash

# Script: Ops 201 Class 13 Ops Challenge Solution
# Author: Jon Salhus                  
# Date of latest revision: 8/10/2022   
# Purpose: Asks user for a domain, then displays information about the typed domain and outputs to a text file

    read -p "Domain Name: " domain_name

    function get_domain_info {
       whois $domain_name | dig $domain_name | host $domain_name | nslookup $domain_name | tee domainanalysis.txt
    }
    get_domain_info

    nano domainanalysis.txt
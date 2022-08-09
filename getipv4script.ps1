<# 
Script: Ops 201 Class 12 Challenge Solution
Author: Jon Salhus
Date of latest revision: 8/9/2022
Purpose: Writes ipconfig to a file and fetches information from that file
#>

<# Create a local file called network_report.txt that holds the contents of an ipconfig /all command. #>

function Get-NetworkReport {
    $Generate_Network_Report = ipconfig /all > "network_report.txt"
    Select-String -Path "network_report.txt" -Pattern "IPv4 Address"
}

Get-NetworkReport
echo "This report will now be deleted."
Pause
Remove-Item -Path "network_report.txt"
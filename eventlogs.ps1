<# 
Script: Ops 201 Class 09 Challenge Solution
Author: Jon Salhus
Date of latest revision: 8/4/2022
Purpose: Fetches useful System event logs
#>

<# Outputs all events from the System event log that occurred in the last 24 hours to last_24.txt #>
    Get-EventLog -LogName System -After (Get-Date).AddHours(-24) | Out-File -FilePath C:\Users\Jon\Desktop\last_24.txt
<# Outputs all "error" type events from System log to errors.txt #>
    Get-EventLog -LogName System -EntryType Error | Out-File -FilePath C:\Users\Jon\Desktop\errors.txt
<# Prints to the screen all events with ID of 16 from System log #>
    Get-EventLog -LogName System -InstanceId 16
<# Pauses the script, need to press enter to continue. This makes it so both lines are not grouped together. #>
    Write-Output "20 most recent entries from the System log."
    Pause   
<# Prints to the screen the most recent 20 entries from the System log #>
    Get-EventLog -LogName System -Newest 20
    Write-Output "Sources of the 500 most recent entries to the System log in full detail."
    Pause
<# Prints to the screen all sources of the 500 most recent entries to the System log in full detail. #>
    $Events = Get-EventLog -LogName System -Newest 500
    $Events | Group-Object -Property Source | Ft -Wrap -Autosize


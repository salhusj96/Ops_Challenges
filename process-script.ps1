<# 
Script: Ops 201 Class 10 Challenge Solution
Author: Jon Salhus
Date of latest revision: 8/5/2022
Purpose: Performs various process commands
#>

<# Print to the terminal screen all active processes ordered by highest CPU time consumption at the top. #>
    Get-Process | Sort-Object -Property CPU -Descending
    Pause
<# Print to the terminal screen all active processes ordered by highest Process Identification Number at the top. #>
    Get-Process | Sort-Object -Property Id -Descending
    Pause
<# Print to the terminal screen the top five active processes ordered by highest Working Set (WS(K)) at the top #>
    Get-Process | Sort-Object -Property WorkingSet -Descending | Select-Object -Last 5
    Pause
<# Start the process Internet Explorer (iexplore.exe) and have it open https://owasp.org/www-project-top-ten/ #>
    Start-Process iexplore.exe "https://owasp.org/www-project-top-ten/"
    Pause
<# Start the process Internet Explorer (iexplore.exe) ten times using a for loop. Have each instance open https://owasp.org/www-project-top-ten/ #>
        $B = "C:\Program Files\Internet Explorer\iexplore.exe"
        for ( $A = 1 ; $A -le 10 ; $A++) { 
            Start-Process $B https://owasp.org/www-project-top-ten/
        }
    Pause
<# Close all Internet Explorer windows. #>
    Stop-Process -Name "iexplore"
<# Kill a process by its Process Identification Number. Choose a process whose termination won’t destabilize the system, such as Internet Explorer or MS Edge #>
    $Pin = Read-Host "Please enter a PIN."
    Stop-Process -Id $Pin
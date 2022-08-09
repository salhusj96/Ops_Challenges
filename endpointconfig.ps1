<# 
Script: Ops 201 Class 11 Challenge Solution
Author: Jon Salhus
Date of latest revision: 8/8/2022
Purpose: Automates various configurations of a Windows 10 endpoint
#>

<# Enable File and Printer Sharing #>
Set-NetFirewallRule -DisplayGroup "File And Printer Sharing" -Enabled True
<# Allow ICMP traffic #>
netsh advfirewall firewall add rule name="Allow incoming ping requests IPv4" dir=in action=allow protocol=icmpv4 
<# Enable Remote management #>
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f
<# Remove bloatware #>
Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://git.io/debloat'))
<# Enable Hyper-V #>
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All
<# Disable SMBv1, an insecure protocol #>
Set-SmbServerConfiguration -EnableSMB1Protocol $false -Force
:: Script: Ops 201 Class 08 Challenge Solution
:: Author: Jon Salhus
:: Date of latest revision: 8/4/2022
:: Purpose: Copies files and produces a backup log


@ECHO OFF
ROBOCOPY C:\\Users\j.thompson\Desktop\ProjectFiles\ C:\\Users\j.thompson\Documents\Backups\ /LOG+:Backuplog.txt
EXIT
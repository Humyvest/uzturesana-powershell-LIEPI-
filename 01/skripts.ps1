$computerInfo = Get-ComputerInfo
$osInfo = Get-CimInstance -ClassName Win32_OperatingSystem
$processCount = (Get-Process).Count
$currentDate = Get-Date

Write-Output "Datora nosaukums: $($computerInfo.CsName)"
Write-Output "Operētājsistēmas nosaukums un būvējums: $($osInfo.Caption) $($osInfo.BuildNumber)"
Write-Output "PowerShell versija: $($PSVersionTable.PSVersion)"
Write-Output "Pašreizējais datums un laiks: $currentDate"
Write-Output "Aktīvo procesu skaits: $processCount"

$drivers = Get-CimInstance -ClassName Win32_SystemDriver | Where-Object {$_.ProviderName -notlike "*Microsoft*"}
$drivers | Export-Csv -Path "drivers.csv" -NoTypeInformation -Encoding utf8

$csvLineCount = (Import-Csv -Path "drivers.csv").Count
Write-Output "Rindu skaits CSV failā: $csvLineCount"

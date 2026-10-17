$processCount = (Get-Process).Count

$services = Get-Service
$runningCount = 0
$stoppedCount = 0
foreach ($service in $services) {
    if ($service.Status -eq 'Running') { $runningCount++ }
    elseif ($service.Status -eq 'Stopped') { $stoppedCount++ }
}

$timeLimit = (Get-Date).AddHours(-48)
$errorEvents = Get-WinEvent -FilterHashtable @{LogName='System'; Level=2; StartTime=$timeLimit} -ErrorAction SilentlyContinue
$errorCount = if ($null -eq $errorEvents) { 0 } else { @($errorEvents).Count }

$disk = Get-CimInstance -ClassName Win32_LogicalDisk -Filter "DeviceID='C:'"
$freeSpaceC = [Math]::Round(($disk.FreeSpace / 1GB), 2)

Write-Output "Procesu skaits: $processCount"
Write-Output "Aktīvie servisi: $runningCount, Apturētie servisi: $stoppedCount"
Write-Output "Kļūdu skaits (48h): $errorCount"
Write-Output "C: diska brīvā vieta: $freeSpaceC GB"

$warningThresholdGB = 20
$disks = Get-CimInstance -ClassName Win32_LogicalDisk -Filter "DriveType=3"

foreach ($disk in $disks) {
    $sizeGB = [Math]::Round(($disk.Size / 1GB), 2)
    $freeGB = [Math]::Round(($disk.FreeSpace / 1GB), 2)
    Write-Output "Disks: $($disk.DeviceID) | Kopējais izmērs: $sizeGB GB | Brīvā vieta: $freeGB GB"
    
    if ($freeGB -lt $warningThresholdGB) {
        Write-Output "BRĪDINĀJUMS: Diskam $($disk.DeviceID) brīvā vieta ir mazāka par $warningThresholdGB GB!"
    }
}

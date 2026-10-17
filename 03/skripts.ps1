$services = Get-Service
$runningCount = 0
$stoppedCount = 0

foreach ($service in $services) {
    if ($service.Status -eq 'Running') {
        $runningCount++
    }
    elseif ($service.Status -eq 'Stopped') {
        $stoppedCount++
    }
}

$totalSum = $runningCount + $stoppedCount

Write-Output "Darbojas servisi: $runningCount"
Write-Output "Apturēti servisi: $stoppedCount"
Write-Output "Kopējā summa: $totalSum"

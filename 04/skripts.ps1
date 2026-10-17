$services = Get-Service | Where-Object {$_.StartType -eq 'Automatic' -and $_.Status -eq 'Stopped'}
$count = @($services).Count

if ($count -eq 0) {
    Write-Output "Atrasto servisu skaits: 0. Nav tādu servisu, kas ir Automatic un Stopped."
} else {
    Start-Service -InputObject $services -WhatIf *>&1 | Out-File -FilePath "whatif.txt" -Encoding utf8
    Start-Service -InputObject $services *>&1 | Out-File -FilePath "izvade.txt" -Encoding utf8
    Write-Output "Atrasto servisu skaits: $count"
}

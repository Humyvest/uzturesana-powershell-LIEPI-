$time1 = Measure-Command -Expression {
    Get-Service -Name "Spooler"
}

$time2 = Measure-Command -Expression {
    Get-CimInstance -ClassName Win32_Service -Filter "Name='Spooler'"
}

Write-Output "Get-Service laiks milisekundēs: $($time1.TotalMilliseconds)"
Write-Output "Get-CimInstance laiks milisekundēs: $($time2.TotalMilliseconds)"

if ($time1.TotalMilliseconds -lt $time2.TotalMilliseconds) {
    Write-Output "Ātrāks bija Get-Service."
} else {
    Write-Output "Ātrāks bija Get-CimInstance."
}

$timeLimit = (Get-Date).AddHours(-48)
$errorEvents = Get-WinEvent -FilterHashtable @{LogName='System'; Level=2; StartTime=$timeLimit} -ErrorAction SilentlyContinue

if ($null -eq $errorEvents) {
    Write-Output "Kļūdu skaits pēdējo 48 stundu laikā: 0"
    Write-Output "Visbiežākais avots: Nav datu"
} else {
    $count = @($errorEvents).Count
    $topSource = $errorEvents | Group-Object -Property ProviderName | Sort-Object -Property Count -Descending | Select-Object -First 1
    
    Write-Output "Kļūdu skaits pēdējo 48 stundu laikā: $count"
    Write-Output "Visbiežākais avots: $($topSource.Name) (skaits: $($topSource.Count))"
}

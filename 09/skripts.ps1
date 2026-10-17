Get-CimInstance -ClassName Win32_Process | ForEach-Object {
    $owner = Invoke-CimMethod -InputObject $_ -MethodName "GetOwner" -ErrorAction SilentlyContinue
    [PSCustomObject]@{
        ProcessName = $_.Name
        ProcessId   = $_.ProcessId
        User        = if ($owner.User) { "$($owner.Domain)\$($owner.User)" } else { "Nav pieejams / Sistēma" }
    }
}

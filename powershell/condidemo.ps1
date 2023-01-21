$serverName = Test-Connection -ComputerName 'google.com' -Quiet

if ($serverName -eq $true) {
    Write-Output ("server is running")
}else {
    Write-Output("not runnig ")
}

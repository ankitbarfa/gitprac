$servers = @("google.com", "facebook.com", "linkedin.com", "testzed")

$servers | ForEach-Object -Process {

    $servierIsUp = Test-Connection -ComputerName $servers  -Quiet
    if ($servierIsUp -eq $true) {
        Write-Output($servers + "server is runnig")
    }
    else {
        Write-Output($servers + "server is not running")
    }
}
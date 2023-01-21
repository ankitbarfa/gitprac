$servers = @("google.com", "facebook.com", "linkedin.com", "testzed")

foreach ($serverNames in $servers) {
    $servierIsUp = Test-Connection -ComputerName $serverNames  -Quiet
    
    if ($servierIsUp -eq $true) {
        Write-Output($serverNames+"server is runnig")
    }
    else {
        Write-Output($serverNames+"server is not running")
    }
}

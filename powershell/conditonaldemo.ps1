$Servername = @('google.com','facebook.com','lindin')
$IsServerUp =Test-Connection -ComputerName $Servername -quiet  -count 1 
if ($IsServerUp -eq $true) {
    Write-Output "$Servername is runnig"
}else {
    Write-Output "$Servername is down"
}
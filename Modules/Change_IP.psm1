Function Change_IP 
{
Do {
Write-host "It is recommended that you use a static IP address for you Domain Controller, would you like to set one up right now?
Yes: 1
No: 2"
$IP = Read-Host
} while ((1..2) -notcontains $IP)
if ($IP -eq 1) {
    IP_Change
}   elseif ($IP -eq 2){
    Install_ADDS
}
}

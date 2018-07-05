Function IP_Change 
{
Do {
Get-NetIPAddress
$Interface = Read-host "What is the Interface that you are using? (Information Above)"
$New_IP = read-host "What IP do you want to use?"
$New_Prefix = Read-host "What is the prefix length of your IP"
$New_Gateway = Read-host "What is the default gateway that you are using?"

Write-host "
Interface:  $Interface
IP Address: $New_IP
Prefix:     $New_Prefix
Gateway:    $New_Gateway

Is the information Above correct
Yes: 1
No: 2"
$IP_Confirm = Read-Host 
} while ((1..2) -notcontains $IP_Confirm)
if ($IP_Confirm -eq 1) {
    New-NetIPAddress -InterfaceIndex $Interface -IPAddress $New_IP -PrefixLength $New_Prefix -DefaultGateway $New_Gateway
    pause
    Install_ADDS
}   elseif ($IP_Confirm -eq 2){
    IP_Change
}
}

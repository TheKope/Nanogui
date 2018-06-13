Function Creating_DC 
{
Install-WindowsFeature AD-Domain-Services -IncludeAllSubFeature -IncludeManagementTools 
#Do {
#write-host "Do you want a DNS Delegation for this Domain? You need another Domain Controller for a Delegation"
#Write-Host "1: Yes" -ForegroundColor Red
#Write-host "2: No" -ForegroundColor Red
#$DNS_Delegation_1 = read-host
#} While ((1..2) -notcontains $DNS_Delegation_1)
#if ($DNS_Delegation_1 -eq 1) {
#    $DNS_Delegation = "CreateDnsDelegation" 
#    $DNS_Delegation_2 = "Yes"
#}    Elseif ($DNS_Delegation_1 -eq 2) {
#    $DNS_Delegation = "" 
#    $DNS_Delegation_2 = "No"
#}
cls
$Databasepath = read-host "Where do you want the DatabasePath to be? Reccomended to be C:\Windows\NTDS"
cls
$Domain_Name = Read-host "What is your Domain Name? For example: TestDomain.com"
cls
$Netbiosname = Read-host "What do you want your Netbios name to be. Must be less 15 charactors."
cls
#Do {
#write-host "Do you want to install DNS"
#Write-Host "1: Yes" -ForegroundColor Red
#Write-host "2: No" -ForegroundColor Red
#$Install_DNS_1 = read-host
#} While ((1..2) -notcontains $Install_DNS_1)
#if ($Install_DNS_1 -eq 1) {
#    $Install_DNS = "installDNS" 
#    $DNS_install = "Yes"
#}   Elseif ($Install_DNS_1 -eq 2) {
#    $Install_DNS = "" 
#    $DNS_install = "No"
#}
#cls
$Log_Path = Read-host "Where do you want your log to path to go? Recommended to be c:\Windows\ntds"
cls
$SYSVOL = read-host "Where do your SYSVOL Path to be? Recommended to be C:\Windows\SYSVOL"
cls
Do {
#Write-Host "DNS Delegation :$DNS_Delegation_2"
Write-host "Database Path  :$Databasepath"
Write-Host "Domain Name    :$Domain_Name"
Write-host "Netbios Name   :$Netbiosname"
#Write-Host "Install DNS    :$DNS_Install"
Write-host "Log Path       :$Log_Path"
Write-Host "SYSVOL Path    :$SYSVOL"
Write-Host
Write-host "Is the above information Correct"
Write-host "1: Yes" -ForegroundColor Red
Write-host "2: No" -ForegroundColor Red
$Install_ADDS_Confirm = Read-Host
} while ((1..2) -notcontains $Install_ADDS_Confirm)
if ($Install_ADDS_Confirm -eq 1) {
    Install-ADDSForest -DatabasePath "$Databasepath" -DomainName “$Domain_Name” -DomainNetbiosName “$Netbiosname” -LogPath “$Log_Path” -NoRebootOnCompletion:$false -SysvolPath “$SYSVOL” -Force:$true
}   elseif ($Install_ADDS_Confirm -eq 2){
    Creating_DC
}
}
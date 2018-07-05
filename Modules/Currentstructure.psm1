Function currentstructure 
{
Write-host "Domain" -ForegroundColor Red
Get-ADDomain | Format-table -Property "Name","DNSRoot","DomainMode","InfrastuctureMaster","ChildDomains", "RIDMaster"
Write-host "Organizational Unit" -ForegroundColor Red
Get-ADOrganizationalUnit -Filter * | format-table -Property "Name"
Write-host "User" -ForegroundColor Red
Get-ADUser -Filter * | format-table -Property "Name" "Enabled" "DistiguishedName"
Write-host "Group" -ForegroundColor Red
Get-ADGroup -Filter * | Fomrat-table -property "Name" "Distuinguishedname"
Write-host "Press any key to continue"
Pause
Choose_Par
}


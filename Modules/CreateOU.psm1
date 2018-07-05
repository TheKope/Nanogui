Function createOU 
{
$Domainname = read-host "What Domain are you using" 
$OU_Name = Read-Host "What is the name of the new Orginaztional Unit the your creating?" 
cls
$OU_Path = Read-Host "What is the the path for the organiztional unit? Example: (DC=testdomain, DC=COM)" 
cls
$OU_State = Read-Host "What State is this Orginaztional Unit located?"
cls
$OU_City = Read-Host "What city is this Orginaztional Unit located?"
cls
$OU_Zip = Read-Host "What ZipCode is this Orginaztional Unit located in?"
cls
$OU_Country = Read-Host "What country is this Orginaztion Unit located?" 
cls
#$OU_Manager = Read-Host "Who is the Orginaztional Unit Manager?"
cls
Write-host "What Domain are you using" $Domainname
write-Host "Originzational Unit name: $OU_Name"
write-Host "Originzational Unit City: $OU_City"
write-Host "Originzational Unit Country: $OU_Country"
#write-Host "Originzational Unit manager: $OU_Manager"
write-host "Orinzational Unit Path : $OU_Path"
write-host "Orinzational Unit ZipCode : $OU_Zip"
write-host "Orinzational Unit State : $OU_State"
Do {
write-Host "Is the Above information Correct? (Type 1 for Yes) or (2 for No)" 
Write-Host "1: Yes" -ForegroundColor Red
Write-host "2: No" -ForegroundColor Red
$OU_Confirm = Read-host
} while ((1..2) -notcontains $OU_Confirm)
if ($OU_Confirm -eq 1) {
   New-ADOrganizationalUnit -Name $OU_Name -City $OU_City -Country $OU_Country -DisplayName $OU_Country -PostalCode $OU_Zip -State $OU_State -path $OU_Path
   Choose_Par
}   elseif ($OU_Confirm -eq 2){
    createOU
}
}

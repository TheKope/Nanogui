Function creategroup_PS 
{
write-host "New-ADGroup -Name ("$Group_Name") -DisplayName- ($Group_Name) -SamAccountName ($Group_Name) -GroupCategory ($Group_Cat) -GroupScope ($Group_scope) -Path ("$Group_Path")"
	#Example : New-ADGroup -Name "Research-Thekope" -SamAccountName Research-Thekope -GroupCategory Security -GroupScope DomainLocal -Path "OU=RESEACH, DC=NUGGETLAB, DC=COM"
Do {
write-host "Do you want to create another group or go back to the Title screen"
Write-host "1: Go back to Title"
Write-Host "2: Create another group"
$Group_Repeat = Read-Host
} while ((1..2) -notcontains $Group_Repeat)
if ($Group_Repeat -eq 1) {
    Choose_Par
}   elseif ($Group_Repeat -eq 2){
    creategroup
}
Function createuser {
$User_Name = Read-Host "What is the name of the new user that your creating?"
$User_Email = Read-Host "What is the Email Address of you new user?"
$User_Password_Expire = Read-Host "Do you want the users password to expire?"  
$User_Password_Changeable = Read-Host "Do you want the users to be able to change their password?"  
$User_Password_Change_login = Read-Host "Do you want the user to change their password at login"   
$User_City = Read-Host "What city is this userlocated?"
$User_Country = Read-Host "What country is this user located?" 
$USer_Manager = Read-Host "Who is the users Manager?"

Do {
$USer_Confirm = Read-Host "(Type 1 for Yes) or (2 for No)" 
} while ((1..2) -notcontains $USer_Confirm)
if ($USer_Confirm -eq 1) {
    choose_par
}   elseif ($USer_Confirm -eq 2){
    createuser
}
}
}
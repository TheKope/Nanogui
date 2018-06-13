Function creategroup 
{
cls
$Group_Name = Read-Host "What is the name of the new Group the your creating?"
cls
$Group_Path = Read-Host "What is the path of your new group? Example: OU=IT, DC=testdomain, DC=com"
write-host "Example: OU=IT, DC=testdomain, DC=com"
cls
$Group_Cat = Read-Host "What is the category of your new Group? Security, or Distribution" 
cls
$Group_Scope = Read-Host "What is the scope of your new Group? DomainLocal, Global, or Universal" 
cls
$Group_City = Read-Host "What city is this Group located?"
cls
$Group_Country = Read-Host "What country is this Group located?" 
cls
$Group_Manager = Read-Host "Who is the Group Manager?"
cls
write-Host "Group name: $Group_Name"
write-host "Group Path: $Group_Path"
write-Host "Group scope: $Group_Cat"
write-Host "Group scope: $Group_scope"
write-Host "Group City: $Group_City"
write-Host "Group Country: $Group_Country"
write-Host "Group manager: $Group_Manager"
Do {
write-host "Is the above informoation correct"
Write-Host "1: Yes" -ForegroundColor Red
Write-host "2: No" -ForegroundColor Red
$Group_Confirm = Read-Host 
} while ((1..2) -notcontains $Group_Confirm)
if ($Group_Confirm -eq 1) {
    creategroup_PS
}   elseif ($Group_Confirm -eq 2){
    creategroup
}
}
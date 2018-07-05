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
write-Host "Group name: $Group_Name
Group Path: $Group_Path
Group scope: $Group_Cat
Group scope: $Group_scope
Group City: $Group_City
Group Country: $Group_Country
Group manager: $Group_Manager"
Do {
write-host "Is the above informoation correct
1: Yes 
2: No" 
$Group_Confirm = Read-Host 
} while ((1..2) -notcontains $Group_Confirm)
if ($Group_Confirm -eq 1) {
    creategroup_PS
}   elseif ($Group_Confirm -eq 2){
    creategroup
}
}

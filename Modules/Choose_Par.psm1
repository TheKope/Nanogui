Function Choose_Par 
{
Do {

Write-host "Where do you want to go"
write-host "1: Create a new department/Orginazational Unit."
write-host "2: Create a new Group"
write-host "3: Create a new User"
write-host "4: See current Active Directory infrastructure"
Write-host "5: See changes made this session"
$choice = Read-Host "1-5" 
} while ((1..5) -notcontains $choice)
if ($choice -eq 1) {
    createOU
}   Elseif ($choice -eq 2) {
    creategroup
}   Elseif ($choice -eq 3) {
    createuser
}   Elseif ($choice -eq 4) {
    currentstructure
}   Elseif ($choice -eq 5) {
    changesmade
} 
}
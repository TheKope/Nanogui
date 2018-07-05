Function Choose_Par 
{
Do {
Write-host "Where do you want to go
1: Create a new department/Orginazational Unit.
2: Create a new Group
3: Create a new Use
4: See current Active Directory infrastructure
5: See changes made this session"
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

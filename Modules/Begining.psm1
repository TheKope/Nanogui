Function Begining 
{
Do {
cls
write-host "Where do you wanna go?" 
Write-Host "1: Active Directory" -ForegroundColor Red
Write-host "2: Hyper-V" -ForegroundColor Red
$Begining = Read-Host 
} while ((1..2) -notcontains $Begining)
if ($Begining -eq 1) {
    Title_Screen
}   elseif ($Begining -eq 2){
    hyperV_create
}
}
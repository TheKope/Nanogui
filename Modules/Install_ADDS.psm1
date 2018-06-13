Function Install_ADDS 
{
Do {
cls
Write-Host "During this proccess you will be restarting your computer, are you ready to continue?"
Write-Host "Are you ready to install Active Directory Domain Services?" 
Write-Host "1: Yes" -ForegroundColor Red
Write-host "2: No" -ForegroundColor Red
$ADDS_Confirm = Read-Host
} while ((1..2) -notcontains $ADDS_Confirm)
if ($ADDS_Confirm -eq 1) {
    Creating_DC
}   elseif ($ADDS_Confirm -eq 2){
    Title_Screen
}
}
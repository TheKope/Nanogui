Function Title_Screen 
{
Do {
cls
write-host "Is Active Directory already installed?" 
Write-Host "1: Yes" -ForegroundColor Red
Write-host "2: No" -ForegroundColor Red
$Title = Read-Host 
} while ((1..2) -notcontains $Title)
if ($Title -eq 2) {
    Install_ADDS
}   elseif ($Title -eq 1){
    choose_Par
}
}
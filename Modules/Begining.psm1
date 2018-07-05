Function Begining 
{
Do {
cls
write-host "Where do you wanna go? 
	1: Active Directory
	2: Hyper-V
    3: Decimal to Binary Converter" 
$Begining = Read-Host 
} while ((1..3) -notcontains $Begining)
if ($Begining -eq 1) {
    Title_Screen
}   elseif ($Begining -eq 2){
    hyperV_create
}   Elseif ($Begining -eq 3) {
    Convert
}
}

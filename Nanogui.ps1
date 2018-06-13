If (-NOT ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
 	    Write-Warning "You do not have Administrator rights to run this script!`nMake sure to launch Windows PowerShell as Administrator!"
        Break
} elseif (([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
#Change 6 to 14 file directories.    
    import-Module -name "E:\PowerShell\New program\begining.psm1"
    import-Module -name "E:\PowerShell\New program\Choose_Par.psm1"
    import-Module -name "E:\PowerShell\New program\creategroup.psm1"
    import-Module -name "E:\PowerShell\New program\Creategroup_PS.psm1"
    import-Module -name "E:\PowerShell\New program\Creating_DC.psm1"
    import-Module -name "E:\PowerShell\New program\CreatingOU.psm1"
    import-Module -name "E:\PowerShell\New program\HyperV_Create.psm1"
    import-Module -name "E:\PowerShell\New program\Install_ADDS.psm1"
    import-Module -name "E:\PowerShell\New program\See_Changes.psm1"
    import-Module -name "E:\PowerShell\New program\Title.psm1"
    begining
}






#$test = get-windowsfeature -Name windowspowershell | format-list -Property installstate | out-string -stream
#if ($test -lt "Available") {write-host "yes"}
#Elseif ($test -gt "Available") {write-host "no"}
Begining


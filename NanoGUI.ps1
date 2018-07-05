If (-NOT ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
 	    Write-Warning "You do not have Administrator rights to run this script!`Make sure to launch Windows PowerShell as Administrator!"
        Break
} elseif (([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
    
    #Change the directory of the "Import-Module" CMDLet to where you have stored the modules folder
    Import-Module -name "C:\Users\wwstudent\Desktop\NanoGUI\Modules\See_Changes.psm1"
    Import-Module -name "C:\Users\wwstudent\Desktop\NanoGUI\Modules\Convert.psm1"
    Import-Module -name "C:\Users\wwstudent\Desktop\NanoGUI\Modules\currentstructure.psm1"
    Import-Module -name "C:\Users\wwstudent\Desktop\NanoGUI\Modules\HyperV_Create.psm1"
    Import-Module -name "C:\Users\wwstudent\Desktop\NanoGUI\Modules\CreateOU.psm1"
    Import-Module -name "C:\Users\wwstudent\Desktop\NanoGUI\Modules\CreateGroup.psm1"
    Import-Module -name "C:\Users\wwstudent\Desktop\NanoGUI\Modules\CreateGroup_PS.psm1"
    Import-Module -name "C:\Users\wwstudent\Desktop\NanoGUI\Modules\Choose_Par.psm1"
    Import-Module -name "C:\Users\wwstudent\Desktop\NanoGUI\Modules\Creating_DC.psm1"
    Import-Module -name "C:\Users\wwstudent\Desktop\NanoGUI\Modules\Install_ADDS.psm1"
    Import-Module -name "C:\Users\wwstudent\Desktop\NanoGUI\Modules\IP_Change.psm1"
    Import-Module -name "C:\Users\wwstudent\Desktop\NanoGUI\Modules\Change_IP.psm1"
    Import-Module -name "C:\Users\wwstudent\Desktop\NanoGUI\Modules\Tittle_Screen.psm1"
    Import-Module -name "C:\Users\wwstudent\Desktop\NanoGUI\Modules\Begining.psm1"
    #Change the directory of the "Import-Module" CMDLet to where you have stored the modules folder
    Begining
}

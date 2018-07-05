Function hyperV_create 
{
cls
Write-host "Creating a Virtual Machhine!" -ForegroundColor red
write-host "What is the name of your new virtual machine"
$VM_name = read-host  
cls
Write-host "Creating a Virtual Machhine!" -ForegroundColor red
write-host "Where is the ISO that you will be using? Example: D:\Class\OS ISOs\WS2016.ISO"
$VM_Iso = read-host
cls
Write-host "Creating a Virtual Machhine!" -ForegroundColor red
write-host "Where is your VHD going to be stored? Include file name and type."
$Vm_Vhd =  read-host
cls
Do {
Write-host "Creating a Virtual Machhine!" -ForegroundColor red
write-host "How many GBs is your new VHDX"
$VHD_SIZE = read-host 
} while ((1..2048) -notcontains $VHD_SIZE)
$VHD_BYTES = (1073741824*$VHD_SIZE)
cls
Write-host "Creating a Virtual Machhine!" -ForegroundColor red
write-host "virtual switch name?"
$vm_switch = read-host
cls
Do {
Write-host "Creating a Virtual Machhine!" -ForegroundColor red
write-host "What controller will you be using? 1-10"
$controllernumber = read-host 
} while ((1..10) -notcontains $controllernumber)
cls
Do {
Write-host "Creating a Virtual Machhine!" -ForegroundColor red
write-host "What generation is your VM"
$vm_gen = read-host 
} while ((1..2) -notcontains $vm_gen)
cls
Do {
Write-host "Creating a Virtual Machhine!" -ForegroundColor red
write-host "VMname              : $VM_name"
write-host "ISO imagae location : $VM_Iso"
write-host "VHD location        : $Vm_Vhd"
write-host "virtual switch      : $vm_switch"
write-host "Controller number   : $controllernumber"
Write-host "Generation          : $vm_gen"
write-host "VHD Size            : $VHD_SIZE"
write-host "Is the information above correct?"
write-host "1: yes"
write-host "2: No"
$vm_confirm = read-host 
} while ((1..2) -notcontains $vm_confirm)
if ($vm_confirm -eq 1) {
    New-VM -NewVHDPath "$Vm_Vhd" -NewVHDSizeBytes $VHD_BYTES -Generation $vm_gen -Name $VM_name -SwitchName $vm_switch
    set-VMDVDDrive -Path "$VM_Iso" -VMname $VM_name -controllernumber $controllernumber
}   elseif ($vm_confirm -eq  2) {
    hyperV_create
}
Do {
write-host "Do you want to create a new VM or go back to title?"
Write-host "1: Title Screen"
Write-host "2: New VM"
$VM_Continue = read-host 
} while ((1..2) -notcontains $VM_Continue)
if ($VM_Continue -eq 1) {
    Begining
}   elseif ($VM_Continue -eq  2) {
    hyperV_create
}
}

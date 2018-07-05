Function Convert 
{
$1 = 0
$2 = 0
$3 = 0
$4 = 0
$5 = 0
$6 = 0
$7 = 0
$8 = 0
$9 = 0
$10 = 0
$11 = 0
cls
write-host "What number do you want to convert to binar?"
$Number = read-host
cls







if ($Number -ge 1024) {
    $11 = 1
    $Number = $Number - 1024
    write-host $Number
}   
if ($number -ge 512) {
    $10 = 1
    $Number = $Number - 512
    write-host $Number
    
}   
if ($Number -ge 256) {
    $9 = 1
    $Number = $Number - 256
    write-host $Number
    
}   
if ($Number -ge 128) {
    $8 = 1
    $Number = $Number - 128
    write-host $Number
  
}   
if ($Number -ge 64) {
    $7 = 1
    $Number = $Number - 64
    write-host $number
    
}   
if ($Number -ge 32) {
    $6 = 1
    $Number = $Number - 32
    write-host $Number
   
}   
if ($Number -ge 16) {
    $5 = 1
    $Number = $Number - 16
    write-host $Number
   
}   
if ($Number -ge 8) {
    $4 = 1
    $Number = $Number - 8
    write-host $Number
   
}   
if ($Number -ge 4) {
    $3 = 1
    $Number = $Number - 4
    write-host $Number
    
}   
if ($Number -ge 2) {
    $2 = 1
    $Number = $Number - 2
    write-host $Number
    
}   
if ($Number -ge 1) {
    $1 = 1
    $Number = $Number - 1
    write-host $Number
    
}


    $resualt = "$11 $10 $9 $8 $7 $6 $5 $4 $3 $2 $1"
    write-host $Number
    write-host $resualt
    pause
    Convert


# 1(1) 2(2) 4(3) 8(4) 16(5) 32(6) 64(7) 128(8) 256(9) 512(10) 1024(11) 
}

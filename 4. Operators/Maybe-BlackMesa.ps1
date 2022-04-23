#When is a companion cube not a companion cube?  
$object = [PSCustomObject]@{
    Shape = "Cube"
    Companion = $true
}


if($object.Shape -eq "Cube"  -and $object.Companion -eq $true){
    Write-Host "This is my companion cube"
}

if($object.Shape -eq "Cube"  -and $object.Companion -ne $false){
    Write-Host "This is my companion cube"
}

#Sadly, the cube has rejected you and is no longer your companion...

$object.Companion = $false

if($object.Shape -eq "Cube"  -and $object.Companion -eq $true){
    Write-Host "This is my companion cube"
}


if($object.Shape -eq "Cube" -or $object.Companion -ne "s"){
    Write-Host "This is my companion cube"
}


# A conditional trick

$var = 1
if($var){
    Write-Host "Do thing"
}

Remove-Variable var

if($var){
    Write-Host "Do thing"
}

#MMS Throw Back Thursda

$x = "" | select one,two
#Fail fast fail hard...

Try{
    Write-Error "hello World"
}
catch{
    Write-Error "Well... OK then"
}

# Fail less hard? 

Try{
    Get-ChildItem .\IDontExist 
}
catch{
    Write-Error "Well... OK then"
}

# Fail harder

Try{
    Get-ChildItem .\IDontExist -ErrorAction Stop
}
catch{
    Write-Error "Well... OK then"
}

# Fail but get back up when you get knocked down, you get back up again.. 

Try{
    throw "hello World"
}
catch{
    Write-Error "Well... OK then"
}
finally{
    Write-host "Even when you fail, we can always get back up"
}

# Throw dowwwnnnnntowwwwwnnnn

Try{

    throw "Something went terribly wrong..."
}
catch [System.IO.FileNotFoundException]{
    Write-Error "hello world"
}
catch{
    Write-Error "It's quiet... too quiet...."
}

$ex = $error[5].Exception
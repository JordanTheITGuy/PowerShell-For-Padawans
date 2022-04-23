#Pipeline Input

$groceryList = @('apples','grapes','bannanas')
$groceryList | ForEach-Object {Write-Host $_ -ForegroundColor Green}


# But who cares about my grocerylist? 

# Let's build a list - We can talk more about loops later, or if you have questions ask us at Q/A

$computerList = @()
for ($i = 1; $i -lt 10; $i++) {
    $computerName = "Computer" + $i
    $computerList += $computerName
}

$computerList | Out-File .\computers.txt

# Now lets re-use that list on the pipeline. 

$computerList = Get-Content .\computers.txt
$computerList 

$result = $computerList | ForEach-Object {Stop-Computer -ComputerName $_}

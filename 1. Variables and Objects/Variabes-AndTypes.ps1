# How to make a variable?

$Var = "Hello World"

# How to type cast a variable

[string]$var2 = "Hello World"

# Useful variable information instead of just Helo World

Get-ChildItem ENV:

# Prove it, I don't believe you. 

$var.GetType()
$var2.GetType()

#Fine but why do I care? 

[string]$one = 1
$two = 2

$three = $one + $two 

#Ok, but when am I ever going to accidentally do something like that... 

Measure-Command{Get-Service | Where-Object {$_.Status -eq "Running"}}

Measure-Command{Get-Service | Where-Object {$_.Status -eq [System.ServiceProcess.ServiceControllerStatus]::Running}}
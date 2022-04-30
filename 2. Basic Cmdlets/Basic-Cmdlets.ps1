#Here's hammer and some nails go build it yourself.

Get-Help

# There are some interesting things under the world of get-help a useful one is

Get-Help Get-Module -Online

Get-Help Get-Module -Examples

Get-Help Get-Module -Full

# Get the list of modules on your computer

Get-Module

# Wait there's more

Get-Module -ListAvailable
Get-Module -All
Get-Module -All -Name "PSRead*"

# Modules have tasty stuff inide them but how do you KNOW

Get-Command
Get-Command -Module PSReadLine
Get-Command -Verb "Get"
Get-Command -Noun "WsusServer"
Get-Command -All -Name "Get-Wsus*"

# Member things - method to the madness, Promise we do. 

$string = "Hello World"
$string | Get-Member
# Fancy Ctrl + Space on the command prompt :)

# Figuring out the sneaky people

Get-Alias

%2 
# is different from 
ForEach-Object 2

Get-alias foreach

foreach ($item in $collection) {
    
}


## Use the #region and #endregion tag in your scripts to easily collapse blocks of related code for easier reading 
#region Name of the Region Here
    Write-Output "This code will be collapsed with the region"




    Write-Output "And so will this"
#endregion
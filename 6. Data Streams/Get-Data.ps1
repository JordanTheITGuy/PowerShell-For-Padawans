# Success Stream 

Write-Output -InputObject "Hello"

# Error Stream

Write-Error
$ErrorActionPreference

#Warning Stream

Write-Warning
$WarningPreference
Write-Warning -Message "Are you sure?" -WarningAction Inquire

#Verbose Stream

Write-Verbose
$VerbosePreference

#Debug Stream

Write-Debug
$DebugPreference

#Information Stream

Write-Information -MessageData "Are you sure" -InformationAction Inquire
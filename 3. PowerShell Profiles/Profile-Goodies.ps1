# Adding dad jokes to profiles... 

function Get-DadJoke {
    $header= @{Accept = "Application/json"}
    $joke = Invoke-RestMethod -Uri "https://icanhazdadjoke.com" -Method Get -Headers $header
    return $joke.joke
}

#Note if using other terminal mods this might not work as intended
$currentPrincipal = New-Object Security.Principal.WindowsPrincipal([Security.Principal.WindowsIdentity]::GetCurrent())
if($currentPrincipal.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)){
    [System.Console]::BackgroundColor = "red"
}
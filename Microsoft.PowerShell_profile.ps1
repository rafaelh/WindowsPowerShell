# %USERPROFILE%\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1

# Shell Variables
[console]::backgroundcolor = [ConsoleColor]::Black
$DEFAULTUSER = $env:USERNAME
$POWERSHELL_TELEMETRY_OPTOUT = 1


# Make powershell more like bash
function env {Get-ChildItem Env:"$args"}
function touch {New-Item "$args" -ItemType File}
function ln ($target, $link) {New-Item -Path $link -ItemType SymbolicLink -Value $target}
new-alias grep Select-String


# Quick change directories & programs
function computers {set-location "C:\Users\$env:USERNAME\Dropbox\Computers\Projects"}
function documents {set-location "C:\Users\$env:USERNAME\Documents"}
function dropbox {set-location "C:\Users\$env:USERNAME\Dropbox"}
function gdrive {set-location "C:\Users\$env:USERNAME\Google/ Drive"}
function profile {set-location "C:\Users\$env:USERNAME\Documents\PowerShell"}

set-alias notepad "C:\Program Files\Notepad++\notepad++.exe"
set-alias zip "C:\Program Files\7-Zip\7z.exe"


# To Test
function sudo {Start-Process cmd -Verb RunAs}


# Run before starting prompt
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

Import-Module posh-git
Import-Module oh-my-posh

set-location C:\Users\$env:USERNAME\Documents

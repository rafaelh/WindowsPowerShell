# %USERPROFILE%\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1

[console]::backgroundcolor = [ConsoleColor]::Black
set-location C:\Users\$env:USERNAME\Dropbox\Computers\Projects



# Make powershell more like bash
function env {
	Get-ChildItem Env:"$args"
}

function touch {
  New-Item "$args" -ItemType File
}

new-alias grep Select-String

function apache {
	set-location "C:\Users\$env:USERNAME\AppData\Roaming\Apache24"
}

function projects {
	set-location "C:\Users\$env:USERNAME\Dropbox\Computers\Projects"
}
function Documents {
	set-location "C:\Users\$env:USERNAME\Documents"
}

function version {
	$PSVersionTable.PSVersion
}

# To Test
function adminprocess {
	Start-Process cmd -Verb RunAs
}




function reloadpath {
	$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")
}


# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

set-alias notepad "C:\Program Files\Notepad++\notepad++.exe"
set-alias zip "C:\Program Files\7-Zip\7z.exe"




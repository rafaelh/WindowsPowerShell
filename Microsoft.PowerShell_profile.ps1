# %USERPROFILE%\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1

[console]::backgroundcolor = [ConsoleColor]::Black
set-location C:\Users\rhart\Dropbox\Computers\Projects



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

function Documents {
	set-location "C:\Users\$env:USERNAME\Documents"
}

# To Test
function adminprocess {
	Start-Process cmd -Verb RunAs
}

function version {
	$PSVersionTable.PSVersion
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


# quick ways to navigate around the system, e.g. cd $documents
$tools = "c:\tools"
$winsitter = "c:\code\winsitter"
$vstools = "C:\Program Files (x86)\Microsoft Visual Studio 11.0\Common7\Tools"
$documents = $home + "\Documents"
$desktop = $home + "\Desktop"
$downloads = $home + "\Downloads"
$modules = $home + "\Documents\WindowsPowerShell\Modules"



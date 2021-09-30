$ENV:STARSHIP_CONFIG = "$HOME/.config/starship.toml"
Invoke-Expression (&starship init powershell)

$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

$env:Path += ";$HOME\bin"

$localProf = $HOME+"\local_profile.ps1"
if (Test-Path($localProf)) {
    . $localProf
}
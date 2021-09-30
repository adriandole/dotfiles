New-Item -Path $PROFILE -ItemType SymbolicLink -Value .\Microsoft.PowerShell_profile.ps1 -Force

$starshipPath = $HOME+"\.config\starship.toml"
New-Item -Path $starshipPath -ItemType SymbolicLink -Value .\starship.toml -Force

$ideaPath = $HOME+"\.ideavimrc"
New-Item -Path $ideaPath -ItemType SymbolicLink -Value .\.ideavimrc -Force
New-Item -Path $PROFILE -ItemType SymbolicLink -Value .\Microsoft.PowerShell_profile.ps1 -Force

$starshipPath = $HOME+"\.config\starship.toml"
New-Item -Path $starshipPath -ItemType SymbolicLink -Value .\starship.toml -Force

$ideaPath = $HOME+"\.ideavimrc"
New-Item -Path $ideaPath -ItemType SymbolicLink -Value .\.ideavimrc -Force

$emacsPath = $HOME+"\AppData\Roaming\.emacs.d\init.el"
New-Item -Path $emacsPath -ItemType SymbolicLink -Value .\init.el -Force

$nvimPath = $HOME+"\AppData\Local\nvim\init.lua"
New-Item -Path $nvimPath -ItemType SymbolicLink -Value .\init.lua -Force
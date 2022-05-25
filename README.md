# Configuration files

## Setup
Install and setup WSL

[Cascadia code font](https://github.com/microsoft/cascadia-code) (relevant one is 'Cascadia Code PL')
 - [Or 'Caskaydia Cove' nerd font version](https://www.nerdfonts.com/font-downloads)

[Windows terminal](https://github.com/microsoft/terminal)
 - Go to 'Settings - Open JSON file' and paste contents of `windows_terminal.settings.json`

[Choco](https://chocolatey.org/install)

fish shell:
Ubuntu:
1. `sudo apt-add-repository ppa:fish-shell/release-3`
2. `sudo apt-get update`
3. `sudo apt-get install fish`

Arch:
1. `pacman -S fish`

Change default: ``chsh -s `which fish` ``

[fzf](https://github.com/junegunn/fzf), [fd](https://github.com/sharkdp/fd), [bat](https://github.com/sharkdp/bat),
[fisher](https://github.com/jorgebucaran/fisher), ([fzf.fish](https://github.com/PatrickF1/fzf.fish),

Install Starship
 - Windows - `choco install starship`
 - Linux - `sh -c "$(curl -fsSL https://starship.rs/install.sh)"`

Terminal config files:
 - PowerShell - copy `Microsoft.PowerShell_profile.ps1` to `$PROFILE`
 - Fish - copy `config.fish` to `~/.config/fish/config.fish`

Starship config file:
- Linux: `starship.toml` in `~/.config/starship.toml`
- Windows: `starship.toml` in `$HOME/.config/starship.toml`

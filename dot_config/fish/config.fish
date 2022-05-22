set PATH $PATH $HOME/.cargo/bin

alias git-work='git config user.name "adriandole" && git config user.email "adriandole@microsoft.com"'
alias git-personal='git config user.name "adriandole" && git config user.email "adrian@dole.tech"'

function assemble
    rm {$argv}.o {$argv}
    nasm -f elf64 -F dwarf {$argv}.asm
    ld {$argv}.o -o {$argv}
end

if test -f $HOME/local_config.fish
    source $HOME/local_config.fish
end

starship init fish | source

# ghcup-env
set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME
test -f /home/adriandole/.ghcup/env ; and set -gx PATH $HOME/.cabal/bin /home/adriandole/.ghcup/bin $PATH

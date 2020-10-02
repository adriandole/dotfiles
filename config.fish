set PATH $PATH $HOME/.cargo/bin

alias git-work='git config user.name "ddole6" && git config user.email "Donald.Dole@gtri.gatech.edu"'
alias git-personal='git config user.name "ddole6" && git config user.email "adrian@dole.tech"'

function assemble
    rm {$argv}.o {$argv}
    nasm -f elf64 -F dwarf {$argv}.asm
    ld {$argv}.o -o {$argv}
end

if test -f $HOME/.config.fish.local
    source $HOME/.config.fish.local
end

starship init fish | source


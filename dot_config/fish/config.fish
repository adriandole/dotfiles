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

set fish_key_bindings fish_user_key_bindings

function fish_vi_cursor; end

starship init fish | source
fzf_configure_bindings

function dark
  sed -i'' -e 's/\*light/\*dark/g' ~/.config/alacritty/alacritty.yml
end

function light
  sed -i'' -e 's/\*dark/\*light/g' ~/.config/alacritty/alacritty.yml
end

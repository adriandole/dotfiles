if test -f $HOME/local_config.fish
    source $HOME/local_config.fish
end

set fish_greeting
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

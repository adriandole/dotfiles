#!/usr/bin/env bash

# Dependency installation
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt install tmux fonts-powerline fish

# Clone my configs and remove defaults
git clone https://github.com/adriandole/configs.git
cd configs
rm ~/.zshrc ~/.tmux.conf ~/.vimrc ~/.spacemacs

# Create symlinks to my configs
cd ~
ln -s configs/.tmux.conf .tmux.conf
ln -s configs/.vimrc .vimrc
ln -s configs/.spacemacs .spacemacs
ln -s configs/.ideavimrc .ideavimrc

mkdir -p ~/.config/fish
ln -s configs/config.fish ~/.config/fish/config.fish
ln -s configs/starship.toml ~/.config/starship.toml

mkdir -p ~/.config/nvim
ln -s configs/init.lua ~/.config/nvim/init.lua

# Change shell and fix zsh history
chsh -s /usr/bin/fish $USER
chmod 777 ~/.zsh_history

# Solarized color scheme for vim
git clone https://github.com/altercation/vim-colors-solarized.git
cd vim-colors-solarized/colors
mkdir -p ~/.vim/colors
mv solarized.vim ~/.vim/colors
cd ../..
rm -rf vim-colors-solarized

# Vundle install
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Spacemacs install
git clone -b develop https://github.com/syl20bnr/spacemacs ~/.emacs.d

# Fish tools
omf install spacefish
omf install bass

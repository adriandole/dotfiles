#!/usr/bin/env bash

# Dependency installation
apt install zsh tmux fonts-powerline
sh -c "$(wget -O- https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Clone my configs and remove defaults
git clone https://github.com/adriandole/configs.git
cd configs
rm ~/.zshrc ~/.tmux.conf ~/.vimrc

# Create symlinks to my configs
cd ~
ln -s configs/.zsrhc .zshrc
ln -s configs/.tmux.conf .tmux.conf
ls -s configs/.vimrc .vimrc

# Change shell and fix zsh history
chsh -s /usr/bin/zsh $USER
chmod 777 ~/.zsh_history

# Solarized color scheme for vim
git clone https://github.com/altercation/vim-colors-solarized.git
cd vim-colors-solarized/colors
mkdir -p ~/.vim/colors
mv solarized.vim ~/.vim/colors
cd ../..
rm -rf vim-colors-solarized

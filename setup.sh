#!/usr/bin/env bash

apt install zsh tmux fonts-powerline
sh -c "$(wget -O- https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

git clone https://github.com/adriandole/configs.git
cd configs
rm ~/.zshrc ~/.tmux.conf ~/.vimrc
ln -s .zsrhc ~/.zshrc
ln -s .tmux.conf ~/.tmux.conf
ls -s .vimrc ~/.vimrc

chsh -s /usr/bin/zsh $USER
chmod 777 ~/.zsh_history

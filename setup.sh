#!/usr/bin/env bash

apt install zsh tmux fonts-powerline
sh -c "$(wget -O- https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

git clone https://github.com/adriandole/configs.git
cd configs
cp ./.tmux.conf ~
cp ./.zshrc ~

chsh -s /usr/bin/zsh $USER

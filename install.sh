#!/bin/bash

#Install packages
apt update
cat packages | xargs apt install -y

#Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" "" --unattended

#Setup vim
cp vimrc ~/.vimrc

#Setup oh-my-zsh
cp zshrc ~/.zshrc

#Set defautl shell
chsh -s /bin/zsh

#Install gnome terminal color theme
bash -c  "$(wget -qO- https://git.io/vQgMr)"

#Generate locale (To display powerline)
locale-gen en_US.UTF-8

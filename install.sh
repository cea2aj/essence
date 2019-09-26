#!/bin/bash

#Install packages
apt update
cat debian-packages | xargs apt install -y

#Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" "" --unattended

#Setup vim
cp vimrc ~/.vimrc

#Setup oh-my-zsh
cp zshrc ~/.zshrc

#Set defautl shell
chsh -s /bin/zsh

#Generate locale (To display powerline)
locale-gen en_US.UTF-8

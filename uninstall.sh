#/bin/bash

#Uninstall packages
cat debian-packagese | xargs apt remove -y

#Uninstall oh-my-zsh
uninstall_oh_my_zsh

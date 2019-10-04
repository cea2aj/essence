#/bin/bash

#Uninstall packages
cat packagese | xargs apt remove -y

#Uninstall oh-my-zsh
uninstall_oh_my_zsh

#!/bin/sh

export PATH="$HOME/.linuxbrew/bin:$PATH"

#Execute change other shell
#echo $(which zsh) | sudo tee -a /etc/shells
#sudo chsh -s $(which zsh) $USER

#Execute Script Install other applications
make install
#$HOME/.config/install.sh
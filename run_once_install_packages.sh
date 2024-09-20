#!/bin/sh

export PATH="$HOME/.linuxbrew/bin:$PATH"

#Install from Brewfile
brew bundle --file=~/.private/Brewfile

#Execute change other shell
#echo $(which zsh) | sudo tee -a /etc/shells
#chsh -s $(which zsh) $USER

#Execute Script Install other applications
$HOME/.config/install.sh


#Install Zap Plugin Manager
#zsh --version
#zsh <(curl -s https://raw.githubusercontent.com/zap-zsh/zap/master/install.zsh) --branch release-v1


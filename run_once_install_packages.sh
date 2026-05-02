#!/bin/sh

export PATH="$HOME/.linuxbrew/bin:$PATH"

#Install from Brewfile
brew bundle --file=~/.private/Brewfile

#Execute change other shell
#echo $(which zsh) | sudo tee -a /etc/shells
#sudo chsh -s $(which zsh) $USER

#Execute Script Install other applications
$HOME/.config/install.sh

#Execute Script Install SDKMAN
sdk install java 17.0.19-tem
sdk install java 21.0.11-tem
sdk install maven 3.9.4
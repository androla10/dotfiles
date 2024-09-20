#!/bin/sh

export PATH="$HOME/.linuxbrew/bin:$PATH"

#Install from Brewfile
brew bundle --file=~/.private/Brewfile

#Execute change other shell
echo $(which zsh) | sudo tee -a /etc/shells
sudo chsh -s $(which zsh) $USER

#Execute Script Install other applications
$HOME/.config/install.sh

#!/bin/sh

export PATH="$HOME/.linuxbrew/bin:$PATH"

#Install from Brewfile
brew bundle --file=~/.private/Brewfile

#Install JDk MAN
#brew install unzip & curl -s "https://get.sdkman.io" | bash & source "$HOME/.sdkman/bin/sdkman-init.sh"

#Install Zap Plugin Manager
zsh <(curl -s https://raw.githubusercontent.com/zap-zsh/zap/master/install.zsh) --branch release-v1


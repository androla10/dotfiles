#!/bin/sh

export PATH="$HOME/.linuxbrew/bin:$PATH"

#Install from Brewfile
brew bundle --file=~/.private/Brewfile

#Install JDk MAN
#brew install unzip & curl -s "https://get.sdkman.io" | bash & source "$HOME/.sdkman/bin/sdkman-init.sh"

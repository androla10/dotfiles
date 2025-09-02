
#!/bin/sh
echo "Instalando paquetes en Linux..."

# Configuración para Linux
export PATH="$HOME/.linuxbrew/bin:$PATH"
alias ll='ls -la'

#Install from Brewfile
brew bundle --file=~/.private/Brewfile

#Execute change other shell
#echo $(which zsh) | sudo tee -a /etc/shells
#sudo chsh -s $(which zsh) $USER

#Execute Script Install other applications
$HOME/.scripts/install.sh
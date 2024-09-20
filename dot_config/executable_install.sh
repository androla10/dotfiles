#!/bin/bash
#Autor Benji Villarreal
#This program allows the installation of all the programs neecessary for my setup. 

#Configuration Environtment Variables
PATH_CONFIG="$HOME/.config"

#Log file for save errors
LOG_FILE=$(mktemp "error_install.log.XXXXXX")

#Execute script instalation of SDKMAN
${PATH_CONFIG}/install_sdkman.sh || {
	echo "Ocurred error when executed script instalation of install_sdkman.sh. Please check file $LOG_FILE for more information"
}

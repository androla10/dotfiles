#!/bin/bash

set e


#Check if sdkman is installed
if command -v sdk &> /dev/null; then
	echo "SDKMAN! Se encuentra instalado"
	exit 0
fi

echo "Instalando SDKMAN...."

TEMP_LOG=$(mktemp "install_sdkman.log.XXXXXX")

#Download and install SDKMAN
echo "Download and install SDKMAN"
{ 
	curl -s "https://get.sdkman.io" | pv -cN download -pte -s 100k | bash > "$TEMP_LOG" 2>&1
} || {
	echo "Hubo un error al descargar e instalar SDKMAN. Consulta el log en $TEM_LOG."
	exit 1
}

#Load SDKMAN in the session
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$SDKMAN_DIR/bin/sdkman-init.sh" ]] && source "$SDKMAN_DIR/bin/sdkman-init.sh"

# Verificar la instalación de SDKMAN
if command -v sdk &> /dev/null; then
    echo "SDKMAN! se ha instalado correctamente."
    rm "$TEMP_LOG"
else
    echo "Hubo un error al instalar SDKMAN. Consulta el log en $TEM_LOG."
    exit 1
fi

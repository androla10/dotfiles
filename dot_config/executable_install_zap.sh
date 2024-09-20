#!/bin/bash

set e

#Check if sdkman is installed
if ! command -v zsh &> /dev/null; then
	echo "Al parecer zsh no se encuentra instalado".
	exit 0	
fi

echo "Instalando Zap Pluging Manager"

TEMP_LOG=$(mktemp "install_zap.log.XXXXXX")

#Download and install zap 
echo "Download and install Zap"
{ 
	#curl -s "https://raw.githubusercontent.com/zap-zsh/zap/master/install.zsh" | pv -pte -s 100k | zsh -s -- --branch release-v1 --keep > "$TEMP_LOG" 2>&1
	curl -s "https://raw.githubusercontent.com/zap-zsh/zap/master/install.zsh" | pv -pte -s 100k | zsh -s -- --branch release-v1 --keep > "$TEMP_LOG" 
} || {
	echo "Hubo un error al descargar e instalar zap. Consulta el log en ${TEMP_LOG}."
	exit 1
}

ret_code=$?  # Guardar el código de retorno

# Validar el código de retorno
if [ $ret_code -eq 0 ]; then
    echo -e "\n El script se ejecutó con éxito."
    rm "$TEMP_LOG"
else
    echo -e "\n El script falló con el código de retorno $ret_code."
fi

exit 0

# Verificar la instalación de zap 
#if command -v zap &> /dev/null; then
 #   echo "zap! se ha instalado correctamente."
 #   rm "$TEMP_LOG"
#else
 #   echo "Hubo un error al instalar zap. Consulta el log en $TEMP_LOG."
 #   exit 1
#fi

#!/bin/bash
set -e

HOSTNAME="{{ .hostName }}"

echo "Cambiando hostname a $HOSTNAME..."
sudo hostnamectl set-hostname "$HOSTNAME"
#!/bin/bash
set -e

HOSTNAME="{{ .hostName }}"

echo "Cambiando hostname a $HOSTNAME..."
hostnamectl set-hostname "$HOSTNAME"
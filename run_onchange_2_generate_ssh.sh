#!/bin/bash
set -e

echo "{{ .hostName }}: Configurando SSH para GitHub..."

ITEM_NAME="ssh-passphrase-github"
KEY_PATH="$HOME/.ssh/id_ed25519_personal"

echo "🔐 Verificando sesión de Bitwarden..."

if ! bw unlock --check >/dev/null 2>&1; then
  bw login
  export BW_SESSION=$(bw unlock --raw)
fi

echo "🔑 Verificando si ya existe passphrase en Bitwarden..."

PASS=$(bw get password "$ITEM_NAME" 2>/dev/null || true)

if [ -z "$PASS" ]; then
  echo "⚙️ Generando nueva passphrase..."
  PASS=$(bw generate --passphrase --words 4)

  echo "💾 Guardando passphrase en Bitwarden..."

  bw create item "$(jq -n \
    --arg name "$ITEM_NAME" \
    --arg pass "$PASS" \
    '{
      type: 1,
      name: $name,
      login: {
        username: "ssh",
        password: $pass
      }
    }'
  )"
else
  echo "✅ Passphrase ya existe"
fi

echo "🗝️ Generando clave SSH si no existe..."

if [ ! -f "$KEY_PATH" ]; then
  ssh-keygen -t ed25519 -f "$KEY_PATH" -C "personal" -N "$PASS"
else
  echo "✅ Clave SSH ya existe"
fi

echo "⚙️ Configurando permisos..."
chmod 600 "$KEY_PATH"

echo "🚀 Iniciando ssh-agent..."
eval "$(ssh-agent -s)"

echo "🔓 Agregando clave al agente..."
ssh-add "$KEY_PATH" <<< "$PASS"

echo "📋 Tu clave pública es:"
cat "${KEY_PATH}.pub"

echo ""
echo "👉 Copia esta clave y agrégala en GitHub (Settings → SSH Keys)"
echo "✅ Setup completado"
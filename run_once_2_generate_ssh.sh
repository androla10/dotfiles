#!/bin/bash

if [ ! -f "$HOME/.ssh/id_ed25519_personal" ]; then
  ssh-keygen -t ed25519 -f "$HOME/.ssh/id_ed25519_personal" -C "personal" -N ""
fi

if [ ! -f "$HOME/.ssh/id_ed25519_work" ]; then
  ssh-keygen -t ed25519 -f "$HOME/.ssh/id_ed25519_work" -C "work" -N ""
fi
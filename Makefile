.PHONY: help install build test clean lint fmt check all

# Default target
help:
	@echo "Available targets:"
	@echo "  make install  - Install dependencies and setup environment"
	@echo "  make build    - Build project artifacts"

install:
	@echo "Installing dotfiles dependencies..."
	@if [ -f "$(HOME)/.private/Brewfile" ]; then brew bundle --file="$(HOME)/.private/Brewfile"; else echo "Brewfile not found"; fi
	@if [ -f "$(HOME)/.config/executable_install.sh" ]; then bash $(HOME)/.config/executable_install.sh; else echo "Executable install script not found: $(HOME)/.config/executable_install.sh"; fi

build:
	@echo "Building project..."
	@echo "No build step configured yet."

sync-brew:
	@echo "Syncing Brewfile..."
	brew bundle dump --file=$(HOME)/.private/Brewfile --force
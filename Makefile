.PHONY: help install build test clean lint fmt check all

# Default target
help:
	@echo "Available targets:"
	@echo "  make install  - Install dependencies and setup environment"
	@echo "  make build    - Build project artifacts"

install:
	@echo "Installing dotfiles dependencies..."
	$(call _install-packages)
	$(call _install-executables)

build:
	@echo "Building project..."
	@echo "No build step configured yet."

sync-brew:
	@echo "Syncing Brewfile..."
	brew bundle dump --file=$(HOME)/.private/Brewfile --force

define _install-packages:
	@echo "Installing packages from Brewfile..."
	@if [ -f "$(HOME)/.private/Brewfile" ]; then brew bundle --file=$(HOME)/.private/Brewfile; else echo "Brewfile not found"; fi
endef
	
define _install-executables
	@echo "Installing executables from install.sh..."
	@if [ -f "$(HOME)/.config/install.sh" ]; then bash $(HOME)/.config/install.sh; else echo "Executable install script not found: $(HOME)/.config/install.sh"; fi
endef
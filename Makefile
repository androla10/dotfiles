.PHONY: help install build test clean lint fmt check all

# Default target
help:
	@echo "Available targets:"
	@echo "  make install  - Install dependencies and setup environment"
	@echo "  make build    - Build project artifacts"

install:
	@echo "Installing dotfiles dependencies..."
	@bash brew bundle --file=~/.private/Brewfile
	@bash .config/executable_install.sh
	@bash .config/executable_install_sdkman.sh

build:
	@echo "Building project..."
	@echo "No build step configured yet."

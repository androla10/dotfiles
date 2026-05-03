.PHONY: help install build test clean lint fmt check all

# Default target
help:
	@echo "Available targets:"
	@echo "  make install  - Install dependencies and setup environment"
	@echo "  make build    - Build project artifacts"
	@echo "  make test     - Run tests"
	@echo "  make lint     - Run linters"
	@echo "  make fmt      - Format code"
	@echo "  make check    - Run all checks (lint, test)"
	@echo "  make clean    - Remove build artifacts and cache"
	@echo "  make all      - Run install, build, and check"

install:
	@echo "Installing dotfiles dependencies..."
	@bash run_once_install_packages.sh
	@bash dot_config/executable_install.sh
	@bash dot_config/executable_install_sdkman.sh

build:
	@echo "Building project..."
	@echo "No build step configured yet."

test:
	@echo "Running tests..."
	@echo "No tests configured yet."

lint:
	@echo "Running linters..."
	@echo "No linters configured yet."

fmt:
	@echo "Formatting code..."
	@echo "No formatters configured yet."

check: lint test
	@echo "All checks passed!"

clean:
	@echo "Cleaning up build artifacts..."
	@find . -type d -name __pycache__ -exec rm -rf {} + 2>/dev/null || true
	@find . -type f -name "*.pyc" -delete 2>/dev/null || true
	@find . -type d -name .pytest_cache -exec rm -rf {} + 2>/dev/null || true
	@find . -type d -name .coverage -exec rm -rf {} + 2>/dev/null || true
	@echo "Clean complete."

all: install build check
	@echo "All targets completed successfully!"

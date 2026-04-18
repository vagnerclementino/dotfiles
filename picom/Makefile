.PHONY: link validate help install

CONFIG_DIR := $(HOME)/.config/picom
DOTFILES_DIR := $(shell pwd)

help: ## Show this help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-15s\033[0m %s\n", $$1, $$2}'

install: ## Install picom
	@if command -v dnf &>/dev/null; then \
		sudo dnf install -y picom; \
	elif command -v apt &>/dev/null; then \
		sudo apt install -y picom; \
	else \
		echo "✗ Unsupported package manager"; exit 1; \
	fi
	@echo "✓ Packages installed"

link: ## Create symbolic links for picom configuration files
	@echo "Creating symbolic links..."
	@mkdir -p $(CONFIG_DIR)
	@ln -sf $(DOTFILES_DIR)/picom.conf $(CONFIG_DIR)/picom.conf
	@echo "✓ Symbolic links created successfully"

validate: ## Validate that symbolic links are created correctly
	@echo "Validating symbolic links..."
	@if [ -L "$(CONFIG_DIR)/picom.conf" ] && [ "$$(readlink $(CONFIG_DIR)/picom.conf)" = "$(DOTFILES_DIR)/picom.conf" ]; then \
		echo "✓ picom.conf -> $(DOTFILES_DIR)/picom.conf"; \
	else \
		echo "✗ picom.conf link is invalid or missing"; \
		exit 1; \
	fi
	@echo "✓ All symbolic links are valid"

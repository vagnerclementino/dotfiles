.PHONY: link validate help install

CONFIG_DIR := $(HOME)/.config/rofi
DOTFILES_DIR := $(shell pwd)

help: ## Show this help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-15s\033[0m %s\n", $$1, $$2}'

install: ## Install rofi
	@if command -v dnf &>/dev/null; then \
		sudo dnf install -y rofi; \
	elif command -v apt &>/dev/null; then \
		sudo apt install -y rofi; \
	else \
		echo "✗ Unsupported package manager"; exit 1; \
	fi
	@echo "✓ Packages installed"

link: ## Create symbolic links for rofi configuration files
	@echo "Creating symbolic links..."
	@mkdir -p $(CONFIG_DIR)
	@ln -sf $(DOTFILES_DIR)/config.rasi $(CONFIG_DIR)/config.rasi
	@echo "✓ Symbolic links created successfully"

validate: ## Validate that symbolic links are created correctly
	@echo "Validating symbolic links..."
	@if [ -L "$(CONFIG_DIR)/config.rasi" ] && [ "$$(readlink $(CONFIG_DIR)/config.rasi)" = "$(DOTFILES_DIR)/config.rasi" ]; then \
		echo "✓ config.rasi -> $(DOTFILES_DIR)/config.rasi"; \
	else \
		echo "✗ config.rasi link is invalid or missing"; \
		exit 1; \
	fi
	@echo "✓ All symbolic links are valid"

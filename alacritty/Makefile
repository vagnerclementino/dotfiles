.PHONY: link validate help install

CONFIG_DIR := $(HOME)/.config/alacritty
DOTFILES_DIR := $(shell pwd)

help: ## Show this help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-15s\033[0m %s\n", $$1, $$2}'

install: ## Install alacritty
	@if command -v dnf &>/dev/null; then \
		sudo dnf install -y alacritty; \
	elif command -v apt &>/dev/null; then \
		sudo apt install -y alacritty; \
	else \
		echo "✗ Unsupported package manager"; exit 1; \
	fi
	@echo "✓ Packages installed"

link: ## Create symbolic links for alacritty configuration files
	@echo "Creating symbolic links..."
	@mkdir -p $(CONFIG_DIR)
	@ln -sf $(DOTFILES_DIR)/alacritty.toml $(CONFIG_DIR)/alacritty.toml
	@echo "✓ Symbolic links created successfully"

validate: ## Validate that symbolic links are created correctly
	@echo "Validating symbolic links..."
	@if [ -L "$(CONFIG_DIR)/alacritty.toml" ] && [ "$$(readlink $(CONFIG_DIR)/alacritty.toml)" = "$(DOTFILES_DIR)/alacritty.toml" ]; then \
		echo "✓ alacritty.toml -> $(DOTFILES_DIR)/alacritty.toml"; \
	else \
		echo "✗ alacritty.toml link is invalid or missing"; \
		exit 1; \
	fi
	@echo "✓ All symbolic links are valid"

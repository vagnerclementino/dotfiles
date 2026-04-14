.PHONY: link validate help install

CONFIG_DIR := $(HOME)/.config/polybar
DOTFILES_DIR := $(shell pwd)

help: ## Show this help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-15s\033[0m %s\n", $$1, $$2}'

install: ## Install polybar and fonts
	@if command -v dnf &>/dev/null; then \
		sudo dnf install -y polybar hack-fonts; \
	elif command -v apt &>/dev/null; then \
		sudo apt install -y polybar fonts-hack; \
	else \
		echo "✗ Unsupported package manager"; exit 1; \
	fi
	@echo "✓ Packages installed"

link: ## Create symbolic links for polybar configuration files
	@echo "Creating symbolic links..."
	@mkdir -p $(CONFIG_DIR)
	@ln -sf $(DOTFILES_DIR)/config $(CONFIG_DIR)/config
	@ln -sf $(DOTFILES_DIR)/launch.sh $(CONFIG_DIR)/launch.sh
	@echo "✓ Symbolic links created successfully"

validate: ## Validate that symbolic links are created correctly
	@echo "Validating symbolic links..."
	@if [ -L "$(CONFIG_DIR)/config" ] && [ "$$(readlink $(CONFIG_DIR)/config)" = "$(DOTFILES_DIR)/config" ]; then \
		echo "✓ config -> $(DOTFILES_DIR)/config"; \
	else \
		echo "✗ config link is invalid or missing"; \
		exit 1; \
	fi
	@if [ -L "$(CONFIG_DIR)/launch.sh" ] && [ "$$(readlink $(CONFIG_DIR)/launch.sh)" = "$(DOTFILES_DIR)/launch.sh" ]; then \
		echo "✓ launch.sh -> $(DOTFILES_DIR)/launch.sh"; \
	else \
		echo "✗ launch.sh link is invalid or missing"; \
		exit 1; \
	fi
	@echo "✓ All symbolic links are valid"

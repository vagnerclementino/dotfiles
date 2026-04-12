.PHONY: link validate help

CONFIG_DIR := $(HOME)/.config/ranger
DOTFILES_DIR := $(shell pwd)

help: ## Show this help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-15s\033[0m %s\n", $$1, $$2}'

link: ## Create symbolic links for ranger configuration files
	@echo "Creating symbolic links..."
	@mkdir -p $(CONFIG_DIR)
	@ln -sf $(DOTFILES_DIR)/rc.conf $(CONFIG_DIR)/rc.conf
	@ln -sf $(DOTFILES_DIR)/rifle.conf $(CONFIG_DIR)/rifle.conf
	@ln -sf $(DOTFILES_DIR)/scope.sh $(CONFIG_DIR)/scope.sh
	@ln -sf $(DOTFILES_DIR)/commands.py $(CONFIG_DIR)/commands.py
	@echo "✓ Symbolic links created successfully"

validate: ## Validate that symbolic links are created correctly
	@echo "Validating symbolic links..."
	@if [ -L "$(CONFIG_DIR)/rc.conf" ] && [ "$$(readlink $(CONFIG_DIR)/rc.conf)" = "$(DOTFILES_DIR)/rc.conf" ]; then \
		echo "✓ rc.conf -> $(DOTFILES_DIR)/rc.conf"; \
	else \
		echo "✗ rc.conf link is invalid or missing"; \
		exit 1; \
	fi
	@if [ -L "$(CONFIG_DIR)/rifle.conf" ] && [ "$$(readlink $(CONFIG_DIR)/rifle.conf)" = "$(DOTFILES_DIR)/rifle.conf" ]; then \
		echo "✓ rifle.conf -> $(DOTFILES_DIR)/rifle.conf"; \
	else \
		echo "✗ rifle.conf link is invalid or missing"; \
		exit 1; \
	fi
	@if [ -L "$(CONFIG_DIR)/scope.sh" ] && [ "$$(readlink $(CONFIG_DIR)/scope.sh)" = "$(DOTFILES_DIR)/scope.sh" ]; then \
		echo "✓ scope.sh -> $(DOTFILES_DIR)/scope.sh"; \
	else \
		echo "✗ scope.sh link is invalid or missing"; \
		exit 1; \
	fi
	@if [ -L "$(CONFIG_DIR)/commands.py" ] && [ "$$(readlink $(CONFIG_DIR)/commands.py)" = "$(DOTFILES_DIR)/commands.py" ]; then \
		echo "✓ commands.py -> $(DOTFILES_DIR)/commands.py"; \
	else \
		echo "✗ commands.py link is invalid or missing"; \
		exit 1; \
	fi
	@echo "✓ All symbolic links are valid"

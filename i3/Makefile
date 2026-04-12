.PHONY: link validate help

CONFIG_DIR := $(HOME)/.config/i3
DOTFILES_DIR := $(shell pwd)

help: ## Show this help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-15s\033[0m %s\n", $$1, $$2}'

link: ## Create symbolic links for i3 configuration files
	@echo "Creating symbolic links..."
	@mkdir -p $(CONFIG_DIR)
	@ln -sf $(DOTFILES_DIR)/config $(CONFIG_DIR)/config
	@ln -sf $(DOTFILES_DIR)/touchpad_toggle.sh $(CONFIG_DIR)/touchpad_toggle.sh
	@echo "✓ Symbolic links created successfully"

validate: ## Validate that symbolic links are created correctly
	@echo "Validating symbolic links..."
	@if [ -L "$(CONFIG_DIR)/config" ] && [ "$$(readlink $(CONFIG_DIR)/config)" = "$(DOTFILES_DIR)/config" ]; then \
		echo "✓ config -> $(DOTFILES_DIR)/config"; \
	else \
		echo "✗ config link is invalid or missing"; \
		exit 1; \
	fi
	@if [ -L "$(CONFIG_DIR)/touchpad_toggle.sh" ] && [ "$$(readlink $(CONFIG_DIR)/touchpad_toggle.sh)" = "$(DOTFILES_DIR)/touchpad_toggle.sh" ]; then \
		echo "✓ touchpad_toggle.sh -> $(DOTFILES_DIR)/touchpad_toggle.sh"; \
	else \
		echo "✗ touchpad_toggle.sh link is invalid or missing"; \
		exit 1; \
	fi
	@echo "✓ All symbolic links are valid"

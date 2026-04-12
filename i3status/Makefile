.PHONY: link validate help

CONFIG_DIR := $(HOME)/.config/i3status
DOTFILES_DIR := $(shell pwd)

help: ## Show this help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-15s\033[0m %s\n", $$1, $$2}'

link: ## Create symbolic links for i3status configuration files
	@echo "Creating symbolic links..."
	@mkdir -p $(CONFIG_DIR)
	@ln -sf $(DOTFILES_DIR)/i3status.conf $(CONFIG_DIR)/i3status.conf
	@echo "✓ Symbolic links created successfully"

validate: ## Validate that symbolic links are created correctly
	@echo "Validating symbolic links..."
	@if [ -L "$(CONFIG_DIR)/i3status.conf" ] && [ "$$(readlink $(CONFIG_DIR)/i3status.conf)" = "$(DOTFILES_DIR)/i3status.conf" ]; then \
		echo "✓ i3status.conf -> $(DOTFILES_DIR)/i3status.conf"; \
	else \
		echo "✗ i3status.conf link is invalid or missing"; \
		exit 1; \
	fi
	@echo "✓ All symbolic links are valid"

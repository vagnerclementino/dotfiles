.PHONY: link validate help

CONFIG_DIR := $(HOME)/.config/conky
DOTFILES_DIR := $(shell pwd)

help: ## Show this help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-15s\033[0m %s\n", $$1, $$2}'

link: ## Create symbolic links for conky configuration files
	@echo "Creating symbolic links..."
	@mkdir -p $(CONFIG_DIR)
	@ln -sf $(DOTFILES_DIR)/conkyrc $(CONFIG_DIR)/conkyrc
	@echo "✓ Symbolic links created successfully"

validate: ## Validate that symbolic links are created correctly
	@echo "Validating symbolic links..."
	@if [ -L "$(CONFIG_DIR)/conkyrc" ] && [ "$$(readlink $(CONFIG_DIR)/conkyrc)" = "$(DOTFILES_DIR)/conkyrc" ]; then \
		echo "✓ conkyrc -> $(DOTFILES_DIR)/conkyrc"; \
	else \
		echo "✗ conkyrc link is invalid or missing"; \
		exit 1; \
	fi
	@echo "✓ All symbolic links are valid"

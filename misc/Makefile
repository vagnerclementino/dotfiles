.PHONY: link validate help

DOTFILES_DIR := $(shell pwd)

help: ## Show this help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-15s\033[0m %s\n", $$1, $$2}'

link: ## Create symbolic links for Xresources configuration
	@echo "Creating symbolic links..."
	@ln -sf $(DOTFILES_DIR)/Xresources $(HOME)/.Xresources
	@echo "✓ Symbolic links created successfully"

validate: ## Validate that symbolic links are created correctly
	@echo "Validating symbolic links..."
	@if [ -L "$(HOME)/.Xresources" ] && [ "$$(readlink $(HOME)/.Xresources)" = "$(DOTFILES_DIR)/Xresources" ]; then \
		echo "✓ .Xresources -> $(DOTFILES_DIR)/Xresources"; \
	else \
		echo "✗ .Xresources link is invalid or missing"; \
		exit 1; \
	fi
	@echo "✓ All symbolic links are valid"

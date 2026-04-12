.PHONY: link validate help

DOTFILES_DIR := $(shell pwd)

help: ## Show this help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-15s\033[0m %s\n", $$1, $$2}'

link: ## Create symbolic links for zsh configuration files
	@echo "Creating symbolic links..."
	@ln -sf $(DOTFILES_DIR)/zshrc $(HOME)/.zshrc
	@echo "✓ Symbolic links created successfully"

validate: ## Validate that symbolic links are created correctly
	@echo "Validating symbolic links..."
	@if [ -L "$(HOME)/.zshrc" ] && [ "$$(readlink $(HOME)/.zshrc)" = "$(DOTFILES_DIR)/zshrc" ]; then \
		echo "✓ .zshrc -> $(DOTFILES_DIR)/zshrc"; \
	else \
		echo "✗ .zshrc link is invalid or missing"; \
		exit 1; \
	fi
	@echo "✓ All symbolic links are valid"

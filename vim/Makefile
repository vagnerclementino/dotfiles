.PHONY: link validate help

DOTFILES_DIR := $(shell pwd)

help: ## Show this help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-15s\033[0m %s\n", $$1, $$2}'

link: ## Create symbolic links for vim configuration files
	@echo "Creating symbolic links..."
	@ln -sf $(DOTFILES_DIR)/.vimrc $(HOME)/.vimrc
	@ln -sf $(DOTFILES_DIR)/.vimrc.local $(HOME)/.vimrc.local
	@ln -sf $(DOTFILES_DIR)/.vimrc.local.bundles $(HOME)/.vimrc.local.bundles
	@echo "✓ Symbolic links created successfully"

validate: ## Validate that symbolic links are created correctly
	@echo "Validating symbolic links..."
	@if [ -L "$(HOME)/.vimrc" ] && [ "$$(readlink $(HOME)/.vimrc)" = "$(DOTFILES_DIR)/.vimrc" ]; then \
		echo "✓ .vimrc -> $(DOTFILES_DIR)/.vimrc"; \
	else \
		echo "✗ .vimrc link is invalid or missing"; \
		exit 1; \
	fi
	@if [ -L "$(HOME)/.vimrc.local" ] && [ "$$(readlink $(HOME)/.vimrc.local)" = "$(DOTFILES_DIR)/.vimrc.local" ]; then \
		echo "✓ .vimrc.local -> $(DOTFILES_DIR)/.vimrc.local"; \
	else \
		echo "✗ .vimrc.local link is invalid or missing"; \
		exit 1; \
	fi
	@if [ -L "$(HOME)/.vimrc.local.bundles" ] && [ "$$(readlink $(HOME)/.vimrc.local.bundles)" = "$(DOTFILES_DIR)/.vimrc.local.bundles" ]; then \
		echo "✓ .vimrc.local.bundles -> $(DOTFILES_DIR)/.vimrc.local.bundles"; \
	else \
		echo "✗ .vimrc.local.bundles link is invalid or missing"; \
		exit 1; \
	fi
	@echo "✓ All symbolic links are valid"

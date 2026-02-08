.PHONY: link validate help

NVIM_CONFIG_DIR := $(HOME)/.config/nvim
DOTFILES_DIR := $(shell pwd)

help: ## Show this help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-15s\033[0m %s\n", $$1, $$2}'

link: ## Create symbolic links for nvim configuration files
	@echo "Creating symbolic links..."
	@mkdir -p $(NVIM_CONFIG_DIR)
	@ln -sf $(DOTFILES_DIR)/init.vim $(NVIM_CONFIG_DIR)/init.vim
	@ln -sf $(DOTFILES_DIR)/rc.local $(HOME)/.rc.local
	@ln -sf $(DOTFILES_DIR)/rc.local.bundles $(HOME)/.rc.local.bundles
	@echo "✓ Symbolic links created successfully"

validate: ## Validate that symbolic links are created correctly
	@echo "Validating symbolic links..."
	@if [ -L "$(NVIM_CONFIG_DIR)/init.vim" ] && [ "$$(readlink $(NVIM_CONFIG_DIR)/init.vim)" = "$(DOTFILES_DIR)/init.vim" ]; then \
		echo "✓ init.vim -> $(DOTFILES_DIR)/init.vim"; \
	else \
		echo "✗ init.vim link is invalid or missing"; \
		exit 1; \
	fi
	@if [ -L "$(HOME)/.rc.local" ] && [ "$$(readlink $(HOME)/.rc.local)" = "$(DOTFILES_DIR)/rc.local" ]; then \
		echo "✓ .rc.local -> $(DOTFILES_DIR)/rc.local"; \
	else \
		echo "✗ .rc.local link is invalid or missing"; \
		exit 1; \
	fi
	@if [ -L "$(HOME)/.rc.local.bundles" ] && [ "$$(readlink $(HOME)/.rc.local.bundles)" = "$(DOTFILES_DIR)/rc.local.bundles" ]; then \
		echo "✓ .rc.local.bundles -> $(DOTFILES_DIR)/rc.local.bundles"; \
	else \
		echo "✗ .rc.local.bundles link is invalid or missing"; \
		exit 1; \
	fi
	@echo "✓ All symbolic links are valid"

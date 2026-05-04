.PHONY: link validate help install bootstrap

NVIM_CONFIG_DIR := $(HOME)/.config/nvim
DOTFILES_DIR := $(shell pwd)

VIM_BOOTSTRAP_URL := https://vim-bootstrap.com/generate.vim
VIM_BOOTSTRAP_LANGS := c,elixir,go,html,javascript,lua,python,scala,typescript
VIM_BOOTSTRAP_EDITOR := nvim
VIM_BOOTSTRAP_THEME := dracula

help: ## Show this help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-15s\033[0m %s\n", $$1, $$2}'

install: ## Install neovim
	@if command -v dnf &>/dev/null; then \
		sudo dnf install -y neovim; \
	elif command -v apt &>/dev/null; then \
		sudo apt install -y neovim; \
	else \
		echo "✗ Unsupported package manager"; exit 1; \
	fi
	@echo "✓ Packages installed"

link: ## Create symbolic links for nvim configuration files
	@echo "Creating symbolic links..."
	@mkdir -p $(NVIM_CONFIG_DIR)
	@ln -sf $(DOTFILES_DIR)/init.vim $(NVIM_CONFIG_DIR)/init.vim
	@ln -sf $(DOTFILES_DIR)/local_init.vim $(NVIM_CONFIG_DIR)/local_init.vim
	@ln -sf $(DOTFILES_DIR)/local_bundles.vim $(NVIM_CONFIG_DIR)/local_bundles.vim
	@echo "✓ Symbolic links created successfully"

validate: ## Validate that symbolic links are created correctly
	@echo "Validating symbolic links..."
	@if [ -L "$(NVIM_CONFIG_DIR)/init.vim" ] && [ "$$(readlink $(NVIM_CONFIG_DIR)/init.vim)" = "$(DOTFILES_DIR)/init.vim" ]; then \
		echo "✓ init.vim -> $(DOTFILES_DIR)/init.vim"; \
	else \
		echo "✗ init.vim link is invalid or missing"; \
		exit 1; \
	fi
	@if [ -L "$(NVIM_CONFIG_DIR)/local_init.vim" ] && [ "$$(readlink $(NVIM_CONFIG_DIR)/local_init.vim)" = "$(DOTFILES_DIR)/local_init.vim" ]; then \
		echo "✓ local_init.vim -> $(DOTFILES_DIR)/local_init.vim"; \
	else \
		echo "✗ local_init.vim link is invalid or missing"; \
		exit 1; \
	fi
	@if [ -L "$(NVIM_CONFIG_DIR)/local_bundles.vim" ] && [ "$$(readlink $(NVIM_CONFIG_DIR)/local_bundles.vim)" = "$(DOTFILES_DIR)/local_bundles.vim" ]; then \
		echo "✓ local_bundles.vim -> $(DOTFILES_DIR)/local_bundles.vim"; \
	else \
		echo "✗ local_bundles.vim link is invalid or missing"; \
		exit 1; \
	fi
	@echo "✓ All symbolic links are valid"

bootstrap: ## Download latest init.vim from vim-bootstrap
	@echo "Downloading init.vim from vim-bootstrap..."
	@curl -s -X POST $(VIM_BOOTSTRAP_URL) \
		--data "editor=$(VIM_BOOTSTRAP_EDITOR)" \
		--data "theme=$(VIM_BOOTSTRAP_THEME)" \
		--data "langs=$(VIM_BOOTSTRAP_LANGS)" \
		-o $(DOTFILES_DIR)/init.vim
	@echo "✓ init.vim updated from vim-bootstrap"

.PHONY: link validate help install

CONFIG_DIR := $(HOME)/.config/conky
DOTFILES_DIR := $(shell pwd)

help: ## Show this help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-15s\033[0m %s\n", $$1, $$2}'

install: ## Install conky and dependencies
	@if command -v dnf &>/dev/null; then \
		sudo dnf install -y conky xdotool jq; \
	elif command -v apt &>/dev/null; then \
		sudo apt install -y conky-all xdotool jq; \
	else \
		echo "✗ Unsupported package manager"; exit 1; \
	fi
	@echo "✓ Packages installed"

link: ## Create symbolic links for conky configuration files
	@echo "Creating symbolic links..."
	@mkdir -p $(CONFIG_DIR)
	@ln -sf $(DOTFILES_DIR)/conkyrc $(CONFIG_DIR)/conkyrc
	@ln -sf $(DOTFILES_DIR)/conky-toggle.sh $(CONFIG_DIR)/conky-toggle.sh
	@echo "✓ Symbolic links created successfully"

validate: ## Validate that symbolic links are created correctly
	@echo "Validating symbolic links..."
	@if [ -L "$(CONFIG_DIR)/conkyrc" ] && [ "$$(readlink $(CONFIG_DIR)/conkyrc)" = "$(DOTFILES_DIR)/conkyrc" ]; then \
		echo "✓ conkyrc -> $(DOTFILES_DIR)/conkyrc"; \
	else \
		echo "✗ conkyrc link is invalid or missing"; \
		exit 1; \
	fi
	@if [ -L "$(CONFIG_DIR)/conky-toggle.sh" ] && [ "$$(readlink $(CONFIG_DIR)/conky-toggle.sh)" = "$(DOTFILES_DIR)/conky-toggle.sh" ]; then \
		echo "✓ conky-toggle.sh -> $(DOTFILES_DIR)/conky-toggle.sh"; \
	else \
		echo "✗ conky-toggle.sh link is invalid or missing"; \
		exit 1; \
	fi
	@echo "✓ All symbolic links are valid"

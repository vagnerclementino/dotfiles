.PHONY: link validate help install

CONFIG_DIR := $(HOME)/.config/i3
DOTFILES_DIR := $(shell pwd)

help: ## Show this help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-15s\033[0m %s\n", $$1, $$2}'

install: ## Install i3 and dependencies
	@if command -v dnf &>/dev/null; then \
		sudo dnf install -y i3 i3lock-color rofi feh picom xdotool jq scrot ImageMagick \
			hack-fonts adobe-source-code-pro-fonts; \
	elif command -v apt &>/dev/null; then \
		sudo apt install -y i3 rofi feh picom xdotool jq scrot imagemagick \
			fonts-hack fonts-source-code-pro; \
	else \
		echo "✗ Unsupported package manager"; exit 1; \
	fi
	@echo "✓ Packages installed"

link: ## Create symbolic links for i3 configuration files
	@echo "Creating symbolic links..."
	@mkdir -p $(CONFIG_DIR)
	@ln -sf $(DOTFILES_DIR)/config $(CONFIG_DIR)/config
	@ln -sf $(DOTFILES_DIR)/lock.sh $(CONFIG_DIR)/lock.sh
	@ln -sf $(DOTFILES_DIR)/touchpad_toggle.sh $(CONFIG_DIR)/touchpad_toggle.sh
	@ln -sf $(DOTFILES_DIR)/urxvtc $(CONFIG_DIR)/urxvtc
	@ln -sf $(DOTFILES_DIR)/urxvtd $(CONFIG_DIR)/urxvtd
	@rm -rf $(CONFIG_DIR)/img
	@ln -sf $(DOTFILES_DIR)/img $(CONFIG_DIR)/img
	@echo "✓ Symbolic links created successfully"

validate: ## Validate that symbolic links are created correctly
	@echo "Validating symbolic links..."
	@if [ -L "$(CONFIG_DIR)/config" ] && [ "$$(readlink $(CONFIG_DIR)/config)" = "$(DOTFILES_DIR)/config" ]; then \
		echo "✓ config -> $(DOTFILES_DIR)/config"; \
	else \
		echo "✗ config link is invalid or missing"; \
		exit 1; \
	fi
	@if [ -L "$(CONFIG_DIR)/lock.sh" ] && [ "$$(readlink $(CONFIG_DIR)/lock.sh)" = "$(DOTFILES_DIR)/lock.sh" ]; then \
		echo "✓ lock.sh -> $(DOTFILES_DIR)/lock.sh"; \
	else \
		echo "✗ lock.sh link is invalid or missing"; \
		exit 1; \
	fi
	@if [ -L "$(CONFIG_DIR)/touchpad_toggle.sh" ] && [ "$$(readlink $(CONFIG_DIR)/touchpad_toggle.sh)" = "$(DOTFILES_DIR)/touchpad_toggle.sh" ]; then \
		echo "✓ touchpad_toggle.sh -> $(DOTFILES_DIR)/touchpad_toggle.sh"; \
	else \
		echo "✗ touchpad_toggle.sh link is invalid or missing"; \
		exit 1; \
	fi
	@if [ -L "$(CONFIG_DIR)/urxvtc" ] && [ "$$(readlink $(CONFIG_DIR)/urxvtc)" = "$(DOTFILES_DIR)/urxvtc" ]; then \
		echo "✓ urxvtc -> $(DOTFILES_DIR)/urxvtc"; \
	else \
		echo "✗ urxvtc link is invalid or missing"; \
		exit 1; \
	fi
	@if [ -L "$(CONFIG_DIR)/urxvtd" ] && [ "$$(readlink $(CONFIG_DIR)/urxvtd)" = "$(DOTFILES_DIR)/urxvtd" ]; then \
		echo "✓ urxvtd -> $(DOTFILES_DIR)/urxvtd"; \
	else \
		echo "✗ urxvtd link is invalid or missing"; \
		exit 1; \
	fi
	@if [ -L "$(CONFIG_DIR)/img" ] && [ "$$(readlink $(CONFIG_DIR)/img)" = "$(DOTFILES_DIR)/img" ]; then \
		echo "✓ img -> $(DOTFILES_DIR)/img"; \
	else \
		echo "✗ img link is invalid or missing"; \
		exit 1; \
	fi
	@echo "✓ All symbolic links are valid"

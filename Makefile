.PHONY: link validate help

MODULES := i3 i3status polybar ranger neovim vim zsh termite mpd ncmpcpp misc

help: ## Show this help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-15s\033[0m %s\n", $$1, $$2}'

link: ## Create symbolic links for all modules
	@for dir in $(MODULES); do \
		echo "=== $$dir ==="; \
		$(MAKE) -C $$dir link; \
	done

validate: ## Validate symbolic links for all modules
	@for dir in $(MODULES); do \
		echo "=== $$dir ==="; \
		$(MAKE) -C $$dir validate; \
	done

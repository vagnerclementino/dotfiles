#!/bin/bash
# Show conky only on empty workspaces
# Conky uses own_window_type=override (invisible to i3)
# Requires: jq

CONKY_CONF="$HOME/.config/conky/conkyrc"

# Kill previous instances
for pid in $(pgrep -f "conky-toggle.sh"); do
    [ "$pid" != "$$" ] && kill "$pid" 2>/dev/null
done
killall -q conky 2>/dev/null
sleep 0.5

conky -c "$CONKY_CONF" -d
sleep 1

VISIBLE=true

count_windows() {
    i3-msg -t get_tree | jq '[
        recurse(.nodes[]?, .floating_nodes[]?) |
        select(.type == "workspace") |
        select(any(recurse(.nodes[]?); .focused == true)) |
        recurse(.nodes[]?, .floating_nodes[]?) |
        select(.window != null)
    ] | length' 2>/dev/null
}

update() {
    local n
    n=$(count_windows)
    if [ "${n:-0}" -eq 0 ] && [ "$VISIBLE" = false ]; then
        killall -q -SIGCONT conky 2>/dev/null
        VISIBLE=true
    elif [ "${n:-0}" -gt 0 ] && [ "$VISIBLE" = true ]; then
        killall -q -SIGSTOP conky 2>/dev/null
        VISIBLE=false
    fi
}

update

i3-msg -t subscribe -m '["window","workspace"]' | while read -r _; do
    sleep 0.2
    update
done

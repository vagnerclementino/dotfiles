#!/bin/bash
# Show conky only when current workspace has no windows (excluding conky)
# Requires: jq

CONKY_CONF="$HOME/.config/conky/conkyrc"

# Kill previous instance of this script
for pid in $(pgrep -f "conky-toggle.sh"); do
    [ "$pid" != "$$" ] && kill "$pid" 2>/dev/null
done

count_windows() {
    i3-msg -t get_tree | jq '[
        recurse(.nodes[]?, .floating_nodes[]?) |
        select(.type == "workspace") |
        select(any(recurse(.nodes[]?); .focused == true)) |
        recurse(.nodes[]?, .floating_nodes[]?) |
        select(.window != null and .window_properties.class != "Conky")
    ] | length' 2>/dev/null
}

update() {
    local n
    n=$(count_windows)
    if [ "${n:-0}" -eq 0 ]; then
        pgrep -x conky >/dev/null || conky -c "$CONKY_CONF" -d
    else
        killall -q conky 2>/dev/null
    fi
}

sleep 1
update

i3-msg -t subscribe -m '["window","workspace"]' | while read -r _; do
    sleep 0.3
    update
done

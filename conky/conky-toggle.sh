#!/bin/bash
# Show conky only when workspace has no windows
# Requires: jq, xdotool

# Start conky if not running
pgrep -x conky >/dev/null || conky -c ~/.config/conky/conkyrc -d

sleep 1
CONKY_WID=$(xdotool search --class Conky | head -1)

get_window_count() {
    i3-msg -t get_tree | jq '
        recurse(.nodes[]?, .floating_nodes[]?) |
        select(.type == "workspace" and .visible == true) |
        [recurse(.nodes[]?, .floating_nodes[]?) | select(.window != null)] |
        length
    ' 2>/dev/null | head -1
}

toggle() {
    local count
    count=$(get_window_count)
    if [ -n "$CONKY_WID" ]; then
        if [ "${count:-0}" -eq 0 ]; then
            xdotool windowmap "$CONKY_WID" 2>/dev/null
        else
            xdotool windowunmap "$CONKY_WID" 2>/dev/null
        fi
    fi
}

toggle

i3-msg -t subscribe -m '["window","workspace"]' | while read -r _; do
    toggle
done

#!/bin/bash
# Lock screen - Dracula theme with screen blur
# Requires: i3lock-color, scrot, imagemagick

TMPIMG=/tmp/lockscreen.png

# Capture screen and apply blur
scrot "$TMPIMG"
convert "$TMPIMG" -blur 0x8 "$TMPIMG"

i3lock \
    -i "$TMPIMG" \
    --inside-color=28283600 \
    --ring-color=6272a4ff \
    --ringver-color=50fa7bff \
    --ringwrong-color=ff5555ff \
    --keyhl-color=bd93f9ff \
    --bshl-color=ff79c6ff \
    --separator-color=00000000 \
    --verif-color=50fa7bff \
    --wrong-color=ff5555ff \
    --layout-color=f8f8f2ff \
    --insidever-color=282a36cc \
    --insidewrong-color=282a36cc \
    --verif-text="Verificando..." \
    --wrong-text="Senha incorreta" \
    --noinput-text="Sem entrada" \
    --lock-text="Bloqueando..." \
    --lockfailed-text="Falha ao bloquear" \
    --radius=120 \
    --ring-width=8 \
    --clock \
    --time-str="%H:%M" \
    --time-color=f8f8f2ff \
    --time-font="Hack" \
    --time-size=64 \
    --time-pos="x+w/2:y+h/2-200" \
    --date-str="%A, %d de %B" \
    --date-color=6272a4ff \
    --date-font="Source Code Pro" \
    --date-size=24 \
    --date-pos="tx:ty+40" \
    --greeter-text="Dracula" \
    --greeter-color=bd93f9ff \
    --greeter-font="Hack" \
    --greeter-size=32 \
    --greeter-pos="x+w/2:y+h/2+200" \
    --ind-pos="x+w/2:y+h/2" \
    --line-uses-ring \
    --show-failed-attempts \
    --nofork

rm -f "$TMPIMG"

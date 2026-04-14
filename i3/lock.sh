#!/bin/bash
# Lock screen - Dracula theme with screen blur + random quote
# Requires: i3lock-color, scrot, imagemagick, curl, jq

TMPIMG=/tmp/lockscreen.png

# Capture screen and apply blur
scrot "$TMPIMG"
convert "$TMPIMG" -blur 0x8 "$TMPIMG"

# Try to fetch a random quote from API (timeout 2s)
QUOTE_JSON=$(curl -s --max-time 2 "https://dummyjson.com/quotes/random" 2>/dev/null)
if [ -n "$QUOTE_JSON" ] && echo "$QUOTE_JSON" | jq -e .quote &>/dev/null; then
    QUOTE=$(echo "$QUOTE_JSON" | jq -r '.quote')
    AUTHOR=$(echo "$QUOTE_JSON" | jq -r '.author')
    GREETER="$QUOTE - $AUTHOR"
else
    # Fallback local quotes
    FALLBACK=(
        "It's dangerous to go alone! Take this. - Old Man, The Legend of Zelda"
        "The cake is a lie. - GLaDOS, Portal"
        "War. War never changes. - Narrator, Fallout"
        "Do or do not. There is no try. - Yoda, Star Wars"
        "I am root. - Every sysadmin, ever"
        "There is no place like 127.0.0.1 - Every developer, ever"
        "Talk is cheap. Show me the code. - Linus Torvalds"
        "May the --force be with you. - Git users everywhere"
        "Have you tried turning it off and on again? - Roy, IT Crowd"
        "Hello, friend. - Elliot Alderson, Mr. Robot"
        "Hack the planet! - Dade Murphy, Hackers"
        "With great power comes great responsibility. - Uncle Ben, Spider-Man"
        "I am Groot. - Groot, Guardians of the Galaxy"
        "It compiles; ship it! - Every developer on a Friday"
        "I'm not superstitious, but I am a little stitious. - Michael Scott, The Office"
        "sudo make me a sandwich. - xkcd #149"
        "It's not a bug, it's a feature. - Every PM, ever"
        "There are only 10 types of people in the world. - Binary joke"
        "Bazinga! - Sheldon Cooper, The Big Bang Theory"
        "I solemnly swear that I am up to no good. - Harry Potter"
        "Live long and prosper. - Spock, Star Trek"
        "To mass rm -rf, or not to mass rm -rf. - Sysadmin Shakespeare"
        "Winter is coming. - Ned Stark, Game of Thrones"
        "I drink and I know things. - Tyrion Lannister, Game of Thrones"
        "Why so serious? - Joker, The Dark Knight"
        "This is the way. - Din Djarin, The Mandalorian"
        "I see dead processes. - DevOps, The Sixth Sense"
        "One does not simply push to main. - Boromir, DevOps edition"
        "Houston, we have a segfault. - Apollo 13, dev edition"
        "My precious... config file. - Gollum, DevOps edition"
    )
    GREETER="${FALLBACK[$((RANDOM % ${#FALLBACK[@]}))]}"
fi

# Truncate if too long
GREETER="${GREETER:0:120}"

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
    --greeter-text="$GREETER" \
    --greeter-color=bd93f9ff \
    --greeter-font="Hack" \
    --greeter-size=16 \
    --greeter-pos="x+w/2:y+h/2+200" \
    --ind-pos="x+w/2:y+h/2" \
    --line-uses-ring \
    --show-failed-attempts \
    --nofork

rm -f "$TMPIMG"

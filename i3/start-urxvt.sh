#!/bin/sh
urxvtc "$@" -e ranger
if [ $? -eq 2 ]; then
   urxvtd -q -o -f
   urxvtc "$@" -e ranger
fi

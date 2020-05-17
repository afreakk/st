#!/bin/sh
word=$(tr ' ' '\n' | tac | sed 's/^ *//;s/ *$//' | awk '!cnts[$0]++' | dmenu | tr -d '\n')		    
echo $@ > ~/wot

if [ "$1" == "clipboard" ]; then
    echo -n $word | xclip -selection clipboard
else
    xdotool type $word		    
fi

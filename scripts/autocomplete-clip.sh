#!/bin/sh
word=$(tr ' ' '\n' | tac | sed 's/^ *//;s/ *$//' | awk '!cnts[$0]++' | dmenu | tr -d '\n')		    
echo -n $word | xclip -selection clipboard

#!/bin/sh
word=$(tr ' ' '\n' | tac | sed 's/^ *//;s/ *$//' | awk '!cnts[$0]++' | dmenu | tr -d '\n')		    
xdotool type $word		    


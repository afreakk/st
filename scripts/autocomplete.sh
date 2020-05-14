#!/bin/sh
word=$(tr ' ' '\n' | dmenu | tr -d '\n')
xdotool type $word

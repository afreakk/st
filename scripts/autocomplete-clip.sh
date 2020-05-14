#!/bin/sh
tr ' ' '\n' | dmenu | tr -d '\n' | xclip -selection clipboard

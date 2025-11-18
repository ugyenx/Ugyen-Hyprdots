#!/usr/bin/env bash
WALL_DIR="$HOME/Pictures/wallpapers/mocha/"
CUR_WALL=$(hyprctl hyprpaper listloaded)
WALL=$(find "$WALL_DIR" -type f ! -name "$(basename "$CUR_WALL")" | shuf -n 1)
hyprctl hyprpaper reload, "$WALL"

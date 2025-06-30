#!/bin/bash
WAL_COLORS="$HOME/.cache/wal/colors.sh"
MAKO_CONFIG="$HOME/.config/mako/config"

[[ -f $WAL_COLORS ]] && source "$WAL_COLORS"
sed -i "s/^border-color.*/border-color=${color2}/" "$MAKO_CONFIG"
sed -i "s/^text-color.*/text-color=${color5}/" "$MAKO_CONFIG"
sed -i "s/^background-color.*/background-color=${background}/" "$MAKO_CONFIG"
makoctl reload



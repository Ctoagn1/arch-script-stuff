

#!/bin/bash

WAL_COLORS="$HOME/.cache/wal/colors.sh"
THEME_CONFIG="$HOME/.config/Vencord/themes/system24.theme.css"

[[ -f $WAL_COLORS ]] && source "$WAL_COLORS"
for i in {1..5}; do
  MODULATE=$((100 - ${i} * 5))
  COLOR_VAL=$(magick -depth 8 xc:"$color1" -modulate "$MODULATE" -format "#%[hex:u.p{0,0}]" info:)
  sed -i "s/^    --red-${i}:.*/    --red-${i}: ${COLOR_VAL};/" "$THEME_CONFIG"
done

for i in {1..5}; do
  MODULATE=$((100 - ${i} * 5))
  COLOR_VAL=$(magick -depth 8 xc:"$color2" -modulate "$MODULATE" -format "#%[hex:u.p{0,0}]" info:)
  sed -i "s/^    --green-${i}:.*/    --green-${i}: ${COLOR_VAL};/" "$THEME_CONFIG"
done

for i in {1..5}; do
  MODULATE=$((100 - ${i} * 5))
  COLOR_VAL=$(magick -depth 8 xc:"$color3" -modulate "$MODULATE" -format "#%[hex:u.p{0,0}]" info:)
  sed -i "s/^    --blue-${i}:.*/    --blue-${i}: ${COLOR_VAL};/" "$THEME_CONFIG"
done


for i in {1..5}; do
  MODUCLATE=$((100 - ${i} * 5))
  COLOR_VAL=$(magick -depth 8 xc:"$color4" -modulate "$MODULATE" -format "#%[hex:u.p{0,0}]" info:)
  sed -i "s/^    --yellow-${i}:.*/    --yellow-${i}: ${COLOR_VAL};/" "$THEME_CONFIG"
done

for i in {1..5}; do
  MODULATE=$((100 - ${i} * 5))
  COLOR_VAL=$(magick -depth 8 xc:"$color5" -modulate "$MODULATE" -format "#%[hex:u.p{0,0}]" info:)
  sed -i "s/^    --purple-${i}:.*/    --purple-${i}: ${COLOR_VAL};/" "$THEME_CONFIG"
done

for i in {1..5}; do
  MODULATE=$((100 - ${i} * 5))
  COLOR_VAL=$(magick -depth 8 xc:"$foreground" -modulate "$MODULATE" -format "#%[hex:u.p{0,0}]" info:)
  sed -i "s/^    --text-${i}:.*/    --text-${i}: ${COLOR_VAL};/" "$THEME_CONFIG"
done


for i in {4..1..-1}; do
  MODULATE=$((120 + ${i} * 4))
  COLOR_VAL=$(magick -depth 8 xc:"$background" -modulate "$MODULATE" -format "#%[hex:u.p{0,0}]" info:)
  sed -i "s/^    --bg-${i}:.*/    --bg-${i}: ${COLOR_VAL};/" "$THEME_CONFIG"
done
 COLOR_VAL=$(magick -depth 8 xc:"$color9" -modulate 154 -format "#%[hex:u.p{0,0}]" info:)
sed -i "s/^    --hover:.*/    --hover: ${COLOR_VAL}1a;/" "$THEME_CONFIG"
sed -i "s/^    --active:.*/    --active: ${COLOR_VAL}33;/" "$THEME_CONFIG"
sed -i "s/^    --active-2:.*/    --active-2: ${COLOR_VAL}4d;/" "$THEME_CONFIG"





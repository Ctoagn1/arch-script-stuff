#!/bin/bash
batteryfile=/sys/class/power_supply/BAT1/status
oldstatus="Discharging"
while true; do 
  chargestatus=$(cat "$batteryfile")
  if [ "$oldstatus" != "$chargestatus" ]; then

  if [ "$chargestatus" = 'Charging' ]; then
    notify-send "Charging!"
  fi
  if [ "$chargestatus" = 'Discharging' ]; then
    notify-send "Discharging!"
  fi 
  if [ "$chargestatus" = 'Full' ]; then
    notify-send "Full!"
  fi


  fi
  oldstatus="$chargestatus"
  sleep 2
done

  
  


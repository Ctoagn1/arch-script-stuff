#!/bin/bash
batterystatus=/sys/class/power_supply/BAT1/capacity
while true; do 
  capacity=$(cat "$batterystatus")
  if [ "$capacity" -le "10" ]; then
    notify-send "Low battery!"
    sleep 600
  fi 
  sleep 30
done
  

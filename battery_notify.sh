#!/bin/bash

BATTERY_PATH="/sys/class/power_supply/BAT0/capacity"
STATUS_PATH="/sys/class/power_supply/BAT0/status"

if [ -f "$BATTERY_PATH" ] && [ -f "$STATUS_PATH" ]; then
  percentage=$(cat "$BATTERY_PATH")
  status=$(cat "$STATUS_PATH")
  
  if [ "$percentage" -eq 100 ] && [ "$status" = "Full" ]; then
    DISPLAY=:0 DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/$(id -u)/bus notify-send "Battery Full" "Battery is fully charged (100%)"
    
    paplay /usr/share/sounds/freedesktop/stereo/complete.oga
  fi
fi

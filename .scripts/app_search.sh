#!/bin/sh

apps=$(find /usr/share/applications -maxdepth 1 -type f -name "*.desktop" -exec basename {} .desktop \; | sort)

chosen=$(echo "$apps" | dmenu -p "Search applications:")

if [ -n "$chosen" ]; then
  "$chosen"
fi

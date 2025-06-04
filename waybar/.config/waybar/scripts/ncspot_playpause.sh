#!/bin/bash

PLAYER="ncspot"

status=$(playerctl --player=$PLAYER status 2>/dev/null)

if [[ -z "$status" || "$status" == *"No players found"* ]]; then
    # Player not found or song is stopped.
    echo '{"text": "", "class": "stopped"}'
    exit 0
fi

if [[ "$status" == "Playing" ]]; then
  echo '{"text":"", "class":"playing"}'
else
  echo '{"text":"", "class":"paused"}'
fi

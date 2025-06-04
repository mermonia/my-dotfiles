#!/bin/bash

PLAYER="ncspot"

status=$(playerctl --player="$PLAYER" status 2>/dev/null)

if [[ -z "$status" || "$status" == *"No players found"* ]]; then
    # Player not found, exit with no song.
    echo '{"text": " No songs currently playing", "class": "stopped"}'
    exit 0
fi

artist=$(playerctl --player="$PLAYER" metadata artist 2>/dev/null)
title=$(playerctl --player="$PLAYER" metadata title 2>/dev/null)

# Truncate if too long
max_artist_length=15
max_title_length=25

if [[ ${#artist} -gt $max_artist_length ]]; then
    artist="${artist:0:$max_artist_length}..."
fi

if [[ ${#title} -gt $max_title_length ]]; then
    title="${title:0:$max_title_length}..."
fi

display="$artist - $title"


echo "{\"text\":\" $display\", \"class\":\"$status\"}"

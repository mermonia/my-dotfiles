#!/bin/bash

PLAYER="ncspot"

status=$(playerctl --player="$PLAYER" status 2>/dev/null)

if [[ -z "$status" || "$status" == *"No players found"* ]]; then
    # Player not found, exit with no song.
    echo '{"text": "  No songs currently playing", "class": "stopped"}'
    exit 0
fi

artist=$(playerctl --player="$PLAYER" metadata artist 2>/dev/null)
title=$(playerctl --player="$PLAYER" metadata title 2>/dev/null)

# Truncate if too long
max_artist_length=15
max_title_length=20

if [[ ${#artist} -gt $max_artist_length ]]; then
    short_artist="${artist:0:$max_artist_length}..."
else
    short_artist=$artist
fi

if [[ ${#title} -gt $max_title_length ]]; then
    short_title="${title:0:$max_title_length}..."
else
    short_title=$title
fi

short_display="$short_artist - $short_title"
display="$artist - $title"


echo "{\"text\":\" $short_display\", \"class\":\"$status\", \"tooltip\":\"$display\"}"

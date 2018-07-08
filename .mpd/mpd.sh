#!/bin/sh

# Teminate already running mpd instances
mpd --kill >/dev/null 2>&1 &

# Wait until all processes have been shut down
while pgrep -u $UID -x mpd >/dev/null 2>&1; do sleep 1; done

mpd >/dev/null 2>&1 &

# vim:fenc=utf-8:ft=sh:

#!/bin/sh

# Teminate already running mpd instances
killall ympd >/dev/null 2>&1 &

# Wait until all processes have been shut down
while pgrep -u $UID -x ympd >/dev/null 2>&1; do sleep 1; done

# Start ympd and try connecting mpd
ympd \
    --host 10.0.6.10 \
    --port 6600 \
    --user wandsas \
    --mpdpass hackme \
    --webport 8081 >/dev/null 2>&1 &

# vim:fenc=utf-8:ft=sh:

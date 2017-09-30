#!/bin/sh

killall -q mpd
while pgrep -u $UID -x mpd >/dev/null; do sleep 1; done

killall -q ympd
while pgrep -u $UID -x ympd >/dev/null; do sleep 1; done

mpd &

ympd \
    --host z800.gnu.local \
    --port 6600 \
    --webport 8080 \
    --user wandsas &

echo "mpd launched..."

# -*- mode: sh -*-
# vim: fenc=utf-8 ft=sh

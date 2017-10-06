#!/bin/sh

killall -q mpd
while pgrep -u $UID -x mpd >/dev/null; do sleep 1; done


mpd &

# -*- mode: sh
# vim: fenc=utf-8 ft=sh

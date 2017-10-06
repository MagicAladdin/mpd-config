#!/bin/sh

killall -q ympd
while pgrep -u $UID -x ympd >/dev/null; do sleep 1; done

killall -q mpd
while pgrep -u $UID -x mpd >/dev/null; do sleep 1; done


mpd &

ympd --host z800.gnu.local --user wandsas &

# -*- mode: sh
# vim: fenc=utf-8 ft=sh

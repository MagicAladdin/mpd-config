#!/bin/sh

killall -q mpd
while pgrep -u $UID -x mpd >/dev/null; do sleep 1; done

mpd &

# -*- mode: sh -*-
# vim: fenc=utf-8 ft=sh
#!/bin/sh

killall -q ympd
while pgrep -u $UID -x ympd >/dev/null; do sleep 1; done

ympd \
    --host z800.gnu.local \
    --port 6600 \
    --webport 8080 \
    --user wandsas &

# -*- mode: sh -*-
# vim: fenc=utf-8 ft=sh

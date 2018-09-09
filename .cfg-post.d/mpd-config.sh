#!/bin/bash

#
# Install or update youtube-dl
#
if [[ -f "/usr/local/bin/youtube-dl" ]]; then
	youtube-dl -U
else
	curl -fsSL https://yt-dl.org/downloads/latest/youtube-dl \
		--create-dirs -o /usr/local/bin/youtube-dl
	chmod a+rx /usr/local/bin/youtube-dl
fi

# vim:fenc=utf-8:ft=sh:

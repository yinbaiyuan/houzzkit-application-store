#!/bin/sh
set -eu
dir=/var/data/f1-standalone-mvp
[ ! -L "$dir" ]
if [ ! -d "$dir" ]; then
    umask 077
    mkdir "$dir"
    chown 10001:10001 "$dir"
fi
[ "$(stat -c '%u:%g:%a' "$dir")" = '10001:10001:700' ]

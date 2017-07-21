#!/usr/bin/env sh

if [ ! -d /media ]; then mkdir -p /media; fi
if [ ! -f /media/hosts ]; then touch /media/hosts; fi

case "$1" in
    dnsmasq)
        exec "$@"
    ;;
    *)
        exec "$@"
    ;;
esac

#!/bin/bash

set -e

CONFIG_DIR=/etc/transmission-daemon
SETTINGS=$CONFIG_DIR/settings.json
TRANSMISSION=/usr/bin/transmission-daemon

exec setuser debian-transmission $TRANSMISSION -f --no-portmap --config-dir $CONFIG_DIR --logfile /dev/stdout --log-info

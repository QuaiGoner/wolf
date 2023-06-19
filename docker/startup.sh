#!/bin/bash
set -e

source /opt/gow/bash-lib/utils.sh

gow_log "Starting pulseaudio"
gow_log "Add root to pulse group"
adduser root pulse-access
gow_log "Removing all files from $HOME/.config/pulse"
mkdir -p "$HOME/.config/pulse"
rm -rf "$HOME/.config/pulse/*"
exec pulseaudio --log-level=2 --daemonize --system --disallow-exit --disallow-module-loading #--log-target=stderr -v

gow_log "Starting Wolf"
exec /wolf/wolf
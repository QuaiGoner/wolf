#!/bin/bash
set -e

source /opt/gow/bash-lib/utils.sh

gow_log "Starting pulseaudio"
exec /opt/gow/run-pulse.sh

gow_log "Starting Wolf"
exec /wolf/wolf
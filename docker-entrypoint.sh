#!/bin/sh

chown -R "$PUID":"$PGID" "$APP_DIR"

umask "$UMASK"

$CUSTOMARGS
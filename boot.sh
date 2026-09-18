#!/bin/bash
set -e
PORT="${PORT:-8080}"
exec /usr/bin/ttyd --port "$PORT" --interface 0.0.0.0 --writable tmux new -A -s main

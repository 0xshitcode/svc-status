#!/bin/bash
set -e
PORT="${PORT:-8080}"
exec /usr/local/bin/healthd --port "$PORT" --interface 0.0.0.0 bash
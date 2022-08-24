#!/bin/bash
set -e

# Remove potentially pre-existing server.pid for Rails.
rm -f /opt/app/tmp/pids/server.pid

# Then exec the containers main process (what's set as CMD in the Dockerfile).
exec "$@"

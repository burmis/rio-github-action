#!/bin/sh

set -e

echo "Deploying with Rio..."

env

if [ -f "$RIO_CONFIG" ]; then
    source $RIO_CONFIG
fi

echo "Command arguments = $*"

sh -c "/usr/local/bin/rio $*"
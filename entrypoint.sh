#!/bin/sh

set -e

echo "Deploying with Rio..."

env

echo "Contents of Kubernetes config..."
if [ -f "$KUBECONFIG" ]; then
    cat $KUBECONFIG
else
    echo "NO KUBERNETES CONFIG FILE FOUND IN ENVIRONMENT, PLEASE SPECIFY WITH --kubeconfig argument"
fi

echo "Command arguments = $*"

/usr/local/bin/rio $*
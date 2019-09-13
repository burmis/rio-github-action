# rio-github-action

A GitHub Action you can use to publish application to Kubernetes with Rio from Rancher Labs.

This container provides `rio` as well as `kubectl`.

# Pre-requisites

1) A Kubernetes cluster is setup with at least 3GB of RAM (as required by Rio)
2) Kubernetes credentials are provided
2) `rio install` has been run successfully (Check that all rio services are running with `kubectl get po -n rio-system`)

# Usage

The entrypoint to this container is `/usr/local/bin/rio`. All arguments are passed on to it so you can run any standard rio command.

#!/usr/bin/env bash

set -euo pipefail
IFS=$'\n\t'

run_unit_test() {
    echo "Running unit tests: 'make test'"
    make test
}

# Run unit tests
run_unit_test

# Get deps
echo "Running 'make deps'"
make deps

# Build packages to make sure they can be compiled
echo "Running 'make build'"
make build-service

# TODO: add parallel builds for every make target that has anything to do with testing.

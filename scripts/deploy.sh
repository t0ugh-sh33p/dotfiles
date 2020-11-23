#!/bin/bash

set -u
set -e


if [[ -e /etc/arch-release ]]; then
    echo "deploy..."
    exit 0
else
    echo "unsupported os..."
    exit 1
fi

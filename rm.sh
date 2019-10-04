#!/usr/bin/env bash

RM_BIN_PATH=$(command -v rm)

echo "Delete: rm $* Sure?"
read -r ans
if [ "${ans:-N}" != yes ]; then
    exit 1
fi

$RM_BIN_PATH "$@"

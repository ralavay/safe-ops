#!/bin/env/bash

APP_BIN_PATH=$(command -v "$CMD")

function confirm() {
    echo "--------------------------------------------------------------------------------"
    echo "- Current cluster:    $(kubectl config current-context)"
    echo "--------------------------------------------------------------------------------"
    echo "Are you sure? (Only 'yes' will be accepted to approve)"
    read -r ans
    if [ "${ans:-N}" != yes ]; then
        exit 1;
    fi
}

if echo "/$1" | grep -q "-"; then
    confirm;
elif echo "$SAFE_OPS" | grep -qv "$1"; then
    confirm;
fi

"$APP_BIN_PATH" "$@"

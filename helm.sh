#!/usr/bin/env bash

HELM_BIN_PATH=$(command -v helm)
SAFE_OPS="completion diff fetch get history ls list lint test status version"

if echo "$SAFE_OPS" | grep -qv "$1"; then
    echo "--------------------------------------------------------------------------------"
    echo "- K8s cluster:    $(kubectl config current-context)"
    echo "--------------------------------------------------------------------------------"
    echo "Are you sure? (Only 'yes' will be accepted to approve)"
    read -r ans
    if [ "${ans:-N}" != yes ]; then
        exit 1
    fi
fi

$HELM_BIN_PATH "$@"

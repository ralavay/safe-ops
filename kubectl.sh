#!/usr/bin/env bash

KUBECTL_BIN_PATH=$(command -v kubectl)
SAFE_OPS="get describe version"

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

$KUBECTL_BIN_PATH "$@"

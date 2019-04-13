#!/usr/bin/env bash

KUBECTL_BIN_PATH=$(command -v kubectl)
DANGERROUS_OPS="del delete exec edit apply create patch replace convert proxy attach cp auth lable drain taint uncordon cordon rollout scale autoscale run set"

if echo "$DANGERROUS_OPS" | grep -q "$1"; then
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

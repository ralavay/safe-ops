#!/usr/bin/env bash

CMD="kubectl"
SAFE_OPS="get describe version"

DIR=$(dirname "$0")
source $DIR/confirm_k8s.sh

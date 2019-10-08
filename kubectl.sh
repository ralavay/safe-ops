#!/usr/bin/env bash

CMD="kubectl"
SAFE_OPS="get describe version"

DIR=$(dirname "$0")

# shellcheck source=confirm_k8s.sh
source "${DIR}/confirm_k8s.sh"

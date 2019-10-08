#!/usr/bin/env bash

CMD="helm"
SAFE_OPS="completion diff fetch get history ls list lint test status version"

DIR=$(dirname "$0")
source "$DIR"/confirm_k8s.sh

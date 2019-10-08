#!/usr/bin/env bash

CMD="helm"
SAFE_OPS="completion diff fetch get history ls list lint test status version"

source ./confirm_k8s.sh

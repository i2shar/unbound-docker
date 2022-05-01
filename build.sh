#!/usr/bin/env bash
set -Eeuo pipefail

THIS_DIR=$(cd "$(dirname "$0")" && pwd )
cd "$THIS_DIR" || exit

docker build -t unbound .
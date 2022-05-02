#!/usr/bin/env bash
set -Eeuo pipefail

THIS_DIR=$(cd "$(dirname "$0")" && pwd )
cd "$THIS_DIR" || exit

# Normal run
docker run -it --rm --name unbound --dns 1.1.1.1 -p 5335:5335/udp -p 5335:5335/tcp -v "$PWD"/unbound.conf:/etc/unbound/unbound.conf.d/unbound.conf unbound

# Run on privileged port 53 with root
#sudo docker run -it --rm --name unbound --dns 1.1.1.1 -p 53:5335/udp -p 53:5335/tcp -v "$PWD"/unbound.conf:/etc/unbound/unbound.conf.d/unbound.conf unbound
#!/usr/bin/env bash

service unbound start

tail -F /var/log/unbound/unbound.log
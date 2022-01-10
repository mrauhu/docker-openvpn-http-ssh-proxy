#!/bin/sh

mkdir -p /tmp/privoxy
envsubst < /etc/privoxy/config.txt > /tmp/privoxy/config

# start
privoxy --no-daemon /tmp/privoxy/config

#!/usr/bin/env sh

ssh-keygen -A

/usr/sbin/sshd -D -e

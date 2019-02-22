#!/bin/bash


# add user to group docker

groupadd docker && usermod -G docker $(whoami)
rm -rf /var/lib/docker/
#dockerd --enable-secrets=false -D -H unix:///var/run/docker.sock --oom-score-adjust=10 --init --storage-opt dm.override_udev_sync_check=false
ln -s /usr/libexec/docker/docker-runc-current /usr/bin/docker-runc
dockerd --enable-secrets=false -H unix:///var/run/docker.sock --oom-score-adjust=10 --storage-opt dm.override_udev_sync_check=true
#dockerd --help

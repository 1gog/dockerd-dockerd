#!/bin/bash


docker run -it --rm --name dockerd -v $(pwd)/.:/opt/run  --privileged -v $(pwd)/daemon.json:/etc/docker/daemon.json --cap-add=ALL -u 0 1gog/dockerd:latest

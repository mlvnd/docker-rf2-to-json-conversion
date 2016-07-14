#!/bin/bash
uid="$(id -u)"
gid="$(id -g)"
docker run --rm -it --user ${uid}:${gid} -v $(pwd)/data:/data rf2-to-json $@

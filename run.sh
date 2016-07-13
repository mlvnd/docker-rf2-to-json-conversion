#!/bin/bash
docker run --rm -it -v $(pwd)/data:/data rf2-to-json $@

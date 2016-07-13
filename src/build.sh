#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

if [ ! -d ./rf2-to-json-conversion ]
then
    git clone https://github.com/termMed/rf2-to-json-conversion.git
else
    pushd rf2-to-json-conversion
    git pull origin master
    popd
fi
docker build -t rf2-to-json .

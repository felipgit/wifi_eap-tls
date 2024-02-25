#!/usr/bin/env sh

DOCKERCOMPOSEFILE=${PWD}/compose.yml
if [ ! -f "${DOCKERCOMPOSEFILE}" ]; then
    /usr/bin/printf "Run from directory where compose.yml resides.\n\n"
    exit 1
fi

docker compose exec --user="0" radiusd sh
docker compose restart radiusd

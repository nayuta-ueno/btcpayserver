#!/bin/bash

elementsd_container_id="$(docker ps -q --filter label=com.docker.compose.project=btcpayservertests --filter label=com.docker.compose.service=elementsd-liquid)"
docker exec -ti "$elementsd_container_id" elements-cli -datadir="/data" "$@"

#!/bin/bash

docker rm -f vsu_bot_container 2>/dev/null || true

docker rmi vsu_bot 2>/dev/null || true

docker build -t vsu_bot .
docker run -d --rm --name vsu_bot_container  vsu_bot


#!/bin/bash
set -e

sudo apt update
sudo apt upgrade -y
sudo apt install -y docker.io

sudo usermod -aG docker $USER

docker stop presearch-node || true
docker rm presearch-node || true

docker stop presearch-auto-updater || true
docker rm presearch-auto-updater || true

docker run -d \
  --name presearch-auto-updater \
  --restart=unless-stopped \
  -v /var/run/docker.sock:/var/run/docker.sock \
  presearch/auto-updater \
  --cleanup \
  --interval 900 \
  presearch-auto-updater presearch-node

docker pull presearch/node

docker run -dt \
  --name presearch-node \
  --restart=unless-stopped \
  -v presearch-node-storage:/app/node \
  -e REGISTRATION_CODE=YOUR_REGISTRATION_CODE \
  presearch/node

docker logs -f presearch-node

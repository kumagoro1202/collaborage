#!/bin/bash
set -euo pipefail

set +u
source ~/.bash_profile
set -u

export PATH="/usr/local/bin:$PATH"

# start docker-compose
cd /home/centos/nop/docker/${NOP_APP_ID}
docker-compose start

#!/usr/bin/env bash

# Tests.

hostname=$(hostname -f)
docker run -ti --rm \
  --name nodelib-test \
  --domainname nodelib-test.$hostname \
  --hostname nodelib-test \
  -v $PWD:/home/treebox/project/nodelib \
  dotmpe/treebox:dev \
  sudo -Hu treebox bash -c "cd ~/project/nodelib && npm test"

# Don't run as '--user root' b/c of runit & other baseimage stuff..
# Because of 'sudo' --workdir will have no effect either.

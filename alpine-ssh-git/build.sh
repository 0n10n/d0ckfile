#!/usr/bin/bash

# docker build -f Dockerfile.unsafe -t d0ckfile:unsafe .

DOCKER_BUILDKIT=1 docker build --secret id=mykey,src=./id_rsa --progress=plain --no-cache -f Dockerfile.buildit -t d0ckfile:safe  .
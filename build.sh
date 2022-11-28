#!/bin/sh

build_push(){
  docker buildx build  --platform ${ARCHS} -t ${REGISTRY}/${NAME}:latest  --output=type=registry,registry.insecure=true --push .
}


REGISTRY=registry.alexstorm.solenopsys.org
NAME=alexstorm-hsm-http-adapter
ARCHS="linux/amd64,linux/arm64"

build_push






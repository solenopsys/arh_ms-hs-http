#!/bin/sh

build_push(){
  nerdctl build --platform=${ARCHS} --output type=image,name=${REGISTRY}/${NAME}:latest,push=true .
}


REGISTRY=registry.klogsolenopsys.org
NAME=alexstorm-hsm-http-adapter
ARCHS="linux/amd64,linux/arm64"

build_push






#!/bin/bash

# Copyright (c) 2021, 2021, Oracle and/or its affiliates.
# Contributor: Trong Nhan Mai

TARGET="nodegoat"
IMAGE_VER="v1"

REPO="OWASP/NodeGoat"
REPO_VER="v1.3"

WORKDIR="./images"

# Clone and build images
git clone --depth 1 https://github.com/${REPO}.git -b ${REPO_VER} ${WORKDIR}/${TARGET}

cp -r app_docker/express-instrument-app ${WORKDIR}/${TARGET}
cp app_docker/${TARGET}/* ${WORKDIR}/${TARGET}

docker build -t ${TARGET}:${IMAGE_VER} ${WORKDIR}/${TARGET}


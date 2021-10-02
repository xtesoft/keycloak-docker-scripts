#!/bin/bash
export KUSER="admin"
export KPASS="Welcome123$"

export CONTAINER_NAME=keycloak-mined
export CONTAINER_IMAGE="quay.io/keycloak/keycloak"
export POD_NET=network-keycloak

docker run --restart unless-stopped  -d -p 8080:8080 -p 8443:8443  --net=$POD_NET --name=$CONTAINER_NAME $CONTAINER_IMAGE


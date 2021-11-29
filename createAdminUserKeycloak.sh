#!/bin/bash
export KUSER="admin"
export KPASS="Welcome123$"

export CONTAINER_NAME=keycloak-mined
export CONTAINER_IMAGE=quay.io/keycloak/keycloak


docker exec $CONTAINER_NAME /opt/jboss/keycloak/bin/add-user-keycloak.sh -u $KUSER -p $KPASS

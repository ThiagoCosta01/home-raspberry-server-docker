#!/bin/bash

# Criar rede externa se não existir
NETWORK_NAME=home-server
if ! docker network ls | grep -q "$NETWORK_NAME"; then
    echo "Criando rede externa $NETWORK_NAME..."
    docker network create $NETWORK_NAME
else
    echo "Rede $NETWORK_NAME já existe."
fi


#!/bin/bash

export DEBIAN_FRONTEND=noninteractive
apt-get update -y

# Install node and npm
apt-get install npm -y
npm install -g n
n 16

# TODO: Extensions needed
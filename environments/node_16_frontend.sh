#!/bin/bash

export DEBIAN_FRONTEND=noninteractive
apt-get update -y

# Install node and npm
apt-get install npm -y
npm install -g n
n 16

# These are used by frontend testing frameworks (pupeeter, jest, etc)
apt-get install -y libgconf-2-4 libatk1.0-0 libatk-bridge2.0-0 libgdk-pixbuf2.0-0 libgtk-3-0 libgbm-dev libnss3-dev libxss-dev
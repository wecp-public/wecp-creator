#!/bin/bash

export DEBIAN_FRONTEND=noninteractive
apt-get update -y

# install java (latest version)
apt-get install openjdk-17-jdk -y

# Install maven from official Apache repository
MAVEN_VERSION="3.9.4"
wget https://dlcdn.apache.org/maven/maven-3/3.9.4/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz
tar -xzf "apache-maven-$MAVEN_VERSION-bin.tar.gz" -C /opt
rm -rf "apache-maven-$MAVEN_VERSION-bin.tar.gz"
ln -s "/opt/apache-maven-$MAVEN_VERSION/bin/mvn" /usr/bin/mvn

# For intellisense
code-server --install-extension redhat.java

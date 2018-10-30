#!/usr/bin/env bash
echo "Installing Consul..."
# Install prerequisites.
apt-get install unzip &>/dev/null
wget https://releases.hashicorp.com/consul/1.3.0/consul_1.3.0_linux_amd64.zip
unzip consul_1.3.0_linux_amd64.zip -d /usr/local/bin
rm -rf consul_1.3.0_linux_amd64.zip

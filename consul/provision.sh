#!/usr/bin/env bash
echo "## Prepare to Install Consul ##"
echo -e "\nInstalling Unzip.."
sudo apt-get -y install unzip
echo -e "\nDownloading Consul 1.3.0, consul_1.3.0_linux_amd64.zip"
wget https://releases.hashicorp.com/consul/1.3.0/consul_1.3.0_linux_amd64.zip
sudo unzip consul_1.3.0_linux_amd64.zip -d /usr/local/bin
rm -rf consul_1.3.0_linux_amd64.zip
sudo service consul restart

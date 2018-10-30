#!/usr/bin/env bash
echo "## Prepare to Install Consul ##"

# Install prerequisites.
package_install() {
	# Install unzip
	echo -e "\nInstalling Unzip.."
	apt-get -y install unzip
	# Install Consul Node..
	if [[ ! -f "/usr/local/bin/consul" ]]; then
		echo -e "\nDownloading Consul 1.3.0, consul_1.3.0_linux_amd64.zip"
		wget https://releases.hashicorp.com/consul/1.3.0/consul_1.3.0_linux_amd64.zip
		unzip consul_1.3.0_linux_amd64.zip -d /usr/local/bin
		rm -rf consul_1.3.0_linux_amd64.zip
	else
		echo "Consul already installed."
	fi
}

configure() {
	service consul restart
}

package_install
configure
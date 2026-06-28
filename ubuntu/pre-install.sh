#!/bin/sh

# Set non-interactive mode for apt-get
export DEBIAN_FRONTEND=noninteractive

#upgrade the packages
apt-get update && apt-get upgrade -y

#install packages
apt-get install -y git lsb-release

#get the install script
cd /usr/src && git clone --depth 1 https://github.com/artmanyp/fusionpbx-install.sh.git

#change the working directory
cd /usr/src/fusionpbx-install.sh/ubuntu

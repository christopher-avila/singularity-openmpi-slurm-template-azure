#!/bin/sh

# Basic info
date > /tmp/azuredeploy.log.$$ 2>&1
whoami >> /tmp/azuredeploy.log.$$ 2>&1
echo $@ >> /tmp/azuredeploy.log.$$ 2>&1

#install singularity
sudo apt-get update >> /tmp/azuredeploy.log.$$ 2>&1
sudo apt-get install build-essential openmpi-bin=1.10.2-8ubuntu1 -y >> /tmp/azuredeploy.log.$$ 2>&1

#install singularity
TEMPLATE_BASE=$1
wget $TEMPLATE_BASE/install-singularity.sh
sudo chmod +x install-singularity.sh
./install-singularity.sh  >> /tmp/azuredeploy.log.$$ 2>&1


exit 0

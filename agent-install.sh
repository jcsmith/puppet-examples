#!/bin/bash

wget https://apt.puppetlabs.com/puppetlabs-release-trusty.deb
sudo dpkg -i puppetlabs-release-trusty.deb
sudo apt-get update

sudo apt-get install puppet
sudo sed -i 's/START=no/START=yes/' /etc/default/puppet

#!/bin/sh

apt-get update
apt-get -y install lsb_release
apt-get -y install wget

PACKAGE=puppetlabs-release-wheezy.deb

wget https://apt.puppetlabs.com/$PACKAGE -O /tmp/$PACKAGE

dpkg -i /tmp/$PACKAGE

apt-get update
apt-get -y install puppet

rm /tmp/$PACKAGE
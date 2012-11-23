#!/bin/bash

# change eth0 and eth1 for the new mac address
vi /etc/udev/rules.d/70-persistent-net.rules

# Edit hostname
vi /etc/hostname

# Set host loopback 
vi /etc/hosts

# Set the static network address for Host-Only interface 
vi /etc/network/interfaces

# reboot
shutdown -r now

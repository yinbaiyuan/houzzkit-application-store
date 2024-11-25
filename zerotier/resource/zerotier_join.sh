#!/bin/bash
echo "==============="
echo $1
zerotier-cli join $1
echo "-----------------------------"
zerotier-cli listnetworks

echo $1 >> /var/tmp/out.log
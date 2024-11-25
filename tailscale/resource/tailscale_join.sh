#!/bin/sh
echo "==============="
echo $1
tailscale login --authkey=$1
echo "-----------------------------"
tailscale status

echo $1 >> /var/tmp/out.log
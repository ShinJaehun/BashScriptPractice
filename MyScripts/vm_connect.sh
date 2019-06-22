#!/bin/bash

if [ -z "$1" ]
then
  echo "vm guest"
fi

mac_address=$(virsh dumpxml "$1" | grep "mac address" | awk -F\' '{ print $2 }')
ip_address=$(ip neigh | grep "${mac_address}" | awk '{ print $1 }')
ssh administrator@"${ip_address}"

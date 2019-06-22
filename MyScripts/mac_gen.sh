#!/bin/bash

macs=()
hexs="0123456789abcedf"
for i in {1..6}
do
  macs[$i]=${hexs:$(($RANDOM % 16)):1}
done

virt_mac=${macs[1]}${macs[2]}:${macs[3]}${macs[4]}:${macs[5]}${macs[6]}
echo $virt_mac

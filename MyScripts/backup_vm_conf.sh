#!/bin/bash

BACKUPDIR="Backup/virtual_machines/2019/conf"

list_all_vms() {
  virsh list --all | awk 'NR > 2 && NF { print $2 }' 
}

list_all_vms | while read VM; do
  virsh dumpxml "$VM" > "$BACKUPDIR"/"$VM".xml
done

list_all_networks() {
  virsh net-list --all | awk 'NR > 2 && NF { print $1 }'
}

list_all_networks | while read NETWORK; do
  virsh net-dumpxml "$NETWORK" > "$BACKUPDIR"/"$NETWORK".xml
done

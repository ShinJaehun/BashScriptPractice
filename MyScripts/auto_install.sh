#!/bin/bash

#virt-clone --original vm1803 \
#	--name vm1806 \
#	--file /home/shinjaehun/virtual_machines/vm1806.img

function gen_mac ()
{
  macs=()
  hexs="0123456789abcedf"
  for i in {1..6}
  do
    macs[$i]=${hexs:$(($RANDOM % 16)):1}
  done

  virt_mac=${macs[1]}${macs[2]}:${macs[3]}${macs[4]}:${macs[5]}${macs[6]}
  # echo $virt_mac
}


echo -n "Enter hostname: "
read hostname

#hostname 중복 확인

echo -n "Enter IP address: "
read ipaddress
#ipaddress 중복 확인

gen_mac
#echo $virt_mac
#virt_mac=ad:a3:a8
echo "Generate MAC address.."

ssh administrator@172.30.0.199 "grep $virt_mac /etc/dnsmasq.d/shinjaehun.com"
grep_result=$?

if [ $grep_result == 1 ]; then
  echo "Success! MAC address is  $virt_mac"
else
  echo "Failed! Mac accress is duplicated." 
  gen_mac
  echo $virt_mac
fi

echo "Checking TFTP Server's status..."
ssh administrator@172.30.0.199 "ss -lunp | grep :69"
is_running=$?

if [ $is_running == 0 ]; then
  echo "Success! TFTP Server is running..."
else
  echo "Failed! TFTP Server has stopped..."
  exit
fi

echo "Adding new host information..."
ssh -t administrator@172.30.0.199 "sudo echo 52:54:00:$virt_mac,$ipaddress,$hostname >> /home/administrator/dhcp_hosts"

echo "Restarting dnsmasq..."
ssh -t administrator@172.30.0.199 "sudo systemctl restart dnsmasq"

echo "Generating new virtual guest..."

virt-install --name $hostname \
	--memory 1024 \
	--os-type=linux \
	--os-variant ubuntu18.04 \
	--disk path=/home/shinjaehun/virtual_machines/$hostname.img,size=10 \
	--mac=52:54:00:$virt_mac \
	--pxe \
	--network network=internal1

#	--cdrom=/home/shinjaehun/ubuntu-18.04.1-server-amd64.iso \

#mac_address=$(virsh dumpxml vm1806 | grep "mac address" | awk -F\' '{ print $2 }')
#hostname=vm1806.shinjaehun.com
#ipaddress=172.30.0.110
#
#echo $mac_address
#echo $hostname
#echo $ipaddress


#ssh administrator@172.30.0.199 "echo dhcp-host=$mac_address,$hostname,$ipaddress >> /etc/dnsmasq.d/shinjaehun.com"


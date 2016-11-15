!#/bin/bash
#this scripts will be executed inner a container
route add -net 192.168.100.0/24 gw 192.168.0.201
#192.168.0.201 is outside wlan0/eth0 ip address

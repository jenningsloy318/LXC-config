#!/bin/bash
modprobe dummy
ip link set dummy0 up
ifconfig dummy0 192.168.100.254/24 
ip link add link dummy0 macvlan0 type macvlan mode bridge
ip link set macvlan0 up
route add -net 192.168.100.0/24  dev macvlan0
#route add -net 192.168.100.0/24 gw 192.168.100.254 dev dummy0
#route del -net 192.168.100.0/24  dev dummy0

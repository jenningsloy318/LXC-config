#!/bin/bash
ip link add link eth0 macvlan0 type macvlan mode bridge
ip link set macvlan0 up
route add -net 192.168.100.0/25 dev macvlan0
route add -host 192.168.85.175 dev macvlan0

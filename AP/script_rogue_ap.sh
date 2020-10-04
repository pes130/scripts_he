#!/bin/bash
sysctl net.ipv4.ip_forward=1

iptables -t nat -F
iptables -t nat -A POSTROUTING -s 10.0.0.0/24 -j MASQUERADE
iptables -A FORWARD -i wlan0 -o eht0 -j ACCEPT
iptables -P FORWARD ACCEPT
iptables -P INPUT ACCEPT
iptables -P OUTPUT ACCEPT

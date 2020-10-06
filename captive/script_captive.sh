#!/bin/bash
sysctl net.ipv4.ip_forward=1

iptables -t nat -F
iptables -A FORWARD -j ACCEPT
iptables -P FORWARD ACCEPT
iptables -P INPUT ACCEPT
iptables -P OUTPUT ACCEPT

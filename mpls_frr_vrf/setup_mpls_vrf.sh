#!/bin/bash

docker exec -it clab-mpls_frr_vrf-r1 sysctl -p /etc/sysctl.d/90-mpls.conf
docker exec -it clab-mpls_frr_vrf-r1 ip link add blue type vrf table 1
docker exec -it clab-mpls_frr_vrf-r1 ip link add red type vrf table 2
docker exec -it clab-mpls_frr_vrf-r1 ip link set eth2 vrf blue
docker exec -it clab-mpls_frr_vrf-r1 ip link set eth3 vrf red
docker exec -it clab-mpls_frr_vrf-r1 ip link set blue up
docker exec -it clab-mpls_frr_vrf-r1 ip link set red up

docker exec -it clab-mpls_frr_vrf-r2 sysctl -p /etc/sysctl.d/90-mpls.conf
docker exec -it clab-mpls_frr_vrf-r2 ip link add blue type vrf table 1
docker exec -it clab-mpls_frr_vrf-r2 ip link add red type vrf table 2
docker exec -it clab-mpls_frr_vrf-r2 ip link set blue up
docker exec -it clab-mpls_frr_vrf-r2 ip link set red up

docker exec -it clab-mpls_frr_vrf-r3 sysctl -p /etc/sysctl.d/90-mpls.conf
docker exec -it clab-mpls_frr_vrf-r3 ip link add blue type vrf table 1
docker exec -it clab-mpls_frr_vrf-r3 ip link add red type vrf table 2
docker exec -it clab-mpls_frr_vrf-r3 ip link set eth1 vrf blue
docker exec -it clab-mpls_frr_vrf-r3 ip link set eth3 vrf red
docker exec -it clab-mpls_frr_vrf-r3 ip link set blue up
docker exec -it clab-mpls_frr_vrf-r3 ip link set red up


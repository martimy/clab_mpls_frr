#!/bin/bash

echo "Testing Host-Router connectivity"
echo Host4
docker exec -it clab-mpls_frr_vrf-host4 ping -qc1 192.168.1.1
echo Host5
docker exec -it clab-mpls_frr_vrf-host5 ping -qc1 192.168.2.1
echo Host6
docker exec -it clab-mpls_frr_vrf-host6 ping -qc1 192.168.1.1
echo Host7
docker exec -it clab-mpls_frr_vrf-host7 ping -qc1 192.168.2.1

echo "Testing Customer-ISP connectivity"
echo R4
docker exec -it clab-mpls_frr_vrf-r4 ping -qc1 10.0.2.1
echo R5
docker exec -it clab-mpls_frr_vrf-r5 ping -qc1 10.0.3.3
echo R6
docker exec -it clab-mpls_frr_vrf-r6 ping -qc1 10.0.4.2
echo R7
docker exec -it clab-mpls_frr_vrf-r7 ping -qc1 10.0.5.4

echo "Testing Intra-ISP connectivity"
echo "R2-R1"
docker exec -it clab-mpls_frr_vrf-r2 ping -qc1 10.0.0.1
echo "R2-R3"
docker exec -it clab-mpls_frr_vrf-r2 ping -qc1 10.0.1.3

#!/bin/bash

echo "Testing Customer End-to-End connectivity"
echo "Host4 to Host5"
docker exec -it clab-mpls_frr_vrf-host4 ping -qc1 192.168.2.5
echo "Host6 to Host7"
docker exec -it clab-mpls_frr_vrf-host6 ping -qc1 192.168.2.7

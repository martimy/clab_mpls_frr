sudo clab deploy --topo mpls-frr-static.clab.yml
docker exec -it clab-mpls_frr_static-host4 ping 192.168.2.5
sudo ip netns exec clab-mpls_frr_static-r2 tshark -i eth1 -O ethernet

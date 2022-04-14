---
output: pdf_document
geometry: margin=1in
fontsize: 10pt
---

# MPLS networks implementation using FRRouting

This repository includes two MPLS implementations using [FRR](https://frrouting.org/) routers. One implementation sets the MPLS labels manually in three-router topology. In the second implementation, the labels are distributed using LDP (Label Distribution Protocol) in three-router ISP network connecting two customer routers.

![Topology 1 - Static](img/mpls_static.png){ width=8cm}

![Topology 2 - LDP](img/mpls_ldp.png){ width=9cm}


## Requirements

To use this lab, you need to install [containerlab](https://containerlab.srlinux.dev/) (I used the [script method](https://containerlab.srlinux.dev/install/#install-script) Ubuntu 20.04 VM). You also need to have basic familiarity with [Docker](https://www.docker.com/).

For troubleshooting and traffic inspection, you may also install [Wireshark](https://www.wireshark.org/) and/or Tshark in the host machine/VM.

Finally, clone this repository to your host VM:

```
git clone https://github.com/martimy/clab_mpls_frr
```

## Lab1

Use the following command to start the lab:

```
cd mpls_frr_static
sudo clab deploy --topo mpls_frr_static.clab.yml
```

To end the lab:

```
sudo clab destroy --topo mpls_frr_static.yml
```

### Try this

### Selected output

## Lab2

Use the following command to start the lab:

```
cd mpls_frr_ldp
sudo clab deploy --topo mpls_frr_ldp.clab.yml
```

To end the lab:

```
sudo clab destroy --topo mpls_frr_ldp.yml
```

### Try this


### Selected output

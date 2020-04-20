Some useful scripts. 

* `install_ubuntu_18.sh`: Install all the necessary softwares needed for me (I run it after installing the OS).

* `kexec.sh`

Install all kernel and all the modules and then restart the kernel with kexec (helpful for kernel development)

`module.sh`
===========
Unload and reload a module (helpful for kernel development)

`hyperthread.sh`
==============
Disables hyperthreading and CPU frequency scaling.

`grub.sh`
========
I use this script to set kernel parameters such as HUGE PAGE, isolcpus, IO MMU, IRQ affinity, tickless kernel and so on.

`create_patch.sh` 
===================
Useful for creating patch for Linux kernel

`parse-pcap-ip4.sh`
===================
Parses a pcap file and extracts destination IPv4 addresses.

`parse-pcap-ip6.sh`
===================
Parses a pcap file and extracts destination IPv6 addresses. We get pcap file from http://mawi.wide.ad.jp/mawi/samplepoint-F/2019/201908241400.html

`parse-bgpdump.sh`
===================
It parses BGPdump -m output file and extract routing table for each ISP. 

The obtain RIB snapshot from `http://www.routeviews.org/routeviews/` (`ftp://archive.routeviews.org/route-views.chicago/bgpdata/2019.08/RIBS/rib.20190824.2200.bz2` to be exact). Each RIB snapshot however contains routes from multiple peers (ISPs). Moreover the snapshots are in MRT format (not human headable). We extract the actual routing table from the RIB snopshot as following:

1. We use BGPdump (https://github.com/tamimcse/bgpdump) to convert the MRT file into a human readable text file. BGPdump has several output mode. Here we use output mode -m.
2. Then we use `parse-bgpdump.sh` to convert the bgpdump output file into `routes-*`. `parse-bgpdump.sh` internally uses `parse-bgpdump.py` which performs the actual conversion.

`





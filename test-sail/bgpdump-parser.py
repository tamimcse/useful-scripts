#!/usr/bin/python
#This scripts inputs BGPdump output and a peer ID and extracts routing table for the peer

import sys

prefix_set = set()
nh_dict = {}
i = 0

if len(sys.argv) != 4 :
	print "sudo python bgpdump-parser.py inputfile peer outputfile"
	print "where"
	print "inputfile  ---	Output of BGPdump -m option "
	print "peer       ---	AS ID of the peer"
	print "outputfile ---	AS ID of the peer"
	sys.exit()

bgpdump_output_file = sys.argv[1] 
target_peer_id = sys.argv[2]
outputfile = sys.argv[3]

out = open(outputfile, "w")

with open(bgpdump_output_file) as f:
    for line in f:
	arr = line.replace("\r\n", "").split("|")
        as_id = arr[4]#Extract the AS
	prefix = arr[5]#Extract the prefix
	next_hop = arr[8]

	if int(as_id) != int(target_peer_id) :
	    continue    	 

	if prefix not in prefix_set :
	    prefix_set.add(prefix)
            #Convert next-hop to a veth ID
            if next_hop not in nh_dict :
	        nh_dict[next_hop] = i
                i = i + 1
		print "number of next-hops = {0}".format(i)
	    out.write("{0}\tveth{1}\n".format(arr[5], nh_dict[next_hop]%32))
#	    out.write("{0}\t{1}\n".format(arr[5], next_hop))

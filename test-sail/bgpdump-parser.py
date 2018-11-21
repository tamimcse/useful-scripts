#This scripts reads BGPdump -m output and extracts FIBs
from subprocess import call

out = open("fib.txt", "a")

prefix_set = set()
nh_dict = {}
i = 0
filter_by = 34288

with open("rib.linx.20141217.0000") as f:
    for line in f:
	arr = line.replace("\r\n", "").split("|")
        as_id = arr[4]#Extract the AS
	prefix = arr[5]#Extract the prefix
	next_hop = arr[8]

	if int(as_id) != filter_by :
	    continue    	 

	if prefix not in prefix_set :
	    prefix_set.add(prefix)
            #Convert next-hop to a veth ID
            if next_hop not in nh_dict :
	        nh_dict[next_hop] = i
                i = i + 1
		print i
	    out.write("{0}\tveth{1}\n".format(arr[5], nh_dict[next_hop]%32))
#	    out.write("{0}\t{1}\n".format(arr[5], next_hop))

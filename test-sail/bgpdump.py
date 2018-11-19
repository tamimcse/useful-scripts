#This scripts reads actual-routes.txt and converts all the next-hops with veth0-31 
from subprocess import call

out = open("0-veth.txt", "a")

prefix_set = set()
nh_dict = {}
i = 0
with open("0.txt") as f:
    for line in f:
	arr = line.replace("\r\n", "").split("\t")
	prefix = arr[0].split("/")[0]
        next_hop = arr[1]
        if next_hop not in nh_dict :
	    nh_dict[next_hop] = i
	    print(nh_dict)
            i = i + 1
	if prefix not in prefix_set :
	    prefix_set.add(prefix)	
	    out.write("{0}\tveth{1}\n".format(arr[0], nh_dict[next_hop]))


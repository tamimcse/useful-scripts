#This scripts reads BGPdump -m output and extracts FIBs
from subprocess import call

out = open("fib.txt", "a")

prefix_set = set()
nh_dict = {}
i = 0
filter_by = 3356

with open("bgpdump-m.txt") as f:
    for line in f:
	arr = line.replace("\r\n", "").split("|")
	#4-th element contains the AS
        as_id = arr[4]
	#5-th element contains prefix and prefix length
	prefix = arr[5].split("/")[0]
	#5-th element contains the AS path
        as_path = arr[6]
	as_list = as_path.split(" ")

	if int(as_id) != filter_by :
	    continue    	 

	if len(as_list) > 1 :
	    next_hop = as_list[1]
        elif len(as_list) == 1 :
	    #The next-hop is within the AS	
	    next_hop = 0
#            print line 		
        else :
	    next_hop = -1
            print "Something went wrong"

	if prefix not in prefix_set :
	    prefix_set.add(prefix)
            #Convert next-hop to a veth ID
            if next_hop not in nh_dict :
	        nh_dict[next_hop] = i
                i = i + 1
	    out.write("{0}\tveth{1}\n".format(arr[5], nh_dict[next_hop]))

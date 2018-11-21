#!/bin/sh

#BGPdump option (-m) output file
BGP_DUMP_OUTPUT="rv2.20181105.1000"

echo "Extracting routing table of Link3 \n"
sudo python bgpdump-parser.py $BGP_DUMP_OUTPUT  3549 link3-routes

echo "Extracting routing table of View Qwest \n"
sudo python bgpdump-parser.py $BGP_DUMP_OUTPUT  18106 viewqwest-routes

echo "Extracting routing table of Zero Fail \n"
sudo python bgpdump-parser.py $BGP_DUMP_OUTPUT  40191 zerofail-routes

echo "Extracting routing table of Century Link \n"
sudo python bgpdump-parser.py $BGP_DUMP_OUTPUT  3356 CenturyLink-routes

echo "Extracting routing table of NTT America \n"
sudo python bgpdump-parser.py $BGP_DUMP_OUTPUT  2914 nttamerica-routes

echo "Extracting routing table of Tata \n"
sudo python bgpdump-parser.py $BGP_DUMP_OUTPUT  42541 fiberby-routes

echo "Extracting routing table of Comcast \n"
sudo python bgpdump-parser.py $BGP_DUMP_OUTPUT  7922 comcast-routes

echo "Extracting routing table of Hurricane Electric \n"
sudo python bgpdump-parser.py $BGP_DUMP_OUTPUT  6939 HurricaneElectric-routes

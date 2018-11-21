#!/bin/sh

#BGPdump option (-m) output file
BGP_DUMP_OUTPUT="rv2.20181105.1000"

echo "Extracting routing table of Link3 \n"
sudo python bgpdump-parser.py $BGP_DUMP_OUTPUT  3549 routes-Link3

echo "Extracting routing table of View Qwest \n"
sudo python bgpdump-parser.py $BGP_DUMP_OUTPUT  18106 routes-ViewQwest

echo "Extracting routing table of Zero Fail \n"
sudo python bgpdump-parser.py $BGP_DUMP_OUTPUT  40191 routes-ZeroFail

echo "Extracting routing table of Century Link \n"
sudo python bgpdump-parser.py $BGP_DUMP_OUTPUT  3356 routes-CenturyLink

echo "Extracting routing table of NTT America \n"
sudo python bgpdump-parser.py $BGP_DUMP_OUTPUT  2914 routes-NTTAmerica

echo "Extracting routing table of FibreBy \n"
sudo python bgpdump-parser.py $BGP_DUMP_OUTPUT  42541 routes-FibreBy

echo "Extracting routing table of Comcast \n"
sudo python bgpdump-parser.py $BGP_DUMP_OUTPUT  7922 routes-Comcast

echo "Extracting routing table of Hurricane Electric \n"
sudo python bgpdump-parser.py $BGP_DUMP_OUTPUT  6939 routes-HurricaneElectric

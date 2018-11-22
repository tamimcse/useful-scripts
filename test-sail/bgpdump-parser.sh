#!/bin/sh

#BGPdump option (-m) output file
BGP_DUMP_OUTPUT="rv2.20181105.1000"

echo "Extracting routing table of Century Link \n"
sudo python bgpdump-parser.py $BGP_DUMP_OUTPUT  3356 routes-CenturyLink

echo "Extracting routing table of Century Link 1 \n"
sudo python bgpdump-parser.py $BGP_DUMP_OUTPUT  209 routes-CenturyLink-1

echo "Extracting routing table of Century Link 2 \n"
sudo python bgpdump-parser.py $BGP_DUMP_OUTPUT  4323 routes-CenturyLink-2

echo "Extracting routing table of Link3 \n"
sudo python bgpdump-parser.py $BGP_DUMP_OUTPUT  3549 routes-Link3

echo "Extracting routing table of View Qwest \n"
sudo python bgpdump-parser.py $BGP_DUMP_OUTPUT  18106 routes-ViewQwest

echo "Extracting routing table of Zero Fail \n"
sudo python bgpdump-parser.py $BGP_DUMP_OUTPUT  40191 routes-ZeroFail

echo "Extracting routing table of NTT America \n"
sudo python bgpdump-parser.py $BGP_DUMP_OUTPUT  2914 routes-NTTAmerica

echo "Extracting routing table of FibreBy \n"
sudo python bgpdump-parser.py $BGP_DUMP_OUTPUT  42541 routes-FibreBy

echo "Extracting routing table of Comcast \n"
sudo python bgpdump-parser.py $BGP_DUMP_OUTPUT  7922 routes-Comcast

echo "Extracting routing table of Hurricane Electric \n"
sudo python bgpdump-parser.py $BGP_DUMP_OUTPUT  6939 routes-HurricaneElectric

echo "Extracting routing table of AT&T \n"
sudo python bgpdump-parser.py $BGP_DUMP_OUTPUT  7018 routes-ATnT

echo "Extracting routing table of Deutsche Telekom \n"
sudo python bgpdump-parser.py $BGP_DUMP_OUTPUT  3320 routes-Deutsche-Telekom

echo "Extracting routing table of GTT Communication \n"
sudo python bgpdump-parser.py $BGP_DUMP_OUTPUT  3257 routes-GTT

echo "Extracting routing table of GTT Communication 1  \n"
sudo python bgpdump-parser.py $BGP_DUMP_OUTPUT  4436 routes-GTT-1

echo "Extracting routing table of KPN International \n"
sudo python bgpdump-parser.py $BGP_DUMP_OUTPUT  286  routes-KPN

echo "Extracting routing table of Liberty Global \n"
sudo python bgpdump-parser.py $BGP_DUMP_OUTPUT  6830  routes-Liberty-Global

echo "Extracting routing table of Orange \n"
sudo python bgpdump-parser.py $BGP_DUMP_OUTPUT  5511  routes-Orange

echo "Extracting routing table of PCCW Global \n"
sudo python bgpdump-parser.py $BGP_DUMP_OUTPUT  3491  routes-PCCW-Global

echo "Extracting routing table of Telecom Italia \n"
sudo python bgpdump-parser.py $BGP_DUMP_OUTPUT  6762  routes-Telecom-Italia

echo "Extracting routing table of Telefónica \n"
sudo python bgpdump-parser.py $BGP_DUMP_OUTPUT  12956  routes-Telefónica

echo "Extracting routing table of Telia \n"
sudo python bgpdump-parser.py $BGP_DUMP_OUTPUT  1299  routes-Telia

echo "Extracting routing table of Verizon \n"
sudo python bgpdump-parser.py $BGP_DUMP_OUTPUT  701  routes-Verizon

echo "Extracting routing table of Verizon 1 \n"
sudo python bgpdump-parser.py $BGP_DUMP_OUTPUT  702  routes-Verizon-1

echo "Extracting routing table of Verizon 2 \n"
sudo python bgpdump-parser.py $BGP_DUMP_OUTPUT  703  routes-Verizon-2

echo "Extracting routing table of Verizon 3 \n"
sudo python bgpdump-parser.py $BGP_DUMP_OUTPUT  2828  routes-Verizon-3

echo "Extracting routing table of Zayo Group \n"
sudo python bgpdump-parser.py $BGP_DUMP_OUTPUT  6461  routes-Zayo-Group

echo "Extracting routing table of Cogent Communication \n"
sudo python bgpdump-parser.py $BGP_DUMP_OUTPUT  174  routes-Cogent-Communication

echo "Extracting routing table of Sprint \n"
sudo python bgpdump-parser.py $BGP_DUMP_OUTPUT  1239  routes-Sprint

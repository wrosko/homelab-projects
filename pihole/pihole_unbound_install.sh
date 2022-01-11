#!/bin/bash

sudo apt-get update && sudo apt-get upgrade -y

sudo apt-get install htop -y

curl -sSL https://install.pi-hole.net | bash

sudo apt install unbound -y

sudo mv pi-hole.conf /etc/unbound/unbound.conf.d/pi-hole.conf

sudo service unbound restart
dig pi-hole.net @127.0.0.1 -p 5335

echo "\n\n\n"
echo "#########################################"
echo "#########################################"

echo "Changing your pihole password:"
pihole -a -p
echo "\n\nTo get unbound working, n pihole web go to Settings > DNS:"
echo "    - Uncheck IPv4 boxes on leftside Upstream DNS Servers"
echo "    - On rightside Upstream DNS Servers put in Custom 1 (IPv4) DNS settings to: 127.0.0.1#5335"
echo "    - Click save at the very bottom of the screen"
echo "\n For more info see: https://docs.pi-hole.net/guides/dns/unbound/ \n\n"

echo "Done"

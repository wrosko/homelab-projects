#!/bin/bash

sudo apt-get update && sudo apt-get upgrade -y

sudo apt-get install tmux htop -y

curl -sSL https://install.pi-hole.net | bash

sudo apt install unbound -y

mv pi-hole.conf /etc/unbound/unbound.conf.d/pi-hole.conf

sudo service unbound restart
dig pi-hole.net @127.0.0.1 -p 5335

echo "Change pihole IPv4 DNS settings to : 127.0.0.1#5335 \n https://docs.pi-hole.net/guides/dns/unbound/"
echo "Done"



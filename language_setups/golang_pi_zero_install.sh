#!/bin/bash

#Pi Zero
# Pi zero w uses armv6l architecture
export GOLANG="$(curl https://go.dev/dl/|grep linux-armv6l|grep -v beta|head -1|awk -F\> {'print $3'}|awk -F\< {'print $1'})"
wget https://golang.org/dl/$GOLANG
echo "unzipping $GOLANG"
sudo tar -C /usr/local -xzf $GOLANG
rm $GOLANG
unset GOLANG

#https://www.e-tinkers.com/2019/06/better-way-to-install-golang-go-on-raspberry-pi/

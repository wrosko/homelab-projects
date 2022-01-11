# Pihole

This directory contains a script to update and install `pihole` and `unbound` as well as the steps to make it all work without the long tutorials on the internet. I still recommend reading the longer tutorials so you know what's going on because that is very important when running code from  the internet, this just plugs and chugs. This should work on most machines. 

## Installation
If installing on a pi, format the image to your sd card of whichever linux OS you want to use on your pihole. I use a Pi Zero so I include a reference `wpa_supplicant.conf` file (where you should put in your wifi information if connecting via wifi and not ethernet) to be put on the boot partition of your drive. Make sure to create a blank file called `ssh` in same root directory of the drive. You can use `touch ssh` or similar. 


HTTPS Git clone the repo, cd to the pihole directory, install `tmux`:

```bash
git clone https://github.com/wrosko/homelab-projects.git
cd homelab-projects/pihole
sudo apt-get install tmux
```

We're gonna run the installation in a tmux session so that if you lose connection to the pi you can reconnect to the session with `tmux attach-session -t piconf`.

To have things install run the below code. Make sure that you are around to accept the pihole config user prompts as well as change the password. If you get disconnected run the above tmux attach command. 

```bash
sh run_all.sh
```



#!/bin/bash

session="piconf"
tmux new-session -s $session\; \
  send-keys 'sh pihole_unbound_install.sh' C-m \; \

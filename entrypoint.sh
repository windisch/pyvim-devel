#!/bin/bash

# Replace mounted ssh dir with ssh dir of root
cp -TRv /ssh /root/.ssh

# Change permissions. This is needed for instance when the host
# system is not a unix system.
chmod 400 /root/.ssh/id_rsa

# Start terminal
/bin/zsh

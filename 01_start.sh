#!/usr/bin/env bash
#
# This script starts the sshd server, and the root user trusts the certificate.
#

# Prepare the authorized_keys file for the user
mkdir -p ssh
chmod 0700 ssh
echo "cert-authority $(cat ca/ca_user_key.pub)" >| ssh/authorized_keys
chmod 0600 ssh/authorized_keys

# Start the sshd container.
# Mount the recently created authorized_keys file under
# /root/.ssh
docker run -d --name=sshd --rm -p 2222:22 -v "$PWD/ssh:/root/.ssh" linuxkit/sshd:v0.8

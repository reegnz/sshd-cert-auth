#!/usr/bin/env bash
#
# Generating a signing key. This will be used to sign user keys
# certificates, and servers only need to trust this keys public key.

mkdir -p ca
ssh-keygen -C 'usersigning' -N "" -q -f ca/ca_user_key

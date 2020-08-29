#!/usr/bin/env bash
#
# Generating a user ssh key to use in this example.
# One could also use their own ssh key here.

mkdir keys
ssh-keygen -C 'userkey' -N "" -f keys/user_key

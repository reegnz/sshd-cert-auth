#!/usr/bin/env bash
#
# We sign a public key, providing an identity and a list of principals.

identity=${1:-randomuser@example.com}
principals=${2:-root}
public_key=${3-keys/user_key.pub}


ssh-keygen \
	-s ca/ca_user_key \
	-I "$identity" \
	-n "$principals" \
	-V -5s:+1m \
	"$public_key"

ssh-keygen -L -f "$(cut -d'.' -f1 <<<${public_key})-cert.pub"

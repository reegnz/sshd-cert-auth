#!/usr/bin/env bash
ssh -i keys/user_key root@localhost -p 2222 -v -o 'StrictHostKeyChecking=no'

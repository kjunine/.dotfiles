#!/usr/bin/env bash

tar -C ~ --exclude=.ssh/known_hosts -cvzf ~/secrets.tar.gz .aws .ssl .ssh

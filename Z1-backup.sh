#!/usr/bin/env bash

tar -C ~ --exclude=.ssh/known_hosts -czvf ~/secrets.tar.gz .aws .ssl .ssh

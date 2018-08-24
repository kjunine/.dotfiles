#!/usr/bin/env bash

xattr -rc ~/secrets.tar.gz
tar -C ~ -xzvf ~/secrets.tar.gz

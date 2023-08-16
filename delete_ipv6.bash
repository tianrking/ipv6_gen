#!/bin/bash

INTERFACE="eth0"

PREFIX="2001:470:23:193::"

for i in {2..100}; do
  ADDRESS="${PREFIX}${i}/64"
  sudo ip -6 addr del $ADDRESS dev $INTERFACE
done

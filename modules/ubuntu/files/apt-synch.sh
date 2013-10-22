#!/bin/bash -eu

for i in update dist-upgrade autoremove; do
  apt-get -y $i
done

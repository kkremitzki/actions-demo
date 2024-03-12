#!/usr/bin/env bash
sudo qemu-img create -f qcow2 -o preallocation=metadata,lazy_refcounts=on /var/lib/libvirt/images/debian.qcow2 10G

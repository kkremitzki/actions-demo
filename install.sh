#!/usr/bin/env bash
virt-install \
  --connect qemu:///system \
  --network network=default,model=virtio \
  --graphics spice \
  --video virtio \
  --autoconsole text \
  --wait \
  --virt-type kvm \
  --name preseed \
  --os-variant=debian11 \
  --location /var/lib/libvirt/images/debian-12.5.0-amd64-netinst.iso \
  --disk /var/lib/libvirt/images/debian.qcow2 \
  --ram 4096 \
  --vcpus 2 \
  --initrd-inject preseed.cfg \
  --extra-args="ks=file:/preseed.cfg console=tty0 console=ttyS0,115200"

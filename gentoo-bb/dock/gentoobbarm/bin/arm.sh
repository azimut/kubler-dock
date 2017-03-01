#!/bin/bash
set -x
set -e
if [[ ! -f /usr/bin/qemu-arm-static ]]; then
    docker run --rm surround/qemu-arm-static:latest > /usr/bin/qemu-arm-static && chmod +x /usr/bin/qemu-arm-static
fi
chown root:root /usr/bin/qemu-arm-static
echo ':qemu-arm:M::\x7fELF\x01\x01\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x02\x00\x28\x00:\xff\xff\xff\xff\xff\xff\xff\x00\xff\xff\xff\xff\xff\xff\xff\xff\xfe\xff\xff\xff:/usr/bin/qemu-arm-static:' > /proc/sys/fs/binfmt_misc/register

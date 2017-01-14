#!/bin/bash
set -x
set -e
if [[ ! -f ../bob-core/qemu-arm-static ]]; then
    cd ../bob-core/
    docker run --rm surround/qemu-arm-static:latest > ./qemu-arm-static && chmod +x ./qemu-arm-static
    cd -
fi
cp ../bob-core/qemu-arm-static /usr/bin/qemu-arm-static
chmod +x /usr/bin/qemu-arm-static
chown root:root /usr/bin/qemu-arm-static
echo ':qemu-arm:M::\x7fELF\x01\x01\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x02\x00\x28\x00:\xff\xff\xff\xff\xff\xff\xff\x00\xff\xff\xff\xff\xff\xff\xff\xff\xfe\xff\xff\xff:/usr/bin/qemu-arm-static:' > /proc/sys/fs/binfmt_misc/register

#!/bin/bash

make -j32 bindeb-pkg
# mv ../*.deb ../save/linux-image-6.12.20/
# mv ../*.buildinfo ../save/linux-image-6.12.20/
# mv ../*.changes ../save/linux-image-6.12.20/
# watch -d "ethtool -S eno4 | grep rx_queue"
# echo 80000000 | sudo tee /proc/irq/91/smp_affinity
# ffffffff

sudo dpkg -i ../linux-image*.deb ../linux-headers*.deb
sudo update-grub
sudo grub-reboot "1>4"
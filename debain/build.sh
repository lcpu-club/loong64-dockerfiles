#!/usr/bin/bash

# Built on Arch Linux

# Destnation: debian-loong64
if [ ! -d ./debian-loong64 ]; then
    mkdir debian-loong64
fi

# Detect platform, if is Arch Linux, install necessary packages
if [ -f /etc/arch-release ]; then
    sudo pacman --noconfirm -S  debootstrap yay dpkg
    yay -S --noconfirm debian-ports-archive-keyring debian-archive-keyring debian-keyring
fi

# Detect architecture, if not loong64, echo warning
if [ $(uname -m) != "loong64" ]; then
    echo "Warning: This script is designed for loong64 architecture, you are using $(uname -m) architecture."
fi

# Apply debootstrap patch
sudo patch /usr/bin/debootstrap ./debootstrap-loong64.patch

# Build debian-loong64
sudo ./debuerreotype/examples/debian.sh --ports --codename-copy --arch loong64  ./debian-loong64 sid 2024-03-30T08:40:14Z

echo "Build debian-loong64 successfully, see debian-loong64/rootfs.tar.xz for the result."
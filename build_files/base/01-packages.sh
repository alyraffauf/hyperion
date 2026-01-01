#!/usr/bin/bash

set -ouex pipefail

### Remove packages
# Remove Aurora-specific KCM, not suitable for our purposes.
dnf5 remove -y kcm_ublue

### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/39/x86_64/repoview/index.html&protocol=https&redirect=1

# Install necessary modules and plugins for pipewire filter-chains.
dnf5 install -y lsp-plugins-lv2 lv2-bankstown pipewire-module-filter-chain-lv2

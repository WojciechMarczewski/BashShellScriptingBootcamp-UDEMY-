#!/bin/bash

# Upgrade script for system (Fedora)

# apt-get update
dnf check-update -y
# apt-get upgrade
dnf upgrade -y
# apt-get remove
dnf remove -y


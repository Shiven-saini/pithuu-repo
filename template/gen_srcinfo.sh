#!/bin/bash

set -e

echo "==========================================================="
echo "Script to generate the .SRCINFO file from PKGBUILD Metadata."
echo "==========================================================="


makepkg --printsrcinfo > .SRCINFO

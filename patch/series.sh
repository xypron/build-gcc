#!/bin/sh

set -e

git am --abort || true

git am ../patch/0001-RISC-V-Do-not-lift-up-vsetvl-if-its-VL-is-used-PR119.patch
git am ../patch/0001-RISC-V-vsetvl-elide-abnormal-edges-from-LCM-computat.patch

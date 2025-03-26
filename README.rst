gccgo build failure
===================

The issue is reproducible both with GCC-14 and GCC-15

* Upstream GCC checkout at cb537f0d838bac376bfe5e6d765e19cd3af01031
* QEMU emulator version 9.2.1 (Debian 1:9.2.1+ds-1ubuntu4)
* libvirt/ubuntu25.04-riscv64-2.xml - definition of the virtual machine
* Makefile - script to reproduce the issue
* buildlog_20250325.txt - build log with failure

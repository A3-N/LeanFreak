# LeanFreak
LFOS (LeanFreak Operating System)

## TODO_Baseline_Setup
- [x] Baseline working image
- [ ] Reword/Move/Add Misc items

## TODO_Baseline_Install_Script
- [ ] Review Archinstall
- [x] Hostname change - cycle through
- [ ] MAC Address - Avoid VM detection
- [ ] dhclient.conf - Vendor Class Identifier (often includes "Debian", or even "Kali")
- [ ] DNS queries - /etc/resolv.conf - /etc/hosts
- [ ] TCP/IP Stack Fingerprinting sysctl - Change TTL to match windows
- [ ] Link Repo's, dont install ALL tools - not "kali bloat OS"

## TODO_TBD
- [ ] avahi-daemon
- [ ] Services, like Samba is a giveaway
- [ ] Kernel metadata
- [ ] NTP - dont point to linux

---

# Tidbits
1. Changed compression to `lz4` for SUPA-FAST boot for the ISO. Tradeoff, ISO size might be slightly larger.

---

# TRCH - baseline

## ISO Creation
- airootfs/etc/mkinitcpio.conf.d\archiso.conf - Compression Changed for faster boot on ISO
- profiledef.sh - Compression Changed for faster boot on ISO 
- airootfs/etc/modprobe.d/broadcom-wl.conf - Added broadcom-wl package for specific Broadcom chipsets that either don’t work at all with open-source drivers Or work like dog (unstable, flaky connections)

## BIOS & UEFI
- syslinux/ - added more to this like memtest86+, hdt, Existing/Reboot/Poweroff.
- syslinux/ - supports BIOS El Torito and BIOS Legacy (MBR).
- Removed Support for UEFI 32-bit.
- efiboot/ && grub/ - Added UEFI support with grub. (In the future I would like to remove syslinux for full grub, but GRUB BIOS boot modes are a pain.) 

# LeanFreak
LF OS (LeanFreak Operating System)

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
1. Changed `xz (-9e)` compression to `zstd (-3)` for SUPA-FAST boot for the ISO. Tradeoff, ISO size might be slightly larger.

---

# TRCH - baseline
- /airootfs/etc/mkinitcpio.conf.d\archiso.conf - Compression Changed for faster boot on ISO

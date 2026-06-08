# Castlevania Plymouth Boot Splash

Alucard from Castlevania: Symphony of the Night boot animation with Sword Familiar progress bar and disk unlock password dialog.

## Features

- **Boot animation** — 16-frame Alucard sprite loop
- **Loading bar** — Sword Familiar with wipe-fill progress effect
- **Password dialog** — Lock icon + golden entry field for LUKS disk unlock, with bullet characters (●) for password entry

## Credits
- **Original theme**: [andre-leonardo/plymouth-theme-alucardSOTN](https://github.com/andre-leonardo/plymouth-theme-alucardSOTN) (GPL-3.0)
- **Character "Alucard" and "Sword Familiar"**: © Konami Digital Entertainment
- **Adapted for**: Castlevania Omarchy theme

## Prerequisites
- Plymouth installed on your system
- Sudo access

## Installation

### Method 1: Using helper script
```bash
sudo bash ~/.config/omarchy/themes/castlevania/plymouth/install-plymouth.sh
```

### Method 2: Manual
```bash
sudo cp -r ~/.config/omarchy/themes/castlevania/plymouth/. /usr/share/plymouth/themes/castlevania/
sudo plymouth-set-default-theme -R castlevania
```

Reboot to see the change.

## Preview (without reboot)
```bash
sudo plymouthd ; sudo plymouth --show-splash ; sleep 5 ; sudo plymouth quit
```

> Note: The password dialog only appears when Plymouth detects a LUKS-encrypted disk requiring a passphrase. It cannot be previewed without a real boot.

## Files

| File | Description |
|------|-------------|
| `castlevania.plymouth` | Theme descriptor |
| `castlevania.script` | Plymouth script (animation + password dialog) |
| `frame-0.png` ... `frame-15.png` | Alucard animation frames |
| `familiar_sword.png` | Sword Familiar progress bar |
| `black.png` | 1px mask for wipe effect |
| `entry.png` | Password entry field background |
| `bullet.png` | Bullet character for password input |
| `lock.png` | Lock icon for password dialog |

## License
GPL-3.0 — same as upstream
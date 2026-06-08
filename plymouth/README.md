# Castlevania Plymouth Boot Splash

Alucard from Castlevania: Symphony of the Night boot animation with Sword Familiar progress bar.

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
sudo cp -r ~/.config/omarchy/themes/castlevania/plymouth /usr/share/plymouth/themes/castlevania
sudo plymouth-set-default-theme -R castlevania
```

Reboot to see the change.

## Preview (without reboot)
```bash
sudo plymouthd ; sudo plymouth --show-splash ; sleep 5 ; sudo plymouth quit
```

## License
GPL-3.0 — same as upstream
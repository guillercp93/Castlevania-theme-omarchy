# Castlevania: Lament of Innocence — Omarchy Theme

A dark gothic Omarchy desktop theme inspired by **Castlevania: Lament of Innocence**.

## Features

- 🎨 **Eternal Night palette** — Deep navy (#161a26), parchment (#ddd4c0), sacred gold (#d4af37), blood crimson (#b02a2a)
- 🖼️ **Custom backgrounds** — Leon Belmont, Alucard, Trevor Belmont
- 🔐 **Hyprlock** — Styled lock screen with gold accents
- 🚀 **Plymouth boot splash** — Alucard (SOTN) animation with Sword Familiar progress bar
- 🎯 **Full app coverage** — Waybar, GTK4, Walker, Wofi, SwayOSD, Mako, btop, Neovim, VS Code, Zed, Discord, Warp, Cava
- 🐚 **Fish shell** — Themed colors with visible autosuggestions

## Installation

```bash
omarchy theme set castlevania
```

### Plymouth Boot Splash

Boot animation featuring **Alucard** from *Castlevania: Symphony of the Night* with the **Sword Familiar** as a loading progress bar.

**Credits:** Based on [andre-leonardo/plymouth-theme-alucardSOTN](https://github.com/andre-leonardo/plymouth-theme-alucardSOTN) (GPL-3.0). Alucard and Sword Familiar © Konami Digital Entertainment.

```bash
# Install via helper script:
sudo bash ~/.config/omarchy/themes/castlevania/plymouth/install-plymouth.sh

# Or via Omarchy (if configured):
sudo omarchy plymouth set by theme castlevania

# Preview without reboot:
sudo plymouthd ; sudo plymouth --show-splash ; sleep 5 ; sudo plymouth quit
```

## Palette

| Color | Hex | Usage |
|-------|-----|-------|
| Dark Navy | `#161a26` | Background |
| Parchment | `#ddd4c0` | Foreground |
| Sacred Gold | `#d4af37` | Accent |
| Blood Crimson | `#b02a2a` | Warnings/Alerts |
| Stained Glass | `#5a8aaa` | Muted/Secondary |
| Cathedral Purple | `#7a4aaa` | Special |
| Deep Purple | `#3d2d5e` | Selection |

## Icons

- Recommended: `Tela-circle-dracula` (configured in `icons.theme`)

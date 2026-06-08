# Spec: plymouth-alucard-sotn

## Requirements

### R1: Vendor upstream assets
- Download `alucard.plymouth`, `alucard.script`, `frame-0.png`…`frame-15.png`, `familiar_sword.png`, `black.png` from `https://github.com/andre-leonardo/plymouth-theme-alucardSOTN`
- Store in `~/.config/omarchy/themes/castlevania/plymouth/`

### R2: Adapt theme metadata
- Rename `alucard.plymouth` → `castlevania.plymouth`
- Set `Name=Castlevania: Lament of Innocence`
- Set `Description=Alucard (SOTN) boot splash — Castlevania Omarchy theme`
- Update `ImageDir=/usr/share/plymouth/themes/castlevania`
- Update `ScriptFile=/usr/share/plymouth/themes/castlevania/castlevania.script`

### R3: Preserve script animation
- Keep `alucard.script` unchanged; rename to `castlevania.script`
- Script uses relative `Image("frame-...")` — works as long as images are in same dir

### R4: Documentation
- Create `plymouth/README.md` with credits, license, and install steps
- Update main `README.md` with Plymouth section

### R5: Install helper
- Create `plymouth/install-plymouth.sh` (idempotent, non-destructive)

### R6: Sync
- Copy `plymouth/` to `~/.config/omarchy/current/theme/plymouth/`

## Scenarios

### S1: Fresh install
1. User runs `sudo bash plymouth/install-plymouth.sh`
2. Theme copied to `/usr/share/plymouth/themes/castlevania/`
3. Default Plymouth theme set to `castlevania`
4. Initramfs rebuilt
5. Next boot shows Alucard animation

### S2: Preview without reboot
1. User runs `sudo plymouthd ; sudo plymouth --show-splash ; sleep 5 ; sudo plymouth quit`
2. Alucard animation plays on screen
3. Sword Familiar progress bar appears during simulated boot

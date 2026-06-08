# Tasks: plymouth-alucard-sotn

## Task 1: Download upstream assets
Download all files from https://github.com/andre-leonardo/plymouth-theme-alucardSOTN/tree/main/alucard/ into ~/.config/omarchy/themes/castlevania/plymouth/

Files needed:
- frame-0.png through frame-15.png (16 files)
- familiar_sword.png
- black.png
- alucard.script → save as castlevania.script
- alucard.plymouth → save as castlevania.plymouth

## Task 2: Adapt castlevania.plymouth metadata
Write castlevania.plymouth with:
- Name=Castlevania: Lament of Innocence
- Description=Alucard (SOTN) boot splash — Castlevania Omarchy theme
- ImageDir=/usr/share/plymouth/themes/castlevania
- ScriptFile=/usr/share/plymouth/themes/castlevania/castlevania.script

## Task 3: Create install helper script
Write plymouth/install-plymouth.sh that:
1. Checks running as root (exit if not)
2. Copies plymouth/ dir to /usr/share/plymouth/themes/castlevania/
3. Runs plymouth-set-default-theme -R castlevania
4. Reports success

## Task 4: Create plymouth/README.md
Write documentation with:
- Description
- Prerequisites (Plymouth installed)
- Install instructions (two methods)
- Preview command
- Credits (Konami, andre-leonardo)
- License (GPL-3.0)

## Task 5: Update main README.md
Add "Plymouth Boot Splash" section to main ~/.config/omarchy/themes/castlevania/README.md

## Task 6: Sync to current/theme/
Copy ~/.config/omarchy/themes/castlevania/plymouth/ to ~/.config/omarchy/current/theme/plymouth/

## Task 7: Create preview image (optional)
Create plymouth/preview.png using one of the frame PNGs

## Review Workload Forecast
- Files created: ~20
- Estimated changed lines: ~250
- Risk: Low (all files are new; no existing files modified)

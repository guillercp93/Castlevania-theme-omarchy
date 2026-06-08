# Design: plymouth-alucard-sotn

## File Layout

```
~/.config/omarchy/themes/castlevania/plymouth/
├── castlevania.plymouth     # Theme metadata (adapted)
├── castlevania.script       # Animation logic (unchanged logic)
├── familiar_sword.png       # Sword Familiar progress bar
├── black.png                # Mask pixel for wipe effect
├── frame-0.png              # Frame 0/16
├── frame-1.png              # Frame 1/16
├── ...
├── frame-15.png             # Frame 15/16
├── install-plymouth.sh      # Helper script (sudo)
└── README.md                # Credits & install instructions
```

## Data Flow

```
System Boot
    ↓
Plymouth loads castlevania.plymouth
    ↓
castlevania.script executes:
    ├── Sets black background
    ├── Loads 16 frame PNGs into array
    ├── Creates sprite at screen center
    ├── refresh_callback cycles frames[Math.Int(progress/3) % 16]
    ├── progress_callback:
    │   ├── Positions Sword Familiar below Alucard sprite
    │   └── black.png mask wipes from right to left = progress bar
    └── Boot completes → Plymouth quits → login screen
```

## Adaptation Notes

### castlevania.plymouth (renamed from alucard.plymouth)
```
[Plymouth Theme]
Name=Castlevania: Lament of Innocence
Description=Alucard (SOTN) boot splash — Castlevania Omarchy theme
ModuleName=script

[script]
ImageDir=/usr/share/plymouth/themes/castlevania
ScriptFile=/usr/share/plymouth/themes/castlevania/castlevania.script
```

### castlevania.script (identical to alucard.script)
- Uses relative `Image("frame-" + i + ".png")` → images must be in same dir
- `Image("familiar_sword.png")` for progress bar
- `Image("black.png")` for mask

## Key Decisions

| Decision | Choice | Rationale |
|----------|--------|-----------|
| Theme name | `castlevania` | Matches Omarchy theme folder and branding |
| Script changes | None (rename only) | Animation logic is upstream; no need to modify |
| Frame PNGs | Unchanged | Original Alucard art from SOTN |
| Color palette | Black background (RGB 0,0,0) | Upstream standard; boot screen minimalism |
| Install method | Documented + helper script | Plymouth requires sudo; cannot automate here |

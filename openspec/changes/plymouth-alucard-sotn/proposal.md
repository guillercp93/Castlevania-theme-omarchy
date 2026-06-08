# Change Proposal: plymouth-alucard-sotn

## Intent
Integrate the Alucard SOTN Plymouth boot splash theme into the Castlevania Omarchy theme, so the system boot animation shows Alucard (from Castlevania: Symphony of the Night) with the Sword Familiar as a progress bar.

## Business Rules
- All assets must live inside the theme directory (`~/.config/omarchy/themes/castlevania/plymouth/`)
- The plymouth theme must be installable via `sudo cp` and `plymouth-set-default-theme`
- No existing files outside the theme directory may be modified
- Upstream credits and GPL-3.0 license must be preserved
- The theme name for Plymouth must match the Omarchy theme name: `castlevania`

## Scope
- Create `plymouth/` subdirectory with all adapted upstream files
- Rename and adapt `castlevania.plymouth` metadata
- Keep original `.script` animation logic unchanged
- Create `README.md` with credits and install instructions
- Create optional `install-plymouth.sh` helper script
- Update main theme `README.md` with Plymouth section
- Sync to `~/.config/omarchy/current/theme/plymouth/`

## Non-Goals
- NOT modifying upstream frame PNGs or the script animation
- NOT running plymouth-set-default-theme (requires sudo + interactive terminal)
- NOT changing the current hyprlock/unlock.png setup
- NOT modifying system files outside the theme directory

## Risks
- Plymouth requires system-level install (`/usr/share/plymouth/themes/`) — cannot be automated here
- The script references hardcoded `ImageDir` — must be updated to match the system target
- GPL-3.0 upstream — derivative must keep same license

## Status
`approved` (by user via chat)

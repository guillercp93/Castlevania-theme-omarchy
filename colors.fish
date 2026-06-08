# Castlevania: Lament of Innocence — Fish Colors
# Eternal Night — Comfortable palette

set -l background 161a26
set -l foreground ddd4c0
set -l selection 3d2d5e
set -l comment 5a7a9a
set -l red 9a2a2a
set -l orange dd4a4a
set -l yellow d4af37
set -l green 6a9a7a
set -l purple 7a4aaa
set -l sky 5a8aaa
set -l pink 9a6acc

# General
set -g fish_color_normal $foreground
set -g fish_color_command $sky
set -g fish_color_keyword $pink
set -g fish_color_quote $yellow
set -g fish_color_redirection $foreground
set -g fish_color_end $orange
set -g fish_color_error $red
set -g fish_color_param $purple
set -g fish_color_comment $comment
set -g fish_color_selection --background=$selection
set -g fish_color_search_match --background=$selection
set -g fish_color_operator $green
set -g fish_color_escape $pink
set -g fish_color_autosuggestion $comment

# Pager
set -g fish_pager_color_progress $comment
set -g fish_pager_color_prefix $sky
set -g fish_pager_color_completion $foreground
set -g fish_pager_color_description $comment
set -g fish_pager_color_selected_background --background=$selection

# Castlevania fastfetch greeting
function fish_greeting
    if test -f ~/.config/omarchy/current/theme/fastfetch.jsonc
        fastfetch --config ~/.config/omarchy/current/theme/fastfetch.jsonc 2>/dev/null
    else
        fastfetch
    end
end

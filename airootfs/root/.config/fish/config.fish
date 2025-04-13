set -g fish_greeting ""
fish_config theme choose coolbeans

function fish_prompt
    set_color red
    printf '%s' $USER
    set_color white
    printf '@'
    set_color yellow
    printf '%s ' $hostname
    set_color green
    printf '%s ' (prompt_pwd)
    set_color magenta
    printf '>'
    set_color blue
    printf '>'
    set_color magenta
    printf '> '
    set_color normal
end

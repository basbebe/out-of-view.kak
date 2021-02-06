hook global ModuleLoaded powerline %{ require-module powerline_out_of_view }

provide-module powerline_out_of_view %§

declare-option -hidden bool powerline_module_out_of_view true
set-option -add global powerline_modules 'out-of-view'

define-command -hidden powerline-out-of-view %{ evaluate-commands %sh{
    default=$kak_opt_powerline_base_bg
    next_bg=$kak_opt_powerline_next_bg
    normal=$kak_opt_powerline_separator
    thin=$kak_opt_powerline_separator_thin
    if [ "$kak_opt_powerline_module_out_of_view" = "true" ]; then
        fg=$kak_opt_powerline_color18
        bg=$kak_opt_powerline_base_bg
        [ "$next_bg" = "$bg" ] && separator="{$fg,$bg}$thin" || separator="{$bg,${next_bg:-$default}}$normal"
        printf "%s\n" "set-option -add global powerlinefmt %{$separator{$fg,$bg} %opt{out_of_view_status_line} }"
        printf "%s\n" "set-option global powerline_next_bg $bg"
    fi
}}


define-command -hidden powerline-toggle-out-of-view -params ..1 %{ evaluate-commands %sh{
    [ "$kak_opt_powerline_module_out_of_view" = "true" ] && value=false || value=true
    if [ -n "$1" ]; then
        [ "$1" = "on" ] && value=true || value=false
    fi
    printf "%s\n" "set-option global powerline_module_out_of_view $value"
}}

§

set -l color00 '#1c1b19'
set -l color01 '#c5564a'
set -l color02 '#a89984'
set -l color03 '#ebdbb2'
set -l color04 '#908d88'
set -l color05 '#afa499'
set -l color06 '#d4bd99'
set -l color07 '#fbf1c7'
set -l color08 '#6b655c'
set -l color09 '#d94e38'
set -l color0A '#c2a571'
set -l color0B '#f7df97'
set -l color0C '#aaa090'
set -l color0D '#cbae8e'
set -l color0E '#e7c07c'
set -l color0F '#fff8e8'

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"" --color=bg+:$color00,bg:$color00,spinner:$color0E,hl:$color0D"" --color=fg:$color07,header:$color0D,info:$color0A,pointer:$color0E"" --color=marker:$color0E,fg+:$color06,prompt:$color0A,hl+:$color0D"

# -*- coding: utf-8 -*-
## see https://en.wikipedia.org/wiki/ANSI_escape_code

v_fg_end="\033[39m"
v_bg_end="\033[49m"

v_fg_black="\033[30m"
v_fg_red="\033[31m"
v_fg_green="\033[32m"
v_fg_yellow="\033[33m"
v_fg_blue="\033[34m"
v_fg_magenta="\033[35m"
v_fg_cyan="\033[36m"
v_fg_white="\033[37m"

v_bg_black="\033[40m"
v_bg_red="\033[41m"
v_bg_green="\033[42m"
v_bg_yellow="\033[43m"
v_bg_blue="\033[44m"
v_bg_magenta="\033[45m"
v_bg_cyan="\033[46m"
v_bg_white="\033[47m"

# color as foreground
function black(){
    echo -e "${v_fg_black}$1${v_fg_end}"
}
function red(){
    echo -e "${v_fg_red}$1${v_fg_end}"
}
function green(){
    echo -e "${v_fg_green}$1${v_fg_end}"
}
function yellow(){
    echo -e "${v_fg_yellow}$1${v_fg_end}"
}
function blue(){
    echo -e "${v_fg_blue}$1${v_fg_end}"
}
function magenta(){
    echo -e "${v_fg_magenta}$1${v_fg_end}"
}
function cyan(){
    echo -e "${v_fg_cyan}$1${v_fg_end}"
}
function white(){
    echo -e "${v_fg_white}$1${v_fg_end}"
}

# color as background
function black_bg(){
    echo -e "${v_bg_black}$1${v_bg_end}"
}
function red_bg(){
    echo -e "${v_bg_red}$1${v_bg_end}"
}
function green_bg(){
    echo -e "${v_bg_green}$1${v_bg_end}"
}
function yellow_bg(){
    echo -e "${v_bg_yellow}$1${v_bg_end}"
}
function blue_bg(){
    echo -e "${v_bg_blue}$1${v_bg_end}"
}
function magenta_bg(){
    echo -e "${v_bg_magenta}$1${v_bg_end}"
}
function cyan_bg(){
    echo -e "${v_bg_cyan}$1${v_bg_end}"
}
function white_bg(){
    echo -e "${v_bg_white}$1${v_bg_end}"
}

# style
function bold(){
    echo -e "\033[1m$1\033[22m"  # not \033[21m
}
function italic(){
    echo -e "\033[3m$1\033[23m"  # Not widely supported. Sometimes treated as inverse.
}
function underline(){
    echo -e "\033[4m$1\033[24m"
}
function blink(){
    echo -e "\033[5m$1\033[25m"
}
function strike(){
    echo -e "\033[9m$1\033[29m"
}

# style and color for highlight
v_hl_end="\033[22;27;39m"

function black_hl(){
    echo -e "\033[1;30;7m$1${v_hl_end}"
}
function red_hl(){
    echo -e "\033[1;31;7m$1${v_hl_end}"
}
function green_hl(){
    echo -e "\033[1;32;7m$1${v_hl_end}"
}
function yellow_hl(){
    echo -e "\033[1;33;7m$1${v_hl_end}"
}
function blue_hl(){
    echo -e "\033[1;34;7m$1${v_hl_end}"
}
function magenta_hl(){
    echo -e "\033[1;35;7m$1${v_hl_end}"
}
function cyan_hl(){
    echo -e "\033[1;36;7m$1${v_hl_end}"
}
function white_hl(){
    echo -e "\033[1;37;7m$1${v_hl_end}"
}

# unset v_fg_end v_bg_end v_hl_end
# 
# unset v_fg_black
# unset v_fg_red
# unset v_fg_green
# unset v_fg_yellow
# unset v_fg_blue
# unset v_fg_magenta
# unset v_fg_cyan
# unset v_fg_white
# 
# unset v_bg_black
# unset v_bg_red
# unset v_bg_green
# unset v_bg_yellow
# unset v_bg_blue
# unset v_bg_magenta
# unset v_bg_cyan
# unset v_bg_white

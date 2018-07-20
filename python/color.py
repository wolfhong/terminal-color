# -*- coding: utf-8 -*-
from __future__ import unicode_literals
import sys
'''
## see https://en.wikipedia.org/wiki/ANSI_escape_code

=============== ========= ========
Color           FG Code   BG Code
=============== ========= ========
black           30        40
red             31        41
green           32        42
yellow          33        43
blue            34        44
magenta         35        45
cyan            36        46
white           37        47
bright black    90        100
bright red      91        101
bright green    92        102
bright yellow   93        103
bright blue     94        104
bright magenta  95        105
bright cyan     96        106
bright white    97        107

39 reset for foreground
49 reset for background
0 reset for all, all attributes off
'''

def use_color():
    if sys.stdout.isatty():
        return True
    return False


def esc(*codes):
    return "\033[%sm" % (";".join([str(c) for c in codes]))
    # below is ok, too
    # return "\x1b[%sm" % ";".join([str(c) for c in codes])


def make_color(start, end):
    def _(string):
        if not use_color:
            return string
        return start + string + end
    return _


END = esc(0)
FG_END = esc(39)

# color as foreground
black = make_color(esc(30), FG_END)
red = make_color(esc(31), FG_END)
green = make_color(esc(32), FG_END)
yellow = make_color(esc(33), FG_END)
blue = make_color(esc(34), FG_END)
magenta = make_color(esc(35), FG_END)
cyan = make_color(esc(36), FG_END)
white = make_color(esc(37), FG_END)

# bright color as foreground
br_black = make_color(esc(90), FG_END)
br_red = make_color(esc(91), FG_END)
br_green = make_color(esc(92), FG_END)
br_yellow = make_color(esc(93), FG_END)
br_blue = make_color(esc(94), FG_END)
br_magenta = make_color(esc(95), FG_END)
br_cyan = make_color(esc(96), FG_END)
br_white = make_color(esc(97), FG_END)

BG_END = esc(49)

# color as background
black_bg = make_color(esc(40), BG_END)
red_bg = make_color(esc(41), BG_END)
green_bg = make_color(esc(42), BG_END)
yellow_bg = make_color(esc(43), BG_END)
blue_bg = make_color(esc(44), BG_END)
magenta_bg = make_color(esc(45), BG_END)
cyan_bg = make_color(esc(46), BG_END)
white_bg = make_color(esc(47), BG_END)

# bright color as background
br_black_bg = make_color(esc(100), BG_END)
br_red_bg = make_color(esc(101), BG_END)
br_green_bg = make_color(esc(102), BG_END)
br_yellow_bg = make_color(esc(103), BG_END)
br_blue_bg = make_color(esc(104), BG_END)
br_magenta_bg = make_color(esc(105), BG_END)
br_cyan_bg = make_color(esc(106), BG_END)
br_white_bg = make_color(esc(107), BG_END)

# style
bold = make_color(esc(1), esc(22))  # not esc(21)
italic = make_color(esc(3), esc(23))  # Not widely supported. Sometimes treated as inverse.
underline = make_color(esc(4), esc(24))
blink = make_color(esc(5), esc(25))
strike = make_color(esc(9), esc(29))

# 7: swap foreground and background colors
# 27: Inverse off
HL_END = esc(22, 27, 39)

# style and color for highlight
black_hl = make_color(esc(1, 30, 7), HL_END)
red_hl = make_color(esc(1, 31, 7), HL_END)
green_hl = make_color(esc(1, 32, 7), HL_END)
yellow_hl = make_color(esc(1, 33, 7), HL_END)
blue_hl = make_color(esc(1, 34, 7), HL_END)
magenta_hl = make_color(esc(1, 35, 7), HL_END)
cyan_hl = make_color(esc(1, 36, 7), HL_END)
white_hl = make_color(esc(1, 37, 7), HL_END)

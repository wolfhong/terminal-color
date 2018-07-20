# -*- coding: utf-8 -*-
from __future__ import unicode_literals
from color import *

english = "english"
chinese = "中文"


def fix_width(s, length=10):
    return s.ljust(length)


name_list = ["black", "red", "green", "yellow", "blue", "magenta", "cyan", "white"]
fg_list = [black, red, green, yellow, blue, magenta, cyan, white]
bg_list = [black_bg, red_bg, green_bg, yellow_bg, blue_bg, magenta_bg, cyan_bg, white_bg]

for name, fg, bg in zip(name_list, fg_list, bg_list):
    print("%s \t %s \t %s \t %s \t %s" % (
        fix_width(name),
        fg(english), fg(chinese),
        bg(english), bg(chinese),
    ))

print("")

name_list = ["br_black", "br_red", "br_green", "br_yellow", "br_blue", "br_magenta", "br_cyan", "br_white"]
fg_list = [br_black, br_red, br_green, br_yellow, br_blue, br_magenta, br_cyan, br_white]
bg_list = [br_black_bg, br_red_bg, br_green_bg, br_yellow_bg, br_blue_bg, br_magenta_bg, br_cyan_bg, br_white_bg]

for name, fg, bg in zip(name_list, fg_list, bg_list):
    print("%s \t %s \t %s \t %s \t %s" % (
        fix_width(name),
        fg(english), fg(chinese),
        bg(english), bg(chinese),
    ))

print("")

name_list = ["black_hl", "red_hl", "green_hl", "yellow_hl", "blue_hl", "magenta_hl", "cyan_hl", "white_hl"]
fg_list = [black_hl, red_hl, green_hl, yellow_hl, blue_hl, magenta_hl, cyan_hl, white_hl]

for name, fg in zip(name_list, fg_list):
    print("%s \t %s \t %s" % (
        fix_width(name),
        fg(english), fg(chinese),
    ))

print("")

name_list = ["bold", "italic", "underline", "blink", "strike"]
style_list = [bold, italic, underline, blink, strike]

print("%s \t %s \t %s" % (fix_width("normal"), english, chinese))
for name, style in zip(name_list, style_list):
    print("%s \t %s \t %s" % (
        fix_width(name),
        style("english"),
        style("中文"),
    ))

print("")
print(red(br_yellow_bg("use functions composed together")))

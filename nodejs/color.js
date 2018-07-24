function use_color() {
    if (tty.isatty(1)) return true  // stdout is a tty
    return false
}

function esc(codes) {
    return '\033[' + codes + 'm'
}

function make_color(start, end) {
    function _(string) {
        if (!use_color) return string
        return start + string + end
    }
    return _
}

const END = esc(0)
const FG_END = esc(39)

// color as foreground
exports.black = make_color(esc(30), FG_END)
exports.red = make_color(esc(31), FG_END)
exports.green = make_color(esc(32), FG_END)
exports.yellow = make_color(esc(33), FG_END)
exports.blue = make_color(esc(34), FG_END)
exports.magenta = make_color(esc(35), FG_END)
exports.cyan = make_color(esc(36), FG_END)
exports.white = make_color(esc(37), FG_END)

const BG_END = esc(49)

// color as background
exports.black_bg = make_color(esc(40), BG_END)
exports.red_bg = make_color(esc(41), BG_END)
exports.green_bg = make_color(esc(42), BG_END)
exports.yellow_bg = make_color(esc(43), BG_END)
exports.blue_bg = make_color(esc(44), BG_END)
exports.magenta_bg = make_color(esc(45), BG_END)
exports.cyan_bg = make_color(esc(46), BG_END)
exports.white_bg = make_color(esc(47), BG_END)

// style
exports.bold = make_color(esc(1), esc(22))  // not esc(21)
exports.italic = make_color(esc(3), esc(23))  // Not widely supported. Sometimes treated as inverse.
exports.underline = make_color(esc(4), esc(24))
exports.blink = make_color(esc(5), esc(25))
exports.strike = make_color(esc(9), esc(29))

// 7: swap foreground and background colors
// 27: Inverse off
const HL_END = esc('22;27;39')

// style and color for highlight
exports.black_hl = make_color(esc('1;30;7'), HL_END)
exports.red_hl = make_color(esc('1;31;7'), HL_END)
exports.green_hl = make_color(esc('1;32;7'), HL_END)
exports.yellow_hl = make_color(esc('1;33;7'), HL_END)
exports.blue_hl = make_color(esc('1;34;7'), HL_END)
exports.magenta_hl = make_color(esc('1;35;7'), HL_END)
exports.cyan_hl = make_color(esc('1;36;7'), HL_END)
exports.white_hl = make_color(esc('1;37;7'), HL_END)

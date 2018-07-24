const color = require('./color')

const english = 'english'
const chinese = '中文'

function fix_width(s){
    const width = 10
    return s.length >= width ? s : s + new Array(width - s.length).join(" ");
}

name_list = ["black", "red", "green", "yellow", "blue", "magenta", "cyan", "white"]

fg_list = [color.black, color.red, color.green, color.yellow, color.blue, color.magenta, color.cyan, color.white]

bg_list = [color.black_bg, color.red_bg, color.green_bg, color.yellow_bg, color.blue_bg, color.magenta_bg, color.cyan_bg, color.white_bg]

hl_list = [color.black_hl, color.red_hl, color.green_hl, color.yellow_hl, color.blue_hl, color.magenta_hl, color.cyan_hl, color.white_hl]

name_list.forEach(function(v, i){
    console.log(fix_width(v) + fg_list[i](english) + '\t' 
        + fg_list[i](chinese) + '\t' 
        + bg_list[i](english) + '\t' 
        + bg_list[i](chinese) + '\t'
        + hl_list[i](english) + '\t'
        + hl_list[i](chinese)
    )
})

console.log()

name_list = ['bold', 'italic', 'underline', 'blink', 'strike']
style_list = [color.bold, color.italic, color.underline, color.blink, color.strike]

console.log(fix_width('normal') + english + '\t' + chinese)
name_list.forEach(function(v, i){
    console.log(fix_width(v) + style_list[i](english) + '\t'
        + style_list[i](chinese)
    )
})

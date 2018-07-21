source ./color.sh

chinese="中文"
english="english"

printf "%-10s %s %s %s %s\n" black `black $english; black $chinese; black_bg $english; black_bg $chinese`
printf "%-10s %s %s %s %s\n" red `red $english; red $chinese; red_bg $english; red_bg $chinese`
printf "%-10s %s %s %s %s\n" green `green $english; green $chinese; green_bg $english; green_bg $chinese`
printf "%-10s %s %s %s %s\n" yellow `yellow $english; yellow $chinese; yellow_bg $english; yellow_bg $chinese`
printf "%-10s %s %s %s %s\n" blue `blue $english; blue $chinese; blue_bg $english; blue_bg $chinese`
printf "%-10s %s %s %s %s\n" magenta `magenta $english; magenta $chinese; magenta_bg $english; magenta_bg $chinese`
printf "%-10s %s %s %s %s\n" cyan `cyan $english; cyan $chinese; cyan_bg $english; cyan_bg $chinese`
printf "%-10s %s %s %s %s\n" white `white $english; white $chinese; white_bg $english; white_bg $chinese`

echo

printf "%-10s %s %s\n" black_hl `black_hl $english; black_hl $chinese`
printf "%-10s %s %s\n" red_hl `red_hl $english; red_hl $chinese`
printf "%-10s %s %s\n" green_hl `green_hl $english; green_hl $chinese`
printf "%-10s %s %s\n" yellow_hl `yellow_hl $english; yellow_hl $chinese`
printf "%-10s %s %s\n" blue_hl `blue_hl $english; blue_hl $chinese`
printf "%-10s %s %s\n" magenta_hl `magenta_hl $english; magenta_hl $chinese`
printf "%-10s %s %s\n" cyan_hl `cyan_hl $english; cyan_hl $chinese`
printf "%-10s %s %s\n" white_hl `white_hl $english; white_hl $chinese`

echo

printf "%-10s %s %s\n" normal $english $chinese
printf "%-10s %s %s\n" bold `bold $english; bold $chinese`
printf "%-10s %s %s\n" italic `italic $english; italic $chinese`
printf "%-10s %s %s\n" underline `underline $english; underline $chinese`
printf "%-10s %s %s\n" blink `blink $english; blink $chinese`
printf "%-10s %s %s\n" strike `strike $english; strike $chinese`

echo

red `yellow_bg 'use functions composed together'`

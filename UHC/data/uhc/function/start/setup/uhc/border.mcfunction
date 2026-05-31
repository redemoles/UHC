
#> uhc:start/setup/uhc/border
#
# @within			uhc:start/main
#
#
# @description		Configuration de la bordure
#

scoreboard players operation #shrink_1_length uhc.data.temp = #shrink_1_length uhc.data.setup
scoreboard players operation #shrink_2_length uhc.data.temp = #shrink_2_length uhc.data.setup
scoreboard players operation #shrink_3_length uhc.data.temp = #shrink_3_length uhc.data.setup
scoreboard players operation #border_size uhc.data.temp = #shrink_1_size_start uhc.data.setup
scoreboard players operation #shrink_1_size_start uhc.data.temp = #shrink_1_size_start uhc.data.setup
scoreboard players operation #shrink_1_size_end uhc.data.temp = #shrink_1_size_end uhc.data.setup
scoreboard players operation #shrink_2_size_end uhc.data.temp = #shrink_2_size_end uhc.data.setup
scoreboard players operation #shrink_3_size_end uhc.data.temp = #shrink_3_size_end uhc.data.setup
scoreboard players operation #shrink_1_length uhc.data.temp = #shrink_1_length uhc.data.setup
scoreboard players operation #shrink_2_length uhc.data.temp = #shrink_2_length uhc.data.setup
scoreboard players operation #shrink_3_length uhc.data.temp = #shrink_3_length uhc.data.setup
function uhc:pre_game/config/timer

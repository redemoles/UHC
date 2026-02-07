
#> uhc:pre_game/menu/load/settings/border/shrink_3/macro_set
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

data modify block 0 -61 0 front_text.messages set value [{"score":{"name":"#shrink_2_size_end","objective":"uhc.data.setup"},"color":"#FF3F3F","bold":true,"italic":false},{"score":{"name":"#shrink_3_size_end","objective":"uhc.data.setup"},"color":"#FF3F3F","bold":true,"italic":false},{"score":{"name":"#shrink_3_time_left","objective":"uhc.data.setup"},"color":"#FF3F3F","bold":true,"italic":false},{"score":{"name":"#shrink_3_length","objective":"uhc.data.setup"},"color":"#FF3F3F","bold":true,"italic":false}]
data modify storage uhc:settings menu.shrink.2_size_end set from block 0 -61 0 front_text.messages[0]
data modify storage uhc:settings menu.shrink.3_size_end set from block 0 -61 0 front_text.messages[1]
data modify storage uhc:settings menu.shrink.3_time_left set from block 0 -61 0 front_text.messages[2]
data modify storage uhc:settings menu.shrink.3_length set from block 0 -61 0 front_text.messages[3]
execute unless score #shrink_dynamic uhc.data.setup matches 1..64 store result storage uhc:settings menu.shrink.dynamic_count int 1 run scoreboard players get #01 uhc.data.numbers
execute if score #shrink_dynamic uhc.data.setup matches 1..64 store result storage uhc:settings menu.shrink.dynamic_count int 1 run scoreboard players get #shrink_dynamic uhc.data.setup

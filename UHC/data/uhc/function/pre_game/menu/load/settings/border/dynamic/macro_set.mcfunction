
#> uhc:pre_game/menu/load/settings/border/dynamic/macro_set
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

data modify block 0 -61 0 front_text.messages[2] set value [{"score":{"name":"#shrink_dynamic","objective":"uhc.data.setup"},"color":"#FF3F3F","bold":true,"italic":false}]
data modify storage uhc:settings interpreted_2 set from block 0 -61 0 front_text.messages[2]
execute unless score #shrink_dynamic uhc.data.setup matches 1..64 store result storage uhc:settings interpreted_3 int 1 run scoreboard players get #01 uhc.data.numbers
execute if score #shrink_dynamic uhc.data.setup matches 1..64 store result storage uhc:settings interpreted_3 int 1 run scoreboard players get #shrink_dynamic uhc.data.setup


#> uhc:pre_game/menu/load/settings/border/macro_set
#
# @within			uhc:pre_game/menu/selected/
#
#
# @description		Menu
#

data modify block 0 -61 0 front_text.messages set value [{"score":{"name":"#shrink_1_size_start","objective":"uhc.data.setup"},"color":"#FF3F3F","bold":true,"italic":false},{"score":{"name":"#shrink_1_size_end","objective":"uhc.data.setup"},"color":"#FF3F3F","bold":true,"italic":false},{"score":{"name":"#shrink_1_time_left","objective":"uhc.data.setup"},"color":"#FF3F3F","bold":true,"italic":false},{"score":{"name":"#shrink_1_length","objective":"uhc.data.setup"},"color":"#FF3F3F","bold":true,"italic":false}]
data modify storage uhc:settings menu.shrink.1_size_start set from block 0 -61 0 front_text.messages[0]
data modify storage uhc:settings menu.shrink.1_size_end set from block 0 -61 0 front_text.messages[1]
data modify storage uhc:settings menu.shrink.1_time_left set from block 0 -61 0 front_text.messages[2]
data modify storage uhc:settings menu.shrink.1_length set from block 0 -61 0 front_text.messages[3]
execute unless score #shrink_dynamic uhc.data.setup matches 1..64 store result storage uhc:settings menu.shrink.dynamic_count int 1 run scoreboard players get #01 uhc.data.numbers
execute if score #shrink_dynamic uhc.data.setup matches 1..64 store result storage uhc:settings menu.shrink.dynamic_count int 1 run scoreboard players get #shrink_dynamic uhc.data.setup

data modify block 0 -61 0 front_text.messages set value [{"score":{"name":"#shrink_1_size_end","objective":"uhc.data.setup"},"color":"#FF3F3F","bold":true,"italic":false},{"score":{"name":"#shrink_2_size_end","objective":"uhc.data.setup"},"color":"#FF3F3F","bold":true,"italic":false},{"score":{"name":"#shrink_2_time_left","objective":"uhc.data.setup"},"color":"#FF3F3F","bold":true,"italic":false},{"score":{"name":"#shrink_2_length","objective":"uhc.data.setup"},"color":"#FF3F3F","bold":true,"italic":false}]
data modify storage uhc:settings menu.shrink.1_size_end set from block 0 -61 0 front_text.messages[0]
data modify storage uhc:settings menu.shrink.2_size_end set from block 0 -61 0 front_text.messages[1]
data modify storage uhc:settings menu.shrink.2_time_left set from block 0 -61 0 front_text.messages[2]
data modify storage uhc:settings menu.shrink.2_length set from block 0 -61 0 front_text.messages[3]
execute unless score #shrink_dynamic uhc.data.setup matches 1..64 store result storage uhc:settings menu.shrink.dynamic_count int 1 run scoreboard players get #01 uhc.data.numbers
execute if score #shrink_dynamic uhc.data.setup matches 1..64 store result storage uhc:settings menu.shrink.dynamic_count int 1 run scoreboard players get #shrink_dynamic uhc.data.setup

data modify block 0 -61 0 front_text.messages set value [{"score":{"name":"#shrink_2_size_end","objective":"uhc.data.setup"},"color":"#FF3F3F","bold":true,"italic":false},{"score":{"name":"#shrink_3_size_end","objective":"uhc.data.setup"},"color":"#FF3F3F","bold":true,"italic":false},{"score":{"name":"#shrink_3_time_left","objective":"uhc.data.setup"},"color":"#FF3F3F","bold":true,"italic":false},{"score":{"name":"#shrink_3_length","objective":"uhc.data.setup"},"color":"#FF3F3F","bold":true,"italic":false}]
data modify storage uhc:settings menu.shrink.2_size_end set from block 0 -61 0 front_text.messages[0]
data modify storage uhc:settings menu.shrink.3_size_end set from block 0 -61 0 front_text.messages[1]
data modify storage uhc:settings menu.shrink.3_time_left set from block 0 -61 0 front_text.messages[2]
data modify storage uhc:settings menu.shrink.3_length set from block 0 -61 0 front_text.messages[3]
execute unless score #shrink_dynamic uhc.data.setup matches 1..64 store result storage uhc:settings menu.shrink.dynamic_count int 1 run scoreboard players get #01 uhc.data.numbers
execute if score #shrink_dynamic uhc.data.setup matches 1..64 store result storage uhc:settings menu.shrink.dynamic_count int 1 run scoreboard players get #shrink_dynamic uhc.data.setup

execute if score #sky_high uhc.scenario matches 0 run data modify block 0 -61 0 front_text.messages set value [{"score":{"name":"#map_height_limit_above","objective":"uhc.data.setup"},"color":"#FF3F3F","bold":true,"italic":false},{"score":{"name":"#map_height_limit_below","objective":"uhc.data.setup"},"color":"#FF3F3F","bold":true,"italic":false},{"score":{"name":"#map_height_timer","objective":"uhc.data.setup"},"color":"#FF3F3F","bold":true,"italic":false},{"text":"Limite Y","color":"#FF3F3F","bold":true,"italic":false}]
execute if score #sky_high uhc.scenario matches 1 run data modify block 0 -61 0 front_text.messages set value [{"text":"256","color":"#FF3F3F","bold":true,"italic":false},{"score":{"name":"#height","objective":"uhc.scenario.sky_high.settings"},"color":"#FF3F3F","bold":true,"italic":false},{"score":{"name":"#sky_high","objective":"uhc.data.setup"},"color":"#FF3F3F","bold":true,"italic":false},""]
data modify storage uhc:settings menu.shrink.height_y_max set from block 0 -61 0 front_text.messages[0]
data modify storage uhc:settings menu.shrink.height_y_min set from block 0 -61 0 front_text.messages[1]
data modify storage uhc:settings menu.shrink.height_y_timer set from block 0 -61 0 front_text.messages[2]

execute if score #sky_high uhc.scenario matches 0 run function uhc:translation/menu/load/settings/border_height_limit_macro_set
execute if score #sky_high uhc.scenario matches 1 run data modify storage uhc:settings menu.shrink.height_text set value "Sky High"

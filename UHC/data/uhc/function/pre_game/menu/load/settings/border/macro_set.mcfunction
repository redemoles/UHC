
#> uhc:pre_game/menu/load/settings/border/macro_set
#
# @within			uhc:pre_game/menu/selected/
#
#
# @description		Menu
#

execute store result storage uhc:settings menu.shrink.1_size_start int 1 run scoreboard players get #shrink_1_size_start uhc.data.setup
execute store result storage uhc:settings menu.shrink.1_size_end int 1 run scoreboard players get #shrink_1_size_end uhc.data.setup
execute store result storage uhc:settings menu.shrink.1_time_left int 1 run scoreboard players get #shrink_1_time_left uhc.data.setup
execute store result storage uhc:settings menu.shrink.1_length int 1 run scoreboard players get #shrink_1_length uhc.data.setup
execute unless score #shrink_dynamic uhc.data.setup matches 1..64 store result storage uhc:settings menu.shrink.dynamic_count int 1 run scoreboard players get #01 uhc.data.numbers
execute if score #shrink_dynamic uhc.data.setup matches 1..64 store result storage uhc:settings menu.shrink.dynamic_count int 1 run scoreboard players get #shrink_dynamic uhc.data.setup

execute store result storage uhc:settings menu.shrink.2_size_end int 1 run scoreboard players get #shrink_2_size_end uhc.data.setup
execute store result storage uhc:settings menu.shrink.2_time_left int 1 run scoreboard players get #shrink_2_time_left uhc.data.setup
execute store result storage uhc:settings menu.shrink.2_length int 1 run scoreboard players get #shrink_2_length uhc.data.setup
execute unless score #shrink_dynamic uhc.data.setup matches 1..64 store result storage uhc:settings menu.shrink.dynamic_count int 1 run scoreboard players get #01 uhc.data.numbers
execute if score #shrink_dynamic uhc.data.setup matches 1..64 store result storage uhc:settings menu.shrink.dynamic_count int 1 run scoreboard players get #shrink_dynamic uhc.data.setup

execute store result storage uhc:settings menu.shrink.3_size_end int 1 run scoreboard players get #shrink_3_size_end uhc.data.setup
execute store result storage uhc:settings menu.shrink.3_time_left int 1 run scoreboard players get #shrink_3_time_left uhc.data.setup
execute store result storage uhc:settings menu.shrink.3_length int 1 run scoreboard players get #shrink_3_length uhc.data.setup
execute unless score #shrink_dynamic uhc.data.setup matches 1..64 store result storage uhc:settings menu.shrink.dynamic_count int 1 run scoreboard players get #01 uhc.data.numbers
execute if score #shrink_dynamic uhc.data.setup matches 1..64 store result storage uhc:settings menu.shrink.dynamic_count int 1 run scoreboard players get #shrink_dynamic uhc.data.setup

execute if score #sky_high uhc.scenario matches 0 store result storage uhc:settings menu.shrink.height_y_max int 1 run scoreboard players get #map_height_limit_above uhc.data.setup
execute if score #sky_high uhc.scenario matches 0 store result storage uhc:settings menu.shrink.height_y_min int 1 run scoreboard players get #map_height_limit_below uhc.data.setup
execute if score #sky_high uhc.scenario matches 0 store result storage uhc:settings menu.shrink.height_y_timer int 1 run scoreboard players get #map_height_timer uhc.data.setup
execute if score #sky_high uhc.scenario matches 1 run data modify storage uhc:settings menu.shrink.height_y_max set value 256
execute if score #sky_high uhc.scenario matches 1 store result storage uhc:settings menu.shrink.height_y_min int 1 run scoreboard players get #height uhc.scenario.sky_high.settings
execute if score #sky_high uhc.scenario matches 1 store result storage uhc:settings menu.shrink.height_y_timer int 1 run scoreboard players get #sky_high uhc.data.setup

execute if score #sky_high uhc.scenario matches 0 run function uhc:translation/menu/load/settings/border_height_limit_macro_set
execute if score #sky_high uhc.scenario matches 1 run data modify storage uhc:settings menu.shrink.height_text set value "Sky High"


#> uhc:in_game/scenario/silent_night/tick
#
# @within			uhc:in_game/timer/second
#
#
# @description		Silent Night
#

execute if predicate uhc:scenario/silent_night/night_time run function uhc:in_game/scenario/silent_night/vanilla_nametag/disable
execute if predicate uhc:scenario/silent_night/night_time run scoreboard objectives setdisplay below_name
execute if predicate uhc:scenario/silent_night/night_time run scoreboard objectives setdisplay list
execute if predicate uhc:scenario/silent_night/night_time unless score #scoreboard_bypass uhc.scenario.silent_night matches 1 run scoreboard objectives setdisplay sidebar
execute if predicate uhc:scenario/silent_night/night_time if score #death_message uhc.data.setup matches 0 in minecraft:overworld run gamerule show_death_messages false
execute if predicate uhc:scenario/silent_night/night_time if score #death_message uhc.data.setup matches 0 in minecraft:the_nether run gamerule show_death_messages false
execute if predicate uhc:scenario/silent_night/night_time if score #death_message uhc.data.setup matches 0 in minecraft:the_end run gamerule show_death_messages false

execute unless predicate uhc:scenario/silent_night/night_time run function uhc:in_game/scenario/silent_night/vanilla_nametag/enable
execute unless predicate uhc:scenario/silent_night/night_time run function uhc:in_game/player/misc/score_display/below_name
execute unless predicate uhc:scenario/silent_night/night_time run function uhc:in_game/player/misc/score_display/list
execute unless predicate uhc:scenario/silent_night/night_time run function uhc:in_game/player/misc/score_display/sidebar
execute unless predicate uhc:scenario/silent_night/night_time if score #death_message uhc.data.setup matches 0 in minecraft:overworld run gamerule show_death_messages true
execute unless predicate uhc:scenario/silent_night/night_time if score #death_message uhc.data.setup matches 0 in minecraft:the_nether run gamerule show_death_messages true
execute unless predicate uhc:scenario/silent_night/night_time if score #death_message uhc.data.setup matches 0 in minecraft:the_end run gamerule show_death_messages true

execute unless predicate uhc:scenario/silent_night/night_time if score #death_message uhc.data.setup matches 0..4 run scoreboard players operation #team uhc.data.temp = #team uhc.data.temp.inv
execute unless predicate uhc:scenario/silent_night/night_time if score #death_message uhc.data.setup matches 0..4 run scoreboard players operation #player uhc.data.temp = #player uhc.data.temp.inv
execute if score #biome_paranoia uhc.scenario matches 2 as @a[tag=uhc.player] run function uhc:in_game/scenario/silent_night/biome_paranoia/root

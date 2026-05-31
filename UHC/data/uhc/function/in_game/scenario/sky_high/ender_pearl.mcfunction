
#> uhc:in_game/scenario/sky_high/ender_pearl
#
# @within			uhc:in_game/scenario/sky_high/tick
#
#
# @description		Give d'enderpearl aux joueurs
#

scoreboard players remove #sky_high_gift uhc.data.temp 1
execute if score #sky_high_gift uhc.data.temp matches 1.. run scoreboard players operation #sky_high_ender_pearl uhc.data.temp = #ender_pearl_timer uhc.scenario.sky_high.settings
give @a[tag=uhc.player] minecraft:ender_pearl 1


#> uhc:pre_game/menu/load/settings/pvp/fight_stuff/wolf/macro_set
#
# @within			uhc:pre_game/menu/selected/
#
#
# @description		Menu
#

scoreboard players operation #shield uhc.data.setup = #shield_percent uhc.data.setup
scoreboard players operation #shield uhc.data.setup *= #336 uhc.data.numbers
scoreboard players operation #shield uhc.data.setup /= #100 uhc.data.numbers
scoreboard players operation #shield uhc.data.setup *= #-1 uhc.data.numbers
scoreboard players add #shield uhc.data.setup 336
execute store result storage uhc:settings menu.shield_durability int 1 run scoreboard players get #shield uhc.data.setup
execute store result storage uhc:settings menu.shield_percent int 1 run scoreboard players get #shield_percent uhc.data.setup
scoreboard players remove #shield uhc.data.setup 336
scoreboard players operation #shield uhc.data.setup *= #-1 uhc.data.numbers

execute store result storage uhc:settings menu.wolf_limit int 1 run scoreboard players get #wolf_count uhc.data.setup

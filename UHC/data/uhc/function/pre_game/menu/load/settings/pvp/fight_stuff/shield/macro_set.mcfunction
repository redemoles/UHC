
#> uhc:pre_game/menu/load/settings/pvp/fight_stuff/shield/macro_set
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
data modify block 0 -61 0 front_text.messages[0] set value [{"score":{"name":"#shield_percent","objective":"uhc.data.setup"},"color":"#FF3F3F","bold":true}]
data modify storage uhc:settings menu.shield_percent set from block 0 -61 0 front_text.messages[0]
scoreboard players remove #shield uhc.data.setup 336
scoreboard players operation #shield uhc.data.setup *= #-1 uhc.data.numbers

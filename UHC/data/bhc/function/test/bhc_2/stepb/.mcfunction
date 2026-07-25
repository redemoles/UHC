
#> bhc:test/bhc_2/stepb/
#
# @within			
#
#
# @description		Simulation d'une partie
#

# Fin d'étape A
advancement grant @a only bingo_2a:1_1
function bhc:in_game/scenario/01/bingo_stepa/end

scoreboard players set #stepa_end bhc.data.temp 0
scoreboard players set #stepb_start bhc.data.temp 1
scoreboard players set #pve uhc.data.temp 1
scoreboard players set #pvp uhc.data.temp 1

tag @s add test
schedule function bhc:test/bhc_2/stepb/minute_later 60t


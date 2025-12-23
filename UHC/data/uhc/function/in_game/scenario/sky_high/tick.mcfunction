
#> uhc:in_game/scenario/sky_high/tick
#
# @within			uhc:in_game/timer/players
#
#
# @description		Test si le joueur a cumulé 30 secondes sous la couche 150
#

scoreboard players set @s[y=150,dy=214] uhc.scenario.sky_high.tick 0
scoreboard players add @s[y=150,dy=-214] uhc.scenario.sky_high.tick 1
execute if score @s uhc.scenario.sky_high.tick matches 600.. run function uhc:in_game/scenario/sky_high/damage

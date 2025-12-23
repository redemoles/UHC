
#> bhc:scores_calculator/kills/damage/attacker_team
#
# @within			bhc:scores_calculator/kills/damage/attacker_player
#
#
# @description		Attribution des dégâts mis à l'équipe de l'attaquant
#

scoreboard players operation @s bhc.kills.damage_dealt.inv /= #100 uhc.data.numbers
scoreboard players operation @s bhc.kills.damage_dealt.inv += #temp uhc.player.damage_taken.temp
scoreboard players operation @s bhc.kills.damage_dealt.inv *= #100 uhc.data.numbers
scoreboard players operation @s bhc.kills.damage_dealt.inv += @s bhc.death.rank.score.inv
execute if score @s bhc.kills.score.inv matches ..10000000 run function bhc:scores_calculator/kills/scores_1
execute if score @s bhc.kills.score.inv matches ..10000000 as @e[type=marker,tag=UHC,distance=0..] run function bhc:scores_calculator/kills/rank

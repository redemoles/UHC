
#> uhc:in_game/player/pvp/damage_taken/attacker
#
# @within			uhc:in_game/player/pvp/damage_taken/
#
#
# @description		Attribution des dégâts mis à l'équipe de l'attaquant
#

scoreboard players operation #team uhc.id.team = @s uhc.id.team
scoreboard players operation @s uhc.player.damage_dealt.pvp += #temp uhc.player.damage_taken.temp
scoreboard players operation @s uhc.player.damage_dealt.pve -= #temp uhc.player.damage_taken.temp
scoreboard players operation @p[tag=uhc.temp.attacked] uhc.player.damage_taken.pve -= #temp uhc.player.damage_taken.temp
scoreboard players operation @p[tag=uhc.temp.attacked] uhc.player.damage_taken.pvp += #temp uhc.player.damage_taken.temp

# Bingo UHC
execute if score #bhc uhc.gamemode matches 1 if entity @p[tag=uhc.temp.attacked,predicate=!uhc:id/team] as @e[type=marker,tag=UHC,distance=0..,predicate=uhc:id/team] run function bhc:scores_calculator/kills/damage/attacker_team

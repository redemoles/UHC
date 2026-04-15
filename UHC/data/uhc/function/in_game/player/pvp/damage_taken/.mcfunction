
#> uhc:in_game/player/pvp/damage_taken/
#
# @within			uhc:in_game/player/tick
#
#
# @description		Détection dégâts pris 
#

scoreboard players operation #team uhc.id.team = @s uhc.id.team
scoreboard players operation #temp uhc.player.damage_taken.temp = @s uhc.player.damage_taken.temp
scoreboard players operation @s uhc.player.damage_taken.total += #temp uhc.player.damage_taken.temp
scoreboard players operation @s uhc.player.damage_taken.pve += #temp uhc.player.damage_taken.temp
scoreboard players set @s uhc.player.damage_taken.temp 0

tag @s add uhc.temp.attacked
execute on attacker as @s[type=minecraft:player,predicate=!uhc:id/team] in uhc:lobby run function uhc:in_game/player/pvp/damage_taken/attacker
tag @s remove uhc.temp.attacked

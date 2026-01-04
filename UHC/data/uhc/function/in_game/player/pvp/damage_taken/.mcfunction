
#> uhc:in_game/player/pvp/damage_taken/
#
# @within			uhc:in_game/player/tick
#
#
# @description		Détection dégâts pris 
#

tag @s add uhc.temp.attacked

scoreboard players operation #team uhc.id.team = @s uhc.id.team
scoreboard players operation #temp uhc.player.damage_taken.temp = @s uhc.player.damage_taken.temp
scoreboard players set @s uhc.player.damage_taken.temp 0
execute on attacker as @s[type=minecraft:player,predicate=!uhc:id_team] in uhc:lobby run function uhc:in_game/player/pvp/damage_taken/attacker

tag @s remove uhc.temp.attacked

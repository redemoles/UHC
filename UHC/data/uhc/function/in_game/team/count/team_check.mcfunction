
#> uhc:in_game/team/count/team_check
#
# @within			uhc:in_game/team/count/main
#
#
# @description		Vérifie si un joueur est connecté dans l'équipe
#

scoreboard players operation #team uhc.id.team = @s uhc.id.team
execute store result score @s uhc.player.online if entity @a[predicate=uhc:id/team]
execute if score @s uhc.player.online matches 1.. run scoreboard players add #temp uhc.player.online 1

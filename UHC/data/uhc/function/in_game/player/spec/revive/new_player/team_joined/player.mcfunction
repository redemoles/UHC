
#> uhc:in_game/player/spec/revive/new_player/team_joined/player
#
# @within			uhc:in_game/player/spec/revive/new_player/tick
#
#
# @description		Un nouveau joueur rejoint la partie
#

## Vérifie si l'équipe choisie est complète
scoreboard players operation #team uhc.id.team = @s uhc.menu.revive
execute store result score #temp uhc.data.setup run scoreboard players get @n[type=minecraft:marker,tag=UHC,distance=0..,predicate=uhc:id/team] uhc.team.size
execute if score #temp uhc.data.setup >= #team_size uhc.data.temp run return run function uhc:translation/in_game/player_spec_revive_cancel_team_full

## Équipe
scoreboard players operation @s uhc.id.team = #team uhc.id.team
tag @s add uhc.id.spawn.temp
# Nouvelle équipe
execute if score #temp uhc.data.setup matches 0 as @n[type=minecraft:marker,tag=uhc.inactive,distance=0..,predicate=uhc:id/team] run function uhc:in_game/player/spec/revive/new_player/team_joined/new_team
# Équipe en jeu
execute as @n[type=minecraft:marker,tag=UHC,distance=0..,predicate=uhc:id/team] run function uhc:in_game/player/spec/revive/new_player/team_joined/team

## Joueur ressuscité
# PvE
execute if score #pve uhc.data.temp matches 1.. run scoreboard players set @s uhc.effect.resistance -1
# Ironman
execute if score #minutes uhc.data.temp matches ..14 run tag @s add uhc.ironman
# Général
scoreboard players operation @s uhc.id.team = @s uhc.menu.revive
scoreboard players operation @s uhc.player.lives = #lives uhc.data.temp
scoreboard players set @s uhc.menu.revive 0
tag @s remove uhc.revive.temp
tag @s add uhc.player.dead
clear @s
function uhc:in_game/player/spec/revive/main

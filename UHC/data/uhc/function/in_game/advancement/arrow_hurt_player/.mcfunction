
#> uhc:in_game/advancement/arrow_hurt_player/
#
# @within			advancement #uhc:arrow_hurt_player
#
#
# @description		Le joueur s'est fait tiré dessus
#

advancement revoke @s only uhc:arrow_hurt_player
execute if score #pve uhc.data.temp matches 1.. run return fail
tag @s add uhc.temp

scoreboard players operation #team uhc.id.team = @s uhc.id.team

# Données du joueur
execute if score #team_health uhc.scenario matches 0 run function uhc:in_game/scenario/team_health/hp
execute if score #team_health uhc.scenario matches 0 if score #hp_chat uhc.data.setup matches 0 store result score #temp uhc.player.health.100 run scoreboard players operation @s uhc.scenario.team_health.player /= #05 uhc.data.numbers
execute if score #team_health uhc.scenario matches 0 if score #hp_chat uhc.data.setup matches 1 store result score #temp uhc.player.health.100 run scoreboard players get @s uhc.scenario.team_health.player
execute if score #hp_chat uhc.data.setup matches 0 run function uhc:in_game/advancement/arrow_hurt_player/tellraw_heart

execute if score #team_health uhc.scenario matches 1 run function uhc:in_game/scenario/team_health/
execute if score #team_health uhc.scenario matches 1 if score #hp_chat uhc.data.setup matches 0 store result score #temp uhc.player.health.100 run scoreboard players get @s uhc.scenario.team_health.team
execute if score #team_health uhc.scenario matches 1 if score #hp_chat uhc.data.setup matches 1 store result score #temp uhc.player.health.100 run scoreboard players get @s uhc.player.health.100
execute if score #hp_chat uhc.data.setup matches 1 run function uhc:in_game/advancement/arrow_hurt_player/tellraw_percent

tag @s remove uhc.temp

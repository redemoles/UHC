
#> uhc:in_game/player/misc/health/default
#
# @within			uhc:in_game/player/tick
#
#
# @description		Affichage des points de vie des joueurs
#

execute unless score @s uhc.player.data.check matches 1 run function uhc:in_game/player/data/main
scoreboard players operation @s uhc.player.health.20 = @s uhc.player.health.100
scoreboard players operation @s uhc.player.health.20 /= #05 uhc.data.numbers
scoreboard players operation @s uhc.player.health.check = @s uhc.player.health.auto
execute if score #team_health uhc.scenario matches 1 if score #game_progress uhc.game_progress matches 0 if entity @s[gamemode=!spectator,tag=uhc.spec] run function uhc:in_game/scenario/team_health/spec
execute if score #team_health uhc.scenario matches 1 if entity @s[gamemode=!spectator] run function uhc:in_game/scenario/team_health/player
execute if score #bhc bhc.scenario matches 51 in uhc:lobby run function uhc:in_game/player/misc/health/reverse


#> uhc:in_game/player/health
#
# @within			uhc:in_game/player/tick
#
#
# @description		
#

execute unless score @s uhc.player.data.check matches 1 run function uhc:in_game/player/data/main
scoreboard players operation @s uhc.player.health.20 = @s uhc.player.health.100
scoreboard players operation @s uhc.player.health.20 /= #05 uhc.data.numbers
scoreboard players operation @s uhc.player.health.check = @s uhc.player.health.auto
execute if score #team_health uhc.scenario matches 1 if score #game_progress uhc.game_progress matches 0 if entity @s[gamemode=!spectator,tag=uhc.spec] run return run function uhc:in_game/scenario/team_health/spec
execute if score #team_health uhc.scenario matches 1 if entity @s[gamemode=!spectator] run return run function uhc:in_game/scenario/team_health/player

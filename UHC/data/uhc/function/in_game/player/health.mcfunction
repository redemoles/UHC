
#> uhc:in_game/player/health
#
# @within			uhc:in_game/player/tick
#
#
# @description		
#

data modify storage uhc:temp player merge from entity @s
execute store result score @s uhc.player.health.100 run data get storage uhc:temp player.Health 5
scoreboard players operation @s uhc.player.health.check = @s uhc.player.health.100
scoreboard players operation @s uhc.player.health.check /= #05 uhc.data.numbers
execute if score #team_health uhc.scenario matches 1 if score #game_progress uhc.game_progress matches 0 if entity @s[gamemode=!spectator,tag=uhc.spec] run return run function uhc:in_game/scenario/team_health/spec
execute if score #team_health uhc.scenario matches 1 if entity @s[gamemode=!spectator] run return run function uhc:in_game/scenario/team_health/player

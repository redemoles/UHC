
#> uhc:in_game/player/misc/health/reverse
#
# @within			uhc:in_game/player/misc/health/default
#
#
# @description		Affichage des points de vie inversés des joueurs
#

execute if score #team_health uhc.scenario matches 0 run scoreboard players operation @s uhc.player.health.reverse.20 = @s uhc.player.health.20
execute if score #team_health uhc.scenario matches 1 run scoreboard players operation @s uhc.player.health.reverse.20 = @s uhc.scenario.team_health.team

scoreboard players operation #temp uhc.data.temp = #20 uhc.data.numbers
execute if score #team_health uhc.scenario matches 1 as @n[type=minecraft:marker,tag=UHC,distance=0..,predicate=uhc:id/team] run scoreboard players operation #temp uhc.data.temp *= @s uhc.player.lives
scoreboard players operation @s uhc.player.health.reverse.20 -= #temp uhc.data.temp
scoreboard players operation @s uhc.player.health.reverse.20 *= #-1 uhc.data.numbers

execute if score #team_health uhc.scenario matches 0 run scoreboard players operation @s uhc.player.health.reverse.100 = @s uhc.player.health.100
execute if score #team_health uhc.scenario matches 1 run scoreboard players operation @s uhc.player.health.reverse.100 = @s uhc.scenario.team_health.100

scoreboard players operation #temp uhc.data.temp *= #05 uhc.data.numbers
scoreboard players operation @s uhc.player.health.reverse.100 -= #temp uhc.data.temp
scoreboard players operation @s uhc.player.health.reverse.100 *= #-1 uhc.data.numbers

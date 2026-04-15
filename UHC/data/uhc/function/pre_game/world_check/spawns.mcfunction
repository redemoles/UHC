
#> uhc:pre_game/world_check/spawns
#
# @within			uhc:pre_game/menu/load/world_check/spawns
# @within			uhc:pre_game/timer/tick
#
# @description		Vérification des points de spawns des équipes
#

## Option sélectionné
execute if score @s uhc.id.spawn_check matches -2 run return run function uhc:pre_game/world_check/finished
execute unless score @s uhc.id.spawn_check matches 0 run function uhc:pre_game/world_check/spawns_2
execute if score @s uhc.spawn.check matches 33 run return run function uhc:pre_game/world_check/finished

scoreboard players reset @s uhc.id.spawn_check
scoreboard players enable @s uhc.id.spawn_check

# Spawn 01-04
execute if score @s uhc.spawn.check matches 01 run tp @s[gamemode=!creative] 720 300 720
execute if score @s uhc.spawn.check matches 02 run tp @s[gamemode=!creative] 720 300 -720
execute if score @s uhc.spawn.check matches 03 run tp @s[gamemode=!creative] -720 300 720
execute if score @s uhc.spawn.check matches 04 run tp @s[gamemode=!creative] -720 300 -720
# Spawn 05-08
execute if score @s uhc.spawn.check matches 05 run tp @s[gamemode=!creative] 840 300 360
execute if score @s uhc.spawn.check matches 06 run tp @s[gamemode=!creative] 840 300 -360
execute if score @s uhc.spawn.check matches 07 run tp @s[gamemode=!creative] -840 300 360
execute if score @s uhc.spawn.check matches 08 run tp @s[gamemode=!creative] -840 300 -360
# Spawn 09-12
execute if score @s uhc.spawn.check matches 09 run tp @s[gamemode=!creative] 360 300 840
execute if score @s uhc.spawn.check matches 10 run tp @s[gamemode=!creative] 360 300 -840
execute if score @s uhc.spawn.check matches 11 run tp @s[gamemode=!creative] -360 300 840
execute if score @s uhc.spawn.check matches 12 run tp @s[gamemode=!creative] -360 300 -840
# Spawn 13-16
execute if score @s uhc.spawn.check matches 13 run tp @s[gamemode=!creative] 960 300 0
execute if score @s uhc.spawn.check matches 14 run tp @s[gamemode=!creative] -960 300 0
execute if score @s uhc.spawn.check matches 15 run tp @s[gamemode=!creative] 0 300 960
execute if score @s uhc.spawn.check matches 16 run tp @s[gamemode=!creative] 0 300 -960
# Spawn 17-20
execute if score @s uhc.spawn.check matches 17 run tp @s[gamemode=!creative] 900 300 180
execute if score @s uhc.spawn.check matches 18 run tp @s[gamemode=!creative] 900 300 -180
execute if score @s uhc.spawn.check matches 19 run tp @s[gamemode=!creative] -900 300 180
execute if score @s uhc.spawn.check matches 20 run tp @s[gamemode=!creative] -900 300 -180
# Spawn 21-24
execute if score @s uhc.spawn.check matches 21 run tp @s[gamemode=!creative] 780 300 540
execute if score @s uhc.spawn.check matches 22 run tp @s[gamemode=!creative] 780 300 -540
execute if score @s uhc.spawn.check matches 23 run tp @s[gamemode=!creative] -780 300 540
execute if score @s uhc.spawn.check matches 24 run tp @s[gamemode=!creative] -780 300 -540
# Spawn 25-28
execute if score @s uhc.spawn.check matches 25 run tp @s[gamemode=!creative] 180 300 900
execute if score @s uhc.spawn.check matches 26 run tp @s[gamemode=!creative] 180 300 -900
execute if score @s uhc.spawn.check matches 27 run tp @s[gamemode=!creative] -180 300 900
execute if score @s uhc.spawn.check matches 28 run tp @s[gamemode=!creative] -180 300 -900
# Spawn 29-32
execute if score @s uhc.spawn.check matches 29 run tp @s[gamemode=!creative] 540 300 780
execute if score @s uhc.spawn.check matches 30 run tp @s[gamemode=!creative] 540 300 -780
execute if score @s uhc.spawn.check matches 31 run tp @s[gamemode=!creative] -540 300 780
execute if score @s uhc.spawn.check matches 32 run tp @s[gamemode=!creative] -540 300 -780

## Téléportations
execute at @s positioned over motion_blocking run tp @s[gamemode=!creative] ~ ~ ~

execute if score @s uhc.spawn.check matches 0..32 run function uhc:translation/pre_game/world_check_spawns_hotbar

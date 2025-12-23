
#> uhc:in_game/tp/spawn/default
#
# @within			uhc:in_game/player/death/
# @within			uhc:start/game_team/
#
# @description		Téléportation aux points d'apparition des équipes
#

scoreboard players set #can_respawn uhc.data.temp 0
execute if score #minutes uhc.data.temp matches 0.. if data entity @s respawn run scoreboard players set #can_respawn uhc.data.temp 1

scoreboard players set #respawn_dimension uhc.data.temp 11
execute store result score #respawn_dimension uhc.data.temp run data get entity @s respawn.dimension
execute if score #respawn_dimension uhc.data.temp matches ..11 run scoreboard players set #can_respawn uhc.data.temp 0

execute if score #can_respawn uhc.data.temp matches 1.. run return fail

# Spawn 00
execute if score @s uhc.id.spawn matches 00 positioned 0 300 0 run tp @s ~ ~ ~ 0.0 0.0
# Spawn 01-04
$execute if score @s uhc.id.spawn matches 01 positioned $(720) 300 $(720) run tp @s ~ ~ ~ 0.0 0.0
$execute if score @s uhc.id.spawn matches 02 positioned $(720) 300 -$(720) run tp @s ~ ~ ~ 0.0 0.0
$execute if score @s uhc.id.spawn matches 03 positioned -$(720) 300 $(720) run tp @s ~ ~ ~ 0.0 0.0
$execute if score @s uhc.id.spawn matches 04 positioned -$(720) 300 -$(720) run tp @s ~ ~ ~ 0.0 0.0
# Spawn 05-08
$execute if score @s uhc.id.spawn matches 05 positioned $(840) 300 $(360) run tp @s ~ ~ ~ 0.0 0.0
$execute if score @s uhc.id.spawn matches 06 positioned $(840) 300 -$(360) run tp @s ~ ~ ~ 0.0 0.0
$execute if score @s uhc.id.spawn matches 07 positioned -$(840) 300 $(360) run tp @s ~ ~ ~ 0.0 0.0
$execute if score @s uhc.id.spawn matches 08 positioned -$(840) 300 -$(360) run tp @s ~ ~ ~ 0.0 0.0
# Spawn 09-12
$execute if score @s uhc.id.spawn matches 09 positioned $(360) 300 $(840) run tp @s ~ ~ ~ 0.0 0.0
$execute if score @s uhc.id.spawn matches 10 positioned $(360) 300 -$(840) run tp @s ~ ~ ~ 0.0 0.0
$execute if score @s uhc.id.spawn matches 11 positioned -$(360) 300 $(840) run tp @s ~ ~ ~ 0.0 0.0
$execute if score @s uhc.id.spawn matches 12 positioned -$(360) 300 -$(840) run tp @s ~ ~ ~ 0.0 0.0
# Spawn 13-16
$execute if score @s uhc.id.spawn matches 13 positioned $(960) 300 $(0) run tp @s ~ ~ ~ 0.0 0.0
$execute if score @s uhc.id.spawn matches 14 positioned -$(960) 300 $(0) run tp @s ~ ~ ~ 0.0 0.0
$execute if score @s uhc.id.spawn matches 15 positioned $(0) 300 $(960) run tp @s ~ ~ ~ 0.0 0.0
$execute if score @s uhc.id.spawn matches 16 positioned $(0) 300 -$(960) run tp @s ~ ~ ~ 0.0 0.0

# Spawn 17-20
$execute if score @s uhc.id.spawn matches 17 positioned $(900) 300 $(180) run tp @s ~ ~ ~ 0.0 0.0
$execute if score @s uhc.id.spawn matches 18 positioned $(900) 300 -$(180) run tp @s ~ ~ ~ 0.0 0.0
$execute if score @s uhc.id.spawn matches 19 positioned -$(900) 300 $(180) run tp @s ~ ~ ~ 0.0 0.0
$execute if score @s uhc.id.spawn matches 20 positioned -$(900) 300 -$(180) run tp @s ~ ~ ~ 0.0 0.0
# Spawn 21-24
$execute if score @s uhc.id.spawn matches 21 positioned $(780) 300 $(540) run tp @s ~ ~ ~ 0.0 0.0
$execute if score @s uhc.id.spawn matches 22 positioned $(780) 300 -$(540) run tp @s ~ ~ ~ 0.0 0.0
$execute if score @s uhc.id.spawn matches 23 positioned -$(780) 300 $(540) run tp @s ~ ~ ~ 0.0 0.0
$execute if score @s uhc.id.spawn matches 24 positioned -$(780) 300 -$(540) run tp @s ~ ~ ~ 0.0 0.0
# Spawn 25-28
$execute if score @s uhc.id.spawn matches 25 positioned $(180) 300 $(900) run tp @s ~ ~ ~ 0.0 0.0
$execute if score @s uhc.id.spawn matches 26 positioned $(180) 300 -$(900) run tp @s ~ ~ ~ 0.0 0.0
$execute if score @s uhc.id.spawn matches 27 positioned -$(180) 300 $(900) run tp @s ~ ~ ~ 0.0 0.0
$execute if score @s uhc.id.spawn matches 28 positioned -$(180) 300 -$(900) run tp @s ~ ~ ~ 0.0 0.0
# Spawn 29-32
$execute if score @s uhc.id.spawn matches 29 positioned $(540) 300 $(780) run tp @s ~ ~ ~ 0.0 0.0
$execute if score @s uhc.id.spawn matches 30 positioned $(540) 300 -$(780) run tp @s ~ ~ ~ 0.0 0.0
$execute if score @s uhc.id.spawn matches 31 positioned -$(540) 300 $(780) run tp @s ~ ~ ~ 0.0 0.0
$execute if score @s uhc.id.spawn matches 32 positioned -$(540) 300 -$(780) run tp @s ~ ~ ~ 0.0 0.0

scoreboard players set @s uhc.player.tp 1

execute if score #live_1 uhc.data.temp matches 1.. run return run function uhc:in_game/tp/spawn/text with storage uhc:temp respawn_location
execute if score #tick_start uhc.data.temp matches ..100 if score #lives uhc.data.setup matches 1.. run function uhc:in_game/tp/spawn/text with storage uhc:temp respawn_location

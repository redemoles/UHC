
#> uhc:translation/in_game/tp_spawn_point
#
# @within			uhc:in_game/tp/spawn/point/macro_set
#
#
#
#

## FRA - Français / French
$execute if score #1_life_left uhc.data.temp matches 1.. if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"Point de réapparition : ","color":"#FFFFFF"},{"text":"$(x) $(z)","color":"#FFE73F","bold":true}]
$execute if score #tick_start uhc.data.temp matches ..200 if score #lives uhc.data.setup matches 1.. if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"Point de réapparition : ","color":"#FFFFFF"},{"text":"$(x) $(z)","color":"#FFE73F","bold":true}]

## ENG - English
$execute if score #1_life_left uhc.data.temp matches 1.. if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"Respawn point : ","color":"#FFFFFF"},{"text":"$(x) $(z)","color":"#FFE73F","bold":true}]
$execute if score #tick_start uhc.data.temp matches ..200 if score #lives uhc.data.setup matches 1.. if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"Respawn point : ","color":"#FFFFFF"},{"text":"$(x) $(z)","color":"#FFE73F","bold":true}]


#> bhc:in_game/scenario/02/timer/settings
#
# @within			bhc:start/main
#
#
# @description		Configuration du timer 
#

## BHC → Préparation Config pre-game
scoreboard players set #stepa_multiplier bhc.data.setup 2
scoreboard players set #stepb_multiplier bhc.data.setup 2
scoreboard players set #kills_multiplier bhc.data.setup 2
scoreboard players set #death_multiplier bhc.data.setup 4

## Traqueur
scoreboard players set #tracker uhc.data.temp 1
scoreboard players set @a[tag=uhc.player] bhc.target.dead.temp 0
scoreboard players set @e[type=minecraft:marker,tag=UHC,distance=0..] bhc.target.dead.temp 0
scoreboard players set @e[type=minecraft:marker,tag=UHC,distance=0..] bhc.target.sort 1

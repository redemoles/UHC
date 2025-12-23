
#> lobby:lobby_map/11/1
#
# @within			lobby:lobby_map/
#
#
# @description		Lobby 11 - Bingo UHC - Lobby Base
#

place template lobby:lobby_map/11/121 ~-23 ~-49 ~-23
place template lobby:lobby_map/11/111 ~-23 ~-17 ~-23

fillbiome ~-63 ~60 ~-63 ~64 ~60 ~64 minecraft:plains
fillbiome ~-63 ~56 ~-63 ~64 ~56 ~64 minecraft:plains
fillbiome ~-63 ~52 ~-63 ~64 ~52 ~64 minecraft:plains
fillbiome ~-63 ~48 ~-63 ~64 ~48 ~64 minecraft:plains
fillbiome ~-63 ~44 ~-63 ~64 ~44 ~64 minecraft:plains
fillbiome ~-63 ~40 ~-63 ~64 ~40 ~64 minecraft:plains
fillbiome ~-63 ~36 ~-63 ~64 ~36 ~64 minecraft:plains
fillbiome ~-63 ~32 ~-63 ~64 ~32 ~64 minecraft:plains
fillbiome ~-63 ~28 ~-63 ~64 ~28 ~64 minecraft:plains
fillbiome ~-63 ~24 ~-63 ~64 ~24 ~64 minecraft:plains
fillbiome ~-63 ~20 ~-63 ~64 ~20 ~64 minecraft:plains
fillbiome ~-63 ~16 ~-63 ~64 ~16 ~64 minecraft:plains
fillbiome ~-63 ~12 ~-63 ~64 ~12 ~64 minecraft:plains
fillbiome ~-63 ~08 ~-63 ~64 ~08 ~64 minecraft:plains
fillbiome ~-63 ~04 ~-63 ~64 ~04 ~64 minecraft:plains
fillbiome ~-63 ~00 ~-63 ~64 ~00 ~64 minecraft:plains
fillbiome ~-63 ~-4 ~-63 ~64 ~-4 ~64 minecraft:plains
fillbiome ~-63 ~-8 ~-63 ~64 ~-8 ~64 minecraft:plains

time set 1000
execute unless score #former_lobby lobby.structure.data matches 10..19 run tp @a[tag=!mgs.backroom,tag=!mgs.jump] ~ ~ ~ 0 0
execute if score #former_lobby lobby.structure.data matches 10..19 run tp @a[tag=!mgs.tc.player,tag=!mgs.tc.spec,tag=!mgs.backroom,tag=!mgs.jump] ~ ~ ~ 0 0

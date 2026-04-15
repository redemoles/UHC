
#> lobby:lobby_map/10/1
#
# @within			lobby:lobby_map/
#
#
# @description		Lobby 10 - Bingo UHC - Lobby Base
#

place template lobby:lobby_map/10/121 ~-23 ~-49 ~-23
place template lobby:lobby_map/10/111 ~-23 ~-17 ~-23

execute unless score #former_lobby lobby.structure.data matches 10..39 run tp @a[tag=!mgs.backroom,tag=!mgs.jump] ~ ~ ~ 0 0
execute if score #former_lobby lobby.structure.data matches 10..39 run tp @a[tag=!mgs.tc.player,tag=!mgs.tc.spec,tag=!mgs.backroom,tag=!mgs.jump] ~ ~ ~ 0 0

scoreboard players set #tick lobby.structure.data -8


#> lobby:lobby_map/13/11
#
# @within			lobby:lobby_map/
#
#
# @description		Lobby 13 - Bingo UHC - April Fool 2026
#

place template lobby:lobby_map/13/000 ~24 ~23 ~24
place template lobby:lobby_map/13/100 ~-23 ~23 ~24
place template lobby:lobby_map/13/200 ~-70 ~23 ~24
place template lobby:lobby_map/13/001 ~24 ~23 ~-23
place template lobby:lobby_map/13/101 ~-23 ~23 ~-23
place template lobby:lobby_map/13/201 ~-70 ~23 ~-23
place template lobby:lobby_map/13/002 ~24 ~23 ~-70
place template lobby:lobby_map/13/102 ~-23 ~23 ~-70
place template lobby:lobby_map/13/202 ~-70 ~23 ~-70

scoreboard players set #loaded lobby.structure.data 1

fill -23 47 -28 -19 51 -24 minecraft:stone

execute positioned 0 65 0 run fill ~-68 ~-2 ~22 ~69 ~1 ~-21 minecraft:light[level=0,waterlogged=false] replace minecraft:bedrock

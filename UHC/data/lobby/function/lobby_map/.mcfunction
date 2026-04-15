
#> lobby:lobby_map/
#
# @within			uhc:pre_game/timer/tick
#
#
# @description		Chargement du lobby
#

# Message démarrage
execute if score #loaded lobby.structure.data matches 0 if score #tick lobby.structure.data matches 0 run function uhc:translation/lobby/map_loading

# Lobby 01 - Bingo UHC - Granite
execute if score #lobby lobby.structure.data matches 01 if score #tick lobby.structure.data matches 01 positioned 0 65 0 run function lobby:lobby_map/01/1
execute if score #lobby lobby.structure.data matches 01 if score #tick lobby.structure.data matches 11 positioned 0 65 0 run function lobby:lobby_map/01/2

# Lobby 10 - Bingo UHC - Lobby Base
execute if score #former_lobby lobby.structure.data matches 30..39 if score #lobby lobby.structure.data matches 10..29 if score #tick lobby.structure.data matches 01 positioned 0 65 0 run function lobby:lobby_map/10/1
execute if score #former_lobby lobby.structure.data matches 30..39 if score #lobby lobby.structure.data matches 10..29 if score #tick lobby.structure.data matches -7 positioned 0 65 0 run function lobby:lobby_map/10/2
execute if score #former_lobby lobby.structure.data matches 30..39 if score #lobby lobby.structure.data matches 10..29 if score #tick lobby.structure.data matches -5 positioned 0 65 0 run function lobby:lobby_map/10/3
execute if score #former_lobby lobby.structure.data matches 30..39 if score #lobby lobby.structure.data matches 10..29 if score #tick lobby.structure.data matches -3 positioned 0 65 0 run function lobby:lobby_map/10/4
execute if score #former_lobby lobby.structure.data matches 30..39 if score #lobby lobby.structure.data matches 10..29 if score #tick lobby.structure.data matches -1 positioned 0 65 0 run function lobby:lobby_map/10/5
# Lobby 11 - Bingo UHC - Smalls biomes
execute if score #lobby lobby.structure.data matches 11 if score #tick lobby.structure.data matches 03 positioned 0 65 0 run function lobby:lobby_map/11/1
execute if score #lobby lobby.structure.data matches 11 if score #tick lobby.structure.data matches 05 positioned 0 65 0 run function lobby:lobby_map/11/3
execute if score #lobby lobby.structure.data matches 11 if score #tick lobby.structure.data matches 07 positioned 0 65 0 run function lobby:lobby_map/11/5
execute if score #lobby lobby.structure.data matches 11 if score #tick lobby.structure.data matches 09 positioned 0 65 0 run function lobby:lobby_map/11/7
execute if score #lobby lobby.structure.data matches 11 if score #tick lobby.structure.data matches 11 positioned 0 65 0 run function lobby:lobby_map/11/11
# Lobby 12 - Bingo UHC - Viking Era
execute if score #lobby lobby.structure.data matches 12 if score #tick lobby.structure.data matches 03 positioned 0 65 0 run function lobby:lobby_map/12/1
execute if score #lobby lobby.structure.data matches 12 if score #tick lobby.structure.data matches 05 positioned 0 65 0 run function lobby:lobby_map/12/3
execute if score #lobby lobby.structure.data matches 12 if score #tick lobby.structure.data matches 07 positioned 0 65 0 run function lobby:lobby_map/12/5
execute if score #lobby lobby.structure.data matches 12 if score #tick lobby.structure.data matches 09 positioned 0 65 0 run function lobby:lobby_map/12/7
execute if score #lobby lobby.structure.data matches 12 if score #tick lobby.structure.data matches 11 positioned 0 65 0 run function lobby:lobby_map/12/11
# Lobby 30 - Bingo UHC - April Fool 2026
execute if score #lobby lobby.structure.data matches 30 if score #tick lobby.structure.data matches 03 positioned 0 65 0 run function lobby:lobby_map/30/1
execute if score #lobby lobby.structure.data matches 30 if score #tick lobby.structure.data matches 05 positioned 0 65 0 run function lobby:lobby_map/30/3
execute if score #lobby lobby.structure.data matches 30 if score #tick lobby.structure.data matches 07 positioned 0 65 0 run function lobby:lobby_map/30/5
execute if score #lobby lobby.structure.data matches 30 if score #tick lobby.structure.data matches 09 positioned 0 65 0 run function lobby:lobby_map/30/7
execute if score #lobby lobby.structure.data matches 30 if score #tick lobby.structure.data matches 11 positioned 0 65 0 run function lobby:lobby_map/30/11

# Backroom
execute if score #tick lobby.structure.data matches 01 positioned 0 62 -640 run function lobby:lobby_map/backroom/

execute positioned 0 65 0 run fill ~-68 ~-3 ~23 ~69 ~-7 ~69 minecraft:light[level=0,waterlogged=false] replace minecraft:bedrock
execute positioned 0 65 0 run fill ~-68 ~-8 ~23 ~69 ~-12 ~69 minecraft:light[level=0,waterlogged=false] replace minecraft:bedrock
execute positioned 0 65 0 run fill ~-68 ~-13 ~23 ~69 ~-17 ~69 minecraft:light[level=0,waterlogged=false] replace minecraft:bedrock

execute positioned 0 65 0 run fill ~-68 ~-3 ~22 ~69 ~-7 ~-21 minecraft:light[level=0,waterlogged=false] replace minecraft:bedrock
execute positioned 0 65 0 run fill ~-68 ~-8 ~22 ~69 ~-12 ~-21 minecraft:light[level=0,waterlogged=false] replace minecraft:bedrock
execute positioned 0 65 0 run fill ~-68 ~-13 ~22 ~69 ~-17 ~-21 minecraft:light[level=0,waterlogged=false] replace minecraft:bedrock

execute positioned 0 65 0 run fill ~-68 ~-3 ~-22 ~69 ~-7 ~-68 minecraft:light[level=0,waterlogged=false] replace minecraft:bedrock
execute positioned 0 65 0 run fill ~-68 ~-8 ~-22 ~69 ~-12 ~-68 minecraft:light[level=0,waterlogged=false] replace minecraft:bedrock
execute positioned 0 65 0 run fill ~-68 ~-13 ~-22 ~69 ~-17 ~-68 minecraft:light[level=0,waterlogged=false] replace minecraft:bedrock

# Message fin
execute if score #loaded lobby.structure.data matches 1 run function uhc:translation/lobby/map_loaded
scoreboard players add #tick lobby.structure.data 1

execute if score #loaded lobby.structure.data matches 1 run scoreboard players operation #former_lobby lobby.structure.data = #lobby lobby.structure.data

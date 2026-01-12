
#> uhc:pre_game/menu/load/gamemode/nzl/
#
# @within			uhc:pre_game/menu/selection/gamemode/main
#
#
# @description		Activation/Désactivation Nuzlocke
#

scoreboard players set #vanilla uhc.gamemode 0
scoreboard players set #bhc uhc.gamemode 0
scoreboard players set #bhc bhc.scenario -1
scoreboard players set #mls uhc.gamemode 0
execute if score #nzl uhc.gamemode matches 1 run scoreboard players remove #nzl uhc.gamemode 2
#scoreboard players set #nzl nzl.scenario -1

data modify storage uhc:settings gamemode set value [{"text":"Nuzlocke","color":"#3F9FFF","bold":true},{"text":" UHC","color":"#FFE73F","bold":true,"italic":false}]
scoreboard players add #nzl uhc.gamemode 1
execute if score #nzl uhc.gamemode matches 0 run scoreboard players set #vanilla uhc.gamemode 1
scoreboard players set #nzl nzl.scenario 0

function uhc:pre_game/menu/load/gamemode/menu

execute if score #nzl uhc.gamemode matches 0 run tellraw @a [{"text":"Nuzlocke","color":"#3F9FFF","bold":true},{"text":" UHC","color":"#FFE73F","bold":true},{"text":" désactivé","color":"#FF3F3F","bold":false}]
execute if score #nzl uhc.gamemode matches 1 run tellraw @a [{"text":"Nuzlocke","color":"#3F9FFF","bold":true},{"text":" UHC","color":"#FFE73F","bold":true},{"text":" activé","color":"#3FE7FF","bold":false}]

execute if score #nzl uhc.gamemode matches 0 run scoreboard players remove #custom_arrow uhc.data.setup 1
execute if score #nzl uhc.gamemode matches 1 run scoreboard players add #custom_arrow uhc.data.setup 1

## Préparation Config pre-game
scoreboard players set #pve uhc.data.setup 2
scoreboard players set #pvp uhc.data.setup 40
scoreboard players set #shrink_1_time_left uhc.data.setup 80
scoreboard players set #shrink_2_time_left uhc.data.setup 110
scoreboard players set #shrink_3_time_left uhc.data.setup 120
scoreboard players set #shrink_1_length uhc.data.setup 20
scoreboard players set #shrink_2_length uhc.data.setup 5
scoreboard players set #shrink_3_length uhc.data.setup 5
scoreboard players set #shrink_1_size_start uhc.data.setup 1500
scoreboard players set #shrink_1_size_end uhc.data.setup 200
scoreboard players set #shrink_2_size_end uhc.data.setup 64
scoreboard players set #shrink_3_size_end uhc.data.setup 32
scoreboard players set #shrink_dynamic uhc.data.setup 1
scoreboard players set #map_height_timer uhc.data.setup 105

## Vies
scoreboard players set #lives uhc.data.setup 1
scoreboard players set #live_3 uhc.data.setup 0
scoreboard players set #live_2 uhc.data.setup 0
scoreboard players set #live_1 uhc.data.setup 0

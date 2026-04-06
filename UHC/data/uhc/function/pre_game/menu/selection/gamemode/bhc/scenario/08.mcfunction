
#> uhc:pre_game/menu/selection/gamemode/bhc/scenario/08
#
# @within			uhc:pre_game/menu/load/gamemode_bhc/
#
#
# @description		Activation BHC VIII
#

scoreboard players set #vanilla uhc.gamemode 0


scoreboard players set #mls uhc.gamemode 0
scoreboard players set #mls mls.scenario 0
scoreboard players set #nzl uhc.gamemode 0
scoreboard players set #nzl nzl.scenario -1

data modify storage uhc:settings gamemode set value [{"text":"Bingo","color":"#B73FFF","bold":true,"italic":false},{"text":" UHC","color":"#FFE73F","bold":true,"italic":false},{"text":" - ","color":"#FFFFFF","bold":true},{"text":"BHC VIII","color":"#FFE73F","bold":true}]
execute unless score #bhc bhc.scenario matches 08 as @a[scores={uhc.player.lang=061801}] run tellraw @s [{"text":"Bingo","color":"#B73FFF","bold":true},{"text":" UHC","color":"#FFE73F","bold":true},{"text":" - ","color":"#FFFFFF","bold":true},{"text":"BHC VIII","color":"#FFE73F","bold":true},{"text":" activé","color":"#3FE7FF","bold":false}]
execute unless score #bhc bhc.scenario matches 08 as @a[scores={uhc.player.lang=051407}] run tellraw @s [{"text":"Bingo","color":"#B73FFF","bold":true},{"text":" UHC","color":"#FFE73F","bold":true},{"text":" - ","color":"#FFFFFF","bold":true},{"text":"BHC VIII","color":"#FFE73F","bold":true},{"text":" enabled","color":"#3FE7FF","bold":false}]
scoreboard players set #bhc uhc.gamemode 1
scoreboard players set #bhc bhc.scenario 8

## UHC → Préparation Config pre-game
scoreboard players set #pve uhc.data.setup 2
scoreboard players set #pvp uhc.data.setup 40
scoreboard players set #shrink_1_time_left uhc.data.setup 75
scoreboard players set #shrink_2_time_left uhc.data.setup 110
scoreboard players set #shrink_3_time_left uhc.data.setup 120
scoreboard players set #shrink_1_length uhc.data.setup 30
scoreboard players set #shrink_2_length uhc.data.setup 5
scoreboard players set #shrink_3_length uhc.data.setup 5
scoreboard players set #shrink_1_size_start uhc.data.setup 2000
scoreboard players set #shrink_1_size_end uhc.data.setup 200
scoreboard players set #shrink_2_size_end uhc.data.setup 64
scoreboard players set #shrink_3_size_end uhc.data.setup 32
scoreboard players set #shrink_dynamic uhc.data.setup 1
scoreboard players set #map_height_timer uhc.data.setup 105

## Configuration du starter give
execute if score #bhc uhc.gamemode matches 1 run data modify storage uhc:settings Item_starter set value [{count: 1, Slot: 0b, id: "minecraft:oak_boat"}]

## Vies
scoreboard players set #lives uhc.data.setup 3
scoreboard players set #live_3 uhc.data.setup 0
scoreboard players set #live_2 uhc.data.setup 60
scoreboard players set #live_1 uhc.data.setup 105

## Scénario
scoreboard players set #blood_diamond uhc.scenario 1
scoreboard players set #biome_paranoia uhc.scenario 0

scoreboard players set #start_in_sky uhc.data.setup 1
scoreboard players set #tracker_allies uhc.data.setup 1
scoreboard players set #absorption uhc.data.setup 1
scoreboard players set #wolf_count uhc.data.setup 0

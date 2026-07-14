
#> uhc:pre_game/menu/selection/gamemode/bhc/settings/preset_scenario/00
#
# @within			uhc:pre_game/menu/load/gamemode_bhc/
#
#
# @description		Paramètres prédéfinis pour BHC Vanilla
#

## Paramètres minuteurs
scoreboard players set #pve uhc.data.setup 2
scoreboard players set #pvp uhc.data.setup 40
# Bordure
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
# Vies
scoreboard players set #lives uhc.data.setup 3
scoreboard players set #3_lives_left uhc.data.setup 0
scoreboard players set #2_lives_left uhc.data.setup 60
scoreboard players set #1_life_left uhc.data.setup 105

## Starter give
data modify storage uhc:settings Item_starter set value [{count: 1, Slot: 0b, id: "minecraft:oak_boat"}]

## Scénarios
scoreboard players set #mystery_scenarios uhc.data.setup 0
execute if score #biome_paranoia uhc.scenario matches 1 run function uhc:pre_game/menu/selection/scenario/list/biome_paranoia
execute if score #biome_paranoia uhc.scenario matches 2 run function uhc:pre_game/menu/selection/scenario/list/biome_paranoia
execute unless score #blood_diamond uhc.scenario matches 1 run function uhc:pre_game/menu/selection/scenario/list/blood_diamond/enable_progressive_mode
execute unless score #double_ores uhc.scenario matches 0 run function uhc:pre_game/menu/selection/scenario/list/double_ores
execute unless score #permakill uhc.scenario matches 0 run function uhc:pre_game/menu/selection/scenario/list/permakill

## Paramètres
scoreboard players set #start_in_sky uhc.data.setup 1
scoreboard players set #tracker_allies uhc.data.setup 1
scoreboard players set #absorption uhc.data.setup 1
scoreboard players set #wolf_count uhc.data.setup 0
scoreboard players set #diamond_armor uhc.data.setup 3

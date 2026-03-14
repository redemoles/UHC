
#> uhc:start/setup_players
#
# @within			uhc:start/countdown/start
#
#
# @description		Configuration des joueurs
#

execute as @a if score @s uhc.id.team matches 091..092 run function uhc:pre_game/menu/load/main/player/team_join/spec
execute as @a if score @s uhc.id.team matches 192 run function uhc:pre_game/menu/load/main/player/team_join/spec
execute as @a if score @s uhc.id.team matches 292 run function uhc:pre_game/menu/load/main/player/team_join/spec

## Préparation des joueurs
effect clear @a
clear @a
experience set @a 0 levels
experience set @a 0 points
gamemode adventure @a[tag=uhc.player]
gamemode spectator @a[tag=uhc.spec]
recipe take @a *

effect give @a[tag=uhc.player] minecraft:resistance infinite 4 true
effect give @a[tag=uhc.player] minecraft:blindness infinite 4 true
effect give @a[tag=uhc.player] minecraft:slowness infinite 9 true
effect give @a[tag=uhc.player] minecraft:weakness infinite 9 true
effect give @a[tag=uhc.player] minecraft:invisibility infinite 0 true
execute as @a[tag=uhc.player] run attribute @s minecraft:jump_strength base set 0
execute unless score #no_fall uhc.scenario matches 1 as @a[tag=uhc.player] run attribute @s minecraft:fall_damage_multiplier base set 1.0
execute if score #version_pvp uhc.data.setup matches 1 as @a[tag=uhc.player] run attribute @s minecraft:attack_speed base set 1024
execute if score #version_pvp uhc.data.setup matches 1 as @a[tag=uhc.player] run attribute @s minecraft:attack_knockback base set 0.55

advancement revoke @a everything

scoreboard objectives remove uhc.player.online
scoreboard objectives add uhc.player.online dummy
scoreboard players set @a[tag=uhc.player] uhc.player.online 1

execute if score #friendly_fire uhc.data.setup matches 0 run function uhc:in_game/player/pvp/settings/friendly_fire/disable
execute if score #friendly_fire uhc.data.setup matches 1 run function uhc:in_game/player/pvp/settings/friendly_fire/enable

## Starter
data modify storage uhc:temp Item_starter set from storage uhc:settings Item_starter
data modify storage uhc:temp Item_starter[0].components merge value {}
execute if data storage uhc:temp Item_starter[0] run function uhc:start/item_starter with storage uhc:temp Item_starter[0]

## Scenarios
# Ironman
tag @a[tag=uhc.player] add uhc.ironman
execute store result score #player uhc.scenario.ironman if entity @a[tag=uhc.player]

# Best PvE
execute if score #best_pve uhc.scenario matches 1 run tag @a[tag=uhc.player] add uhc.scenario.best_pve

# Gone Fishing
execute if score #gone_fishing uhc.scenario matches 1 run give @a[tag=uhc.player] minecraft:fishing_rod[enchantments={"minecraft:luck_of_the_sea":255,"minecraft:lure":3},unbreakable={}]
execute if score #gone_fishing uhc.scenario matches 1 run give @a[tag=uhc.player] minecraft:anvil 64
execute if score #gone_fishing uhc.scenario matches 1 run experience set @a[tag=uhc.player] 10000 levels

# Sound Paranoia
execute if score #sound_paranoia uhc.scenario matches 1 as @a[tag=uhc.player] store result score @s uhc.scenario.sound_paranoia.wait run random value 90..450

## Nombre de vie
scoreboard players set @a[tag=uhc.spec] uhc.player.lives 0
scoreboard players operation @a[tag=uhc.player] uhc.player.lives = #lives uhc.data.setup
scoreboard players set @a uhc.player.death 0
scoreboard players set @a uhc.timer.respawn 0

## Nombre de joueurs en jeu
execute store result score #player uhc.data.temp.inv if entity @a[tag=uhc.player]
scoreboard players operation #player uhc.data.temp = #player uhc.data.temp.inv

## Configuration Worldborder
scoreboard players operation #shrink_1_length uhc.data.temp = #shrink_1_length uhc.data.setup
scoreboard players operation #shrink_2_length uhc.data.temp = #shrink_2_length uhc.data.setup
scoreboard players operation #shrink_3_length uhc.data.temp = #shrink_3_length uhc.data.setup
scoreboard players operation #border_size uhc.data.temp = #shrink_1_size_start uhc.data.setup
scoreboard players operation #shrink_1_size_start uhc.data.temp = #shrink_1_size_start uhc.data.setup
scoreboard players operation #shrink_1_size_end uhc.data.temp = #shrink_1_size_end uhc.data.setup
scoreboard players operation #shrink_2_size_end uhc.data.temp = #shrink_2_size_end uhc.data.setup
scoreboard players operation #shrink_3_size_end uhc.data.temp = #shrink_3_size_end uhc.data.setup
scoreboard players operation #shrink_1_length uhc.data.temp = #shrink_1_length uhc.data.setup
scoreboard players operation #shrink_2_length uhc.data.temp = #shrink_2_length uhc.data.setup
scoreboard players operation #shrink_3_length uhc.data.temp = #shrink_3_length uhc.data.setup
function uhc:pre_game/config/timer

scoreboard players operation #anonyme_team uhc.data.temp = #anonyme_team uhc.data.setup

## Équipe, Id, Markers, Spawns et TP
# Remettre les joueurs dans leur équipes (si un mini-jeu du lobby les a fait leave)
execute unless score #nzl uhc.gamemode matches 1 if score #anonyme_team uhc.data.setup matches 0 as @a[tag=uhc.player] run function uhc:in_game/player/team_join/vanilla
execute unless score #nzl uhc.gamemode matches 1 if score #anonyme_team uhc.data.setup matches 1 run team join 091 @a[tag=uhc.player]
execute if score #nzl uhc.gamemode matches 1 as @a[tag=uhc.player] run function uhc:in_game/player/team_join/nzl

# Random Team
execute as @a[scores={uhc.id.team=101..}] run scoreboard players operation @s uhc.id.team %= #100 uhc.data.numbers
execute unless score #biome_paranoia uhc.scenario matches 2 as @a[tag=uhc.player] run function uhc:pre_game/player_and_team/team_join

# Biome Paranoia
scoreboard players set #team uhc.id.team 0
execute if score #biome_paranoia uhc.scenario matches 2 in uhc:lobby run function uhc:start/scenario/biome_paranoia/

# Bingo UHC
#execute if score #bhc bhc.scenario matches 02 run function bhc:start/team_shuffle/

# Id, Markers, Spawns et TP
execute if score #ffa uhc.data.setup matches 0 in uhc:lobby run function uhc:start/game_team/
execute if score #ffa uhc.data.setup matches 1.. run function uhc:start/game_ffa/

# Hotbar
execute if score #player uhc.data.temp matches ..1 run data modify storage uhc:temp hotbar.player set value ""
execute if score #team uhc.data.temp matches ..1 run data modify storage uhc:temp hotbar.team set value ""
execute if score #player uhc.data.temp matches 2.. run data modify storage uhc:temp hotbar.player set value "s"
execute if score #team uhc.data.temp matches 2.. run data modify storage uhc:temp hotbar.team set value "s"

execute in minecraft:overworld positioned 0 200 0 positioned over motion_blocking run tp @a[tag=uhc.spec] ~3 ~1 ~-3 45.0 15.0

## Génération des rivières
execute if score #river_solid uhc.data.setup matches 0 in minecraft:overworld run function uhc:start/river/vanilla
execute if score #river_solid uhc.data.setup matches 1 in minecraft:overworld run function uhc:start/river/solid

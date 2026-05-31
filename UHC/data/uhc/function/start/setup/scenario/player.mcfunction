
#> uhc:start/setup/scenario/player
#
# @within			uhc:start/setup/player/when_tp
#
#
# @description		Configuration des joueurs
#

# Ironman
execute if score #minutes uhc.data.temp matches 15.. run tag @s add uhc.ironman
execute if score #minutes uhc.data.temp matches 15.. run scoreboard players remove #player uhc.scenario.ironman 1

# Best PvE
execute if score #best_pve uhc.scenario matches 1 run tag @s add uhc.scenario.best_pve

# Gone Fishing
execute if score #gone_fishing uhc.scenario matches 1 run give @s minecraft:fishing_rod[enchantments={"minecraft:luck_of_the_sea":255,"minecraft:lure":3},unbreakable={}]
execute if score #gone_fishing uhc.scenario matches 1 run give @s minecraft:anvil 64
execute if score #gone_fishing uhc.scenario matches 1 run experience set @s 10000 levels

# Sound Paranoia
execute if score #sound_paranoia uhc.scenario matches 1 store result score @s uhc.scenario.sound_paranoia.wait run random value 90..450

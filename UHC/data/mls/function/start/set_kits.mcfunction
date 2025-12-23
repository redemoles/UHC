
#> mls:start/set_kits
#
# @within			mls:start/setup_players
#
#
# @description		Sélection des kits
#

scoreboard players add #number mls.player.kit 1
execute if score #number mls.player.kit matches 8 run scoreboard players set #number mls.player.kit 1
scoreboard players operation @s mls.player.kit = #number mls.player.kit

execute if score @s mls.player.kit matches 1 run tag @s add mls.kit.enchanteur
execute if score @s mls.player.kit matches 2 run tag @s add mls.kit.endertan
execute if score @s mls.player.kit matches 3 run tag @s add mls.kit.pyrolienne
execute if score @s mls.player.kit matches 4 run tag @s add mls.kit.sorcerique
execute if score @s mls.player.kit matches 5 run tag @s add mls.kit.tiranic
execute if score @s mls.player.kit matches 6 run tag @s add mls.kit.usain_bottes
execute if score @s mls.player.kit matches 7 run tag @s add mls.kit.whealer

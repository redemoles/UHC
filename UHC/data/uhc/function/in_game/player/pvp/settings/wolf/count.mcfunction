
#> uhc:in_game/player/pvp/settings/wolf/count
#
# @within			uhc:in_game/timer/tick
#
#
# @description		Vérification du nombre de loups par un joueur
#

$execute store result score #temp uhc.player.wolf if entity @e[type=minecraft:wolf,nbt={Owner:$(uuid)},scores={uhc.player.wolf=1}]
$execute unless score #temp uhc.player.wolf >= #wolf_count uhc.data.setup as @e[type=minecraft:wolf,nbt={Owner:$(uuid)}] run scoreboard players set @s uhc.player.wolf 1
$execute as @e[type=minecraft:wolf,nbt={Owner:$(uuid)}] unless score @s uhc.player.wolf matches 1 run kill @s

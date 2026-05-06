
#> uhc:in_game/player/death/location/event
#
# @within			uhc:in_game/player/death/location/data
#
#
# @description		
#

## Mort définitive
execute if score @s uhc.player.lives matches ..0 run scoreboard players set @s uhc.player.death.cancel_additional_item 0
$execute if score @s uhc.player.lives matches ..0 in $(dim) positioned $(x) $(y) $(z) run tp @s ~ ~ ~

## Drop d'items
$execute unless score @s uhc.player.death.cancel_additional_item matches 1 if score #pvp uhc.data.temp matches ..0 in $(dim) positioned $(x) $(y) $(z) run function uhc:in_game/player/death/location/item_drop/main
$execute unless score @s uhc.player.death.cancel_additional_item matches 1 if score #pvp uhc.data.temp matches 1.. if score @s uhc.player.lives matches ..0 in $(dim) positioned $(x) $(y) $(z) run function uhc:in_game/player/death/location/item_drop/main
$execute if score #death_message uhc.data.temp matches 0..4 in $(dim) positioned $(x) $(y) $(z) run playsound minecraft:entity.lightning_bolt.thunder weather @a[distance=0..] ~ ~ ~ 100 1 1

## Scénarios
# Red Arrows
$execute if score #red_arrows uhc.scenario matches 1 in $(dim) positioned $(x) $(y) $(z) unless dimension minecraft:the_nether positioned over motion_blocking run function uhc:in_game/scenario/red_arrows/kill

scoreboard players set @s uhc.player.death.cancel_additional_item 0
scoreboard players set @s uhc.player.death.armor_additional_item 0

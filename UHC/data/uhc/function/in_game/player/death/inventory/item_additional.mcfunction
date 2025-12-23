
#> uhc:in_game/player/death/inventory/item_additional
#
# @within			uhc:in_game/player/death/inventory/location_event
#
#
# @description		
#

# Item additionnels
execute unless score #cancel_additional_item uhc.data.temp matches 1 if score #pvp uhc.data.temp matches ..0 run function uhc:in_game/player/death/inventory/item_additional_custom
execute unless score #cancel_additional_item uhc.data.temp matches 1 if score #pvp uhc.data.temp matches 1.. if score @s uhc.player.lives matches ..0 run function uhc:in_game/player/death/inventory/item_additional_custom

# Bookception
execute unless score #cancel_additional_item uhc.data.temp matches 1 if score #bookception uhc.scenario matches 1 if score #pvp uhc.data.temp matches ..0 run function uhc:in_game/scenario/bookception/
execute unless score #cancel_additional_item uhc.data.temp matches 1 if score #bookception uhc.scenario matches 1 if score #pvp uhc.data.temp matches 1.. if score @s uhc.player.lives matches ..0 run function uhc:in_game/scenario/bookception/

# Bingo UHC - Ère Viking
execute unless score #cancel_additional_item uhc.data.temp matches 1 if score #bhc bhc.scenario matches 02 if score #pvp uhc.data.temp matches ..0 if score @s uhc.player.lives matches 1.. run function uhc:in_game/player/death/inventory/bhc/item_randomizer

# Red Arrows
execute if score #red_arrows uhc.scenario matches 1 unless dimension minecraft:the_nether positioned over motion_blocking run function uhc:in_game/scenario/red_arrows/

scoreboard players set #cancel_additional_item uhc.data.temp 0

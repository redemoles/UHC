
#> uhc:pre_game/menu/detector/main
#
# @within			advancement #uhc:inventory_menu
#
#
# @description		Active les modifications du menu si la partie n'a pas démarré
#

execute as @s[scores={uhc.player.online=1},gamemode=!creative] unless entity @s[tag=!mgs.tc.spec,tag=mgs.tc.player] unless score @s uhc.menu.settings.inventory matches 2..5 if score #minutes uhc.data.temp matches -1 if score #seconds uhc.data.temp matches -1 run function uhc:pre_game/menu/detector/menu
execute as @s[tag=!mgs.tc.spec,tag=mgs.tc.player,scores={uhc.player.online=1},gamemode=!creative] unless score @s uhc.menu.settings.inventory matches 2..5 if score #minutes uhc.data.temp matches -1 if score #seconds uhc.data.temp matches -1 run return run function lobby:mini_games/inventory
execute if score @s uhc.player.online matches 1 if score @s uhc.menu.settings.inventory matches 2 run function uhc:pre_game/menu/load/settings/inventory/start_and_rewards/item_starter/new_change
execute if score @s uhc.player.online matches 1 if score @s uhc.menu.settings.inventory matches 3 run function uhc:pre_game/menu/load/settings/inventory/start_and_rewards/item_ironman/new_change
execute if score @s uhc.player.online matches 1 if score @s uhc.menu.settings.inventory matches 4 run function uhc:pre_game/menu/load/settings/inventory/start_and_rewards/item_notch_totem/new_change
execute if score @s uhc.player.online matches 1 if score @s uhc.menu.settings.inventory matches 5 run function uhc:pre_game/menu/load/settings/inventory/start_and_rewards/item_additional/new_change
advancement revoke @s only uhc:inventory_menu

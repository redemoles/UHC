
#> uhc:pre_game/menu/reset/host
#
# @within			uhc:pre_game/player_and_team/new_player
#
#
# @description		Réinitialisation de l'inventaire
#

execute if score @s uhc.menu.gamemode.bhc matches 51.. at @s unless entity @p[tag=uhc.host,distance=0.1..,scores={uhc.menu.gamemode.bhc=51..}] run function uhc:pre_game/menu/selection/gamemode/bhc/grids_check/close
execute unless score #language uhc.player.lang matches 1.. run function uhc:pre_game/menu/load/language/default_lang
execute if score #language uhc.player.lang matches 1.. run function uhc:pre_game/menu/load/main/host/menu

execute if score #language uhc.player.lang matches 1.. run tag @s add uhc.menu.main.host
scoreboard players set @s uhc.menu.main.player 0

function uhc:pre_game/menu/reset/all

advancement revoke @s only uhc:inventory_menu

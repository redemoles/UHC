
#> uhc:pre_game/menu/reset/player
#
# @within			uhc:pre_game/player_and_team/new_player
#
#
# @description		Réinitialisation de l'inventaire
#



function uhc:pre_game/menu/load/main/player/menu

execute if score #language uhc.player.lang matches 1.. run tag @s remove uhc.menu.main.host
execute unless score @s uhc.menu.main.player matches 1.. run scoreboard players set @s uhc.menu.main.player 1

function uhc:pre_game/menu/reset/all

advancement revoke @s only uhc:inventory_menu

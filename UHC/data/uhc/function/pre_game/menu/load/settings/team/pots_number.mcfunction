
#> uhc:pre_game/menu/load/settings/team/pots_number
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

execute if score #random_team_pots uhc.data.setup matches 2.. run scoreboard players set #random_team_pots uhc.data.setup 0
scoreboard players add #random_team_pots uhc.data.setup 1
execute if score #random_team_pots uhc.data.setup matches 2.. run scoreboard players operation #random_team_pots uhc.data.setup = #team_size uhc.data.setup

scoreboard players set @a[scores={uhc.menu.main.player=1..}] uhc.player.disconnect 1
execute as @a[scores={uhc.menu.main.player=1..}] at @s run function uhc:pre_game/menu/load/main/player/menu
scoreboard players set @a[scores={uhc.menu.main.player=1..}] uhc.player.disconnect 0

function uhc:pre_game/menu/load/settings/menu

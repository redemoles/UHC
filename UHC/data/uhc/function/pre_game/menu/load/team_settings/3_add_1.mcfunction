
#> uhc:pre_game/menu/load/gamemode_mls/3_add_1
#
# @within			uhc:pre_game/menu/selection/settings/host
#
#
# @description		Menu
#

# Nombre de joueur par équipe
execute if score @s uhc.menu.team_settings matches 2 unless score #team_size uhc.data.setup matches 64.. run scoreboard players add #team_size uhc.data.setup 1


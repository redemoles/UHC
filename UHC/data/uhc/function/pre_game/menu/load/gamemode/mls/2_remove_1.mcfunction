
#> uhc:pre_game/menu/load/gamemode_mls/2_remove_1
#
# @within			uhc:pre_game/menu/selection/settings/host
#
#
# @description		Menu
#

# Nombre de taupe en jeu
execute if score @s uhc.menu.gamemode.mls.moles_per_game matches 1 unless score #amount_moles mls.data.player matches ..1 if score #mls mls.scenario matches 2 run scoreboard players remove #amount_moles mls.data.player 1


# Nombre de taupe par équipe
execute if score @s uhc.menu.gamemode.mls.moles_per_team matches 1 unless score #amount_moles mls.data.team matches ..1 if score #mls mls.scenario matches 1 run scoreboard players remove #amount_moles mls.data.team 1


# Nombre de supertaupe par équipe de taupe
execute if score @s uhc.menu.gamemode.mls.supermoles_per_team matches 1 unless score #amount_supermoles mls.data.team matches ..0 run scoreboard players remove #amount_supermoles mls.data.team 1


# Nombre d'équipe de taupe
execute if score @s uhc.menu.gamemode.mls.teams_of_moles matches 1 unless score #amount_team mls.data.team matches ..1 run scoreboard players remove #amount_team mls.data.team 1


# Nombre d'équipe de supertaupe
execute if score @s uhc.menu.gamemode.mls.teams_of_supermoles matches 1 unless score #amount_superteam mls.data.team matches ..0 run scoreboard players remove #amount_superteam mls.data.team 1


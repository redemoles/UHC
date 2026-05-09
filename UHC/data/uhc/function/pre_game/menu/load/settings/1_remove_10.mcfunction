
#> uhc:pre_game/menu/load/settings/1_remove_10
#
# @within			uhc:pre_game/menu/selection/settings/host
#
#
# @description		Menu
#

# Période de Résistance
execute if score @s uhc.menu.settings.pve matches 1 run scoreboard players remove #pve uhc.data.setup 10
execute if score @s uhc.menu.settings.pve matches 1 if score #pve uhc.data.setup matches ..0 run scoreboard players set #pve uhc.data.setup 0

# Nbr de vie
execute if score @s uhc.menu.settings.pve matches 11 unless score #lives uhc.data.setup matches 1 run scoreboard players set #lives uhc.data.setup 1

# Descente à 2 vies
execute if score @s uhc.menu.settings.pve matches 3 run scoreboard players remove #2_lives_left uhc.data.setup 10
execute if score @s uhc.menu.settings.pve matches 3 if score #2_lives_left uhc.data.setup matches ..0 run scoreboard players set #2_lives_left uhc.data.setup 0
execute if score @s uhc.menu.settings.pve matches 3..10 if score #2_lives_left uhc.data.setup < #3_lives_left uhc.data.setup run scoreboard players operation #3_lives_left uhc.data.setup = #2_lives_left uhc.data.setup

# Descente à 1 vie
execute if score @s uhc.menu.settings.pve matches 2 run scoreboard players remove #1_life_left uhc.data.setup 10
execute if score @s uhc.menu.settings.pve matches 2 if score #1_life_left uhc.data.setup matches ..0 run scoreboard players set #1_life_left uhc.data.setup 0
execute if score @s uhc.menu.settings.pve matches 2..10 if score #1_life_left uhc.data.setup < #2_lives_left uhc.data.setup run scoreboard players operation #2_lives_left uhc.data.setup = #1_life_left uhc.data.setup

# Période sans PvP
execute if score @s uhc.menu.settings.pvp matches 1 run scoreboard players remove #pvp uhc.data.setup 10
execute if score @s uhc.menu.settings.pvp matches 1 if score #pvp uhc.data.setup matches ..0 run scoreboard players set #pvp uhc.data.setup 0









# Durabilité des boucliers
execute if score @s uhc.menu.settings.pvp matches 12 run scoreboard players remove #shield_percent uhc.data.setup 10
execute if score @s uhc.menu.settings.pvp matches 12 if score #shield_percent uhc.data.setup matches ..0 run scoreboard players set #shield_percent uhc.data.setup 0

# Limite de loups
execute if score @s uhc.menu.settings.pvp matches 13 run scoreboard players remove #wolf_count uhc.data.setup 10
execute if score @s uhc.menu.settings.pvp matches 13 if score #wolf_count uhc.data.setup matches ..0 run scoreboard players set #wolf_count uhc.data.setup 0

# Border - Taille initiale
execute if score @s uhc.menu.settings.border matches 1 run scoreboard players remove #shrink_1_size_start uhc.data.setup 50

# Meet-up - Taille initiale, Taille finale, Temps début de réduction
execute if score @s uhc.menu.settings.border matches 11 run scoreboard players remove #shrink_1_size_start uhc.data.setup 50
execute if score @s uhc.menu.settings.border matches 12 run scoreboard players remove #shrink_1_size_end uhc.data.setup 50
execute if score @s uhc.menu.settings.border matches 13 run scoreboard players remove #shrink_1_time_left uhc.data.setup 10

# Shrink 1 - Taille initiale, Taille finale, Temps début de réduction
execute if score @s uhc.menu.settings.border matches 21 run scoreboard players remove #shrink_1_size_end uhc.data.setup 50
execute if score @s uhc.menu.settings.border matches 22 run scoreboard players remove #shrink_2_size_end uhc.data.setup 50
execute if score @s uhc.menu.settings.border matches 23 run scoreboard players remove #shrink_2_time_left uhc.data.setup 10

# Shrink 2 - Taille initiale, Taille finale, Temps début de réduction
execute if score @s uhc.menu.settings.border matches 31 run scoreboard players remove #shrink_2_size_end uhc.data.setup 50
execute if score @s uhc.menu.settings.border matches 32 run scoreboard players remove #shrink_3_size_end uhc.data.setup 50
execute if score @s uhc.menu.settings.border matches 33 run scoreboard players remove #shrink_3_time_left uhc.data.setup 10

# Meet-up, Shrink 1, Shrink 2
execute if score @s uhc.menu.settings.border matches 1.. if score #shrink_1_size_start uhc.data.setup matches ..100 run scoreboard players set #shrink_1_size_start uhc.data.setup 100
execute if score @s uhc.menu.settings.border matches 1.. if score #shrink_1_size_end uhc.data.setup matches ..1 run scoreboard players set #shrink_1_size_end uhc.data.setup 2
execute if score @s uhc.menu.settings.border matches 1.. if score #shrink_2_size_end uhc.data.setup matches ..1 run scoreboard players set #shrink_2_size_end uhc.data.setup 2
execute if score @s uhc.menu.settings.border matches 1.. if score #shrink_3_size_end uhc.data.setup matches ..1 run scoreboard players set #shrink_3_size_end uhc.data.setup 2

execute if score @s uhc.menu.settings.border matches 1.. if score #shrink_1_size_end uhc.data.setup > #shrink_1_size_start uhc.data.setup run scoreboard players operation #shrink_1_size_end uhc.data.setup = #shrink_1_size_start uhc.data.setup
execute if score @s uhc.menu.settings.border matches 1.. if score #shrink_2_size_end uhc.data.setup > #shrink_1_size_end uhc.data.setup run scoreboard players operation #shrink_2_size_end uhc.data.setup = #shrink_1_size_end uhc.data.setup
execute if score @s uhc.menu.settings.border matches 1.. if score #shrink_3_size_end uhc.data.setup > #shrink_2_size_end uhc.data.setup run scoreboard players operation #shrink_3_size_end uhc.data.setup = #shrink_2_size_end uhc.data.setup

execute if score @s uhc.menu.settings.border matches 1.. if score #shrink_1_time_left uhc.data.setup matches ..0 run scoreboard players set #shrink_1_time_left uhc.data.setup 0
execute if score @s uhc.menu.settings.border matches 1.. if score #shrink_2_time_left uhc.data.setup < #shrink_1_time_left uhc.data.setup run scoreboard players operation #shrink_2_time_left uhc.data.setup = #shrink_1_time_left uhc.data.setup
execute if score @s uhc.menu.settings.border matches 1.. if score #shrink_3_time_left uhc.data.setup < #shrink_2_time_left uhc.data.setup run scoreboard players operation #shrink_3_time_left uhc.data.setup = #shrink_2_time_left uhc.data.setup

# Meet-up - Temps de réduction
execute if score @s uhc.menu.settings.border matches 14 run scoreboard players remove #shrink_1_length uhc.data.setup 10
execute if score @s uhc.menu.settings.border matches 1.. if score #shrink_1_length uhc.data.setup matches ..0 run scoreboard players set #shrink_1_length uhc.data.setup 0

# Shrink 1 - Temps de réduction
execute if score @s uhc.menu.settings.border matches 24 run scoreboard players remove #shrink_2_length uhc.data.setup 10
execute if score @s uhc.menu.settings.border matches 1.. if score #shrink_2_length uhc.data.setup matches ..0 run scoreboard players set #shrink_2_length uhc.data.setup 0

# Shrink 2 - Temps de réduction
execute if score @s uhc.menu.settings.border matches 34 run scoreboard players remove #shrink_3_length uhc.data.setup 10
execute if score @s uhc.menu.settings.border matches 1.. if score #shrink_3_length uhc.data.setup matches ..0 run scoreboard players set #shrink_3_length uhc.data.setup 0

# Limite Y - Hauteur
execute if score @s uhc.menu.settings.border matches 41 run scoreboard players remove #map_height_limit_above uhc.data.setup 10
execute if score @s uhc.menu.settings.border matches 41 if score #map_height_limit_above uhc.data.setup matches ..64 run scoreboard players set #map_height_limit_above uhc.data.setup 64

# Limite Y - Profondeur
execute if score @s uhc.menu.settings.border matches 42 run scoreboard players remove #map_height_limit_below uhc.data.setup 10
execute if score @s uhc.menu.settings.border matches 42 if score #map_height_limit_below uhc.data.setup matches ..-64 run scoreboard players set #map_height_limit_below uhc.data.setup -64

# Limite Y - Temps d'activation
execute if score @s uhc.menu.settings.border matches 43 run scoreboard players remove #map_height_timer uhc.data.setup 10
execute if score @s uhc.menu.settings.border matches 43 if score #map_height_timer uhc.data.setup matches ..0 run scoreboard players set #map_height_timer uhc.data.setup 0
























# Nombre de joueur par équipe
execute if score @s uhc.menu.settings.team matches 2 run scoreboard players remove #team_size uhc.data.setup 4
execute if score @s uhc.menu.settings.team matches 2 if score #team_size uhc.data.setup matches ..1 run scoreboard players set #team_size uhc.data.setup 1

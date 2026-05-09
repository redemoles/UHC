
#> uhc:pre_game/menu/load/settings/3_add_1
#
# @within			uhc:pre_game/menu/selection/settings/host
#
#
# @description		Menu
#

# Période de Résistance
execute if score @s uhc.menu.settings.pve matches 1 unless score #pve uhc.data.setup matches 300.. run scoreboard players add #pve uhc.data.setup 1


# Nbr de vie
execute if score @s uhc.menu.settings.pve matches 11 unless score #lives uhc.data.setup matches 3 run scoreboard players add #lives uhc.data.setup 1

# Descente à 2 vies
execute if score @s uhc.menu.settings.pve matches 3 unless score #2_lives_left uhc.data.setup matches 300.. run scoreboard players add #2_lives_left uhc.data.setup 1

execute if score @s uhc.menu.settings.pve matches 3..10 if score #2_lives_left uhc.data.setup < #3_lives_left uhc.data.setup run scoreboard players operation #2_lives_left uhc.data.setup = #3_lives_left uhc.data.setup

# Descente à 1 vie
execute if score @s uhc.menu.settings.pve matches 2 unless score #1_life_left uhc.data.setup matches 300.. run scoreboard players add #1_life_left uhc.data.setup 1

execute if score @s uhc.menu.settings.pve matches 2..10 if score #1_life_left uhc.data.setup < #2_lives_left uhc.data.setup run scoreboard players operation #1_life_left uhc.data.setup = #2_lives_left uhc.data.setup

# Période sans PvP
execute if score @s uhc.menu.settings.pvp matches 1 unless score #pvp uhc.data.setup matches 300.. run scoreboard players add #pvp uhc.data.setup 1


# Régénération après kill
execute if score @s uhc.menu.settings.pvp matches 2 unless score #reward_kill_health uhc.data.setup matches 4.. run scoreboard players add #reward_kill_health uhc.data.setup 1
execute if score @s uhc.menu.settings.pvp matches 41 unless score #reward_kill_health uhc.data.setup matches 4.. run scoreboard players add #reward_kill_health uhc.data.setup 1

# Absorption
execute if score @s uhc.menu.settings.pvp matches 3 unless score #absorption uhc.data.setup matches 2.. run scoreboard players add #absorption uhc.data.setup 1
execute if score @s uhc.menu.settings.pvp matches 51 unless score #absorption uhc.data.setup matches 2.. run scoreboard players add #absorption uhc.data.setup 1

# Durabilité des boucliers
execute if score @s uhc.menu.settings.pvp matches 12 unless score #shield_percent uhc.data.setup matches 100.. run scoreboard players add #shield_percent uhc.data.setup 1


# Limite de loups
execute if score @s uhc.menu.settings.pvp matches 13 unless score #wolf_count uhc.data.setup matches 10.. run scoreboard players add #wolf_count uhc.data.setup 1


# Border - Taille initiale
execute if score @s uhc.menu.settings.border matches 1 run scoreboard players add #shrink_1_size_start uhc.data.setup 2

# Meet-up - Taille initiale, Taille finale, Temps début de réduction
execute if score @s uhc.menu.settings.border matches 11 run scoreboard players add #shrink_1_size_start uhc.data.setup 2
execute if score @s uhc.menu.settings.border matches 12 run scoreboard players add #shrink_1_size_end uhc.data.setup 2
execute if score @s uhc.menu.settings.border matches 13 run scoreboard players add #shrink_1_time_left uhc.data.setup 1

# Shrink 1 - Taille initiale, Taille finale, Temps début de réduction
execute if score @s uhc.menu.settings.border matches 21 run scoreboard players add #shrink_1_size_end uhc.data.setup 2
execute if score @s uhc.menu.settings.border matches 22 run scoreboard players add #shrink_2_size_end uhc.data.setup 2
execute if score @s uhc.menu.settings.border matches 23 run scoreboard players add #shrink_2_time_left uhc.data.setup 1

# Shrink 2 - Taille initiale, Taille finale, Temps début de réduction
execute if score @s uhc.menu.settings.border matches 31 run scoreboard players add #shrink_2_size_end uhc.data.setup 2
execute if score @s uhc.menu.settings.border matches 32 run scoreboard players add #shrink_3_size_end uhc.data.setup 2
execute if score @s uhc.menu.settings.border matches 33 run scoreboard players add #shrink_3_time_left uhc.data.setup 1

# Meet-up, Shrink 1, Shrink 2
execute if score @s uhc.menu.settings.border matches 1.. if score #shrink_1_size_start uhc.data.setup matches 5000.. run scoreboard players set #shrink_1_size_start uhc.data.setup 5000
execute if score @s uhc.menu.settings.border matches 1.. if score #shrink_1_size_end uhc.data.setup > #shrink_1_size_start uhc.data.setup run scoreboard players operation #shrink_1_size_end uhc.data.setup = #shrink_1_size_start uhc.data.setup
execute if score @s uhc.menu.settings.border matches 1.. if score #shrink_2_size_end uhc.data.setup > #shrink_1_size_end uhc.data.setup run scoreboard players operation #shrink_2_size_end uhc.data.setup = #shrink_1_size_end uhc.data.setup
execute if score @s uhc.menu.settings.border matches 1.. if score #shrink_3_size_end uhc.data.setup > #shrink_2_size_end uhc.data.setup run scoreboard players operation #shrink_3_size_end uhc.data.setup = #shrink_2_size_end uhc.data.setup

execute if score @s uhc.menu.settings.border matches 1.. if score #shrink_1_time_left uhc.data.setup matches 300.. run scoreboard players set #shrink_1_time_left uhc.data.setup 300
execute if score @s uhc.menu.settings.border matches 1.. if score #shrink_2_time_left uhc.data.setup matches 300.. run scoreboard players set #shrink_2_time_left uhc.data.setup 300
execute if score @s uhc.menu.settings.border matches 1.. if score #shrink_3_time_left uhc.data.setup matches 300.. run scoreboard players set #shrink_3_time_left uhc.data.setup 300

execute if score @s uhc.menu.settings.border matches 1.. if score #shrink_2_time_left uhc.data.setup < #shrink_1_time_left uhc.data.setup run scoreboard players operation #shrink_2_time_left uhc.data.setup = #shrink_1_time_left uhc.data.setup
execute if score @s uhc.menu.settings.border matches 1.. if score #shrink_3_time_left uhc.data.setup < #shrink_2_time_left uhc.data.setup run scoreboard players operation #shrink_3_time_left uhc.data.setup = #shrink_2_time_left uhc.data.setup


# Meet-up - Temps de réduction
execute if score @s uhc.menu.settings.border matches 14 unless score #shrink_1_length uhc.data.setup matches 300.. run scoreboard players add #shrink_1_length uhc.data.setup 1


# Shrink 1 - Temps de réduction
execute if score @s uhc.menu.settings.border matches 24 unless score #shrink_2_length uhc.data.setup matches 300.. run scoreboard players add #shrink_2_length uhc.data.setup 1


# Shrink 2 - Temps de réduction
execute if score @s uhc.menu.settings.border matches 34 unless score #shrink_3_length uhc.data.setup matches 300.. run scoreboard players add #shrink_3_length uhc.data.setup 1


# Limite Y - Hauteur
execute if score @s uhc.menu.settings.border matches 41 unless score #map_height_limit_above uhc.data.setup matches 256.. run scoreboard players add #map_height_limit_above uhc.data.setup 1


# Limite Y - Profondeur
execute if score @s uhc.menu.settings.border matches 42 unless score #map_height_limit_below uhc.data.setup matches 128.. run scoreboard players add #map_height_limit_below uhc.data.setup 1


# Limite Y - Temps d'activation
execute if score @s uhc.menu.settings.border matches 43 unless score #map_height_timer uhc.data.setup matches 300.. run scoreboard players add #map_height_timer uhc.data.setup 1


# Nombre d'amures dupliqué à la mort d'un joueur
execute if score @s uhc.menu.settings.inventory matches 06 unless score #item_additional_armor uhc.data.setup matches 4.. run scoreboard players add #item_additional_armor uhc.data.setup 1

# Règles d'enchantements - Armures en diamants, Épées en diamants, Armures en fer, Épées en diamants, Haches, Arcs, Bottes
execute if score @s uhc.menu.settings.inventory matches 12 unless score #diamond_protection uhc.data.setup matches 4.. run scoreboard players add #diamond_protection uhc.data.setup 1
execute if score @s uhc.menu.settings.inventory matches 13 unless score #diamond_sharpness uhc.data.setup matches 5.. run scoreboard players add #diamond_sharpness uhc.data.setup 1
execute if score @s uhc.menu.settings.inventory matches 14 unless score #iron_protection uhc.data.setup matches 4.. run scoreboard players add #iron_protection uhc.data.setup 1
execute if score @s uhc.menu.settings.inventory matches 15 unless score #iron_sharpness uhc.data.setup matches 5.. run scoreboard players add #iron_sharpness uhc.data.setup 1
execute if score @s uhc.menu.settings.inventory matches 16 unless score #axes_sharpness uhc.data.setup matches 5.. run scoreboard players add #axes_sharpness uhc.data.setup 1
execute if score @s uhc.menu.settings.inventory matches 17 unless score #bow_power uhc.data.setup matches 5.. run scoreboard players add #bow_power uhc.data.setup 1
execute if score @s uhc.menu.settings.inventory matches 22 unless score #depth_strider uhc.data.setup matches 3.. run scoreboard players add #depth_strider uhc.data.setup 1
execute if score @s uhc.menu.settings.inventory matches 23 unless score #lunge uhc.data.setup matches 3.. run scoreboard players add #lunge uhc.data.setup 1

# Cobweb
execute if score @s uhc.menu.settings.inventory matches 32 if score #cobweb uhc.data.setup matches ..32 run scoreboard players operation #cobweb uhc.data.setup *= #02 uhc.data.numbers
execute if score @s uhc.menu.settings.inventory matches 32 if score #cobweb uhc.data.setup matches ..1 run scoreboard players set #cobweb uhc.data.setup 1
execute if score @s uhc.menu.settings.inventory matches 32 if score #cobweb uhc.data.setup matches ..1 run scoreboard players set @s uhc.menu.settings 2
execute if score @s uhc.menu.settings.inventory matches 32 if score #cobweb uhc.data.setup matches 2.. run scoreboard players set @s uhc.menu.settings 6

# Pièces d'armures
execute if score @s uhc.menu.settings.inventory matches 33 if score #diamond_armor uhc.data.setup matches ..3 run scoreboard players add #diamond_armor uhc.data.setup 1
execute if score @s uhc.menu.settings.inventory matches 34 if score #netherite_armor uhc.data.setup matches ..3 run scoreboard players add #netherite_armor uhc.data.setup 1

# Nombre de joueur par équipe
execute if score @s uhc.menu.settings.team matches 2 unless score #team_size uhc.data.setup matches 64.. run scoreboard players add #team_size uhc.data.setup 1



#> bhc:scenario/51/timer/config
#
# @within			bhc:start/
#
#
# @description		Configuration du timer 
#

## BHC → Préparation Config pre-game

# Étape A : Bingo
scoreboard players set #stepa_start bhc.data.setup -1
scoreboard players set #stepa_end bhc.data.setup 30
scoreboard players operation #stepa_end bhc.data.setup += #stepa_start bhc.data.setup
scoreboard players set #stepa_multiplier bhc.data.setup 2

# Étape B : Bingo
scoreboard players set #stepb_start bhc.data.setup 40
scoreboard players set #stepb_end bhc.data.setup 20
scoreboard players operation #stepb_end bhc.data.setup += #stepb_start bhc.data.setup
scoreboard players set #stepb_multiplier bhc.data.setup 2

scoreboard players set #kills_multiplier bhc.data.setup 2
scoreboard players set #death_multiplier bhc.data.setup 4

# Start
 # 0 : Démarrage 30 secondes après tp
 # 1 : Démarrage immédiat
scoreboard players set #start_delay uhc.data.setup 1

## Configuration des messages de mort
# 0 : Message par défaut
# 1 : Affiche un message aléatoire à chaque mort suivant :
#     20% mort et tueur révélés
#     20% mort révélé
#     20% tueur révélé
#     20% aucun révélé
#     20% aucun message de mort
# 7 : Uniquement mort affiché
# 8 : Aucun message de mort
scoreboard players set #message uhc.data.setup 0

## Scoreboard d'affichage
scoreboard objectives setdisplay sidebar

# Team Health
execute if score #hp_name uhc.data.setup matches 0 run scoreboard objectives setdisplay below_name
execute if score #hp_name uhc.data.setup matches 1 run scoreboard objectives setdisplay below_name uhc.player.health.reverse.20
execute if score #hp_name uhc.data.setup matches 2 run scoreboard objectives setdisplay below_name uhc.player.health.reverse.100

execute if score #hp_tab uhc.data.setup matches 0 run scoreboard objectives setdisplay list
execute unless score #hp_tab uhc.data.setup matches 0 unless score #hp_tab uhc.data.setup matches 2 run scoreboard objectives setdisplay list uhc.player.health.reverse.20
execute if score #hp_tab uhc.data.setup matches 2 run scoreboard objectives setdisplay list uhc.player.health.reverse.100

execute if score #hp_tab uhc.data.setup matches 0..2 run scoreboard objectives modify uhc.player.health.reverse.20 rendertype integer
execute if score #hp_tab uhc.data.setup matches 3 run scoreboard objectives modify uhc.player.health.reverse.20 rendertype hearts

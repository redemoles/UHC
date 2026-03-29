
#> bhc:scenario/99/timer/config
#
# @within			bhc:start/
#
#
# @description		Configuration du timer 
#

## BHC → Préparation Config pre-game

# Bingo
scoreboard players set #stepa_start bhc.data.setup -1
scoreboard players set #stepa_end bhc.data.setup 20
scoreboard players operation #stepa_end bhc.data.setup += #stepa_start bhc.data.setup
scoreboard players set #stepa_multiplier bhc.data.setup 3

# Scoreboard
scoreboard players set #stepb_start bhc.data.setup -1
scoreboard players set #stepb_end bhc.data.setup 9999
scoreboard players set #stepb_multiplier bhc.data.setup 0



scoreboard players set #kills_multiplier bhc.data.setup 3
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

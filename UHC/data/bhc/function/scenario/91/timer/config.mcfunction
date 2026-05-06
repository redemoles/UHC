
#> bhc:scenario/91/timer/config
#
# @within			bhc:start/
#
#
# @description		Configuration du timer 
#

## BHC → Préparation Config pre-game

# Bingo
scoreboard players set #stepa_start bhc.data.setup -1
scoreboard players set #stepa_end bhc.data.setup 60
scoreboard players operation #stepa_end bhc.data.setup += #stepa_start bhc.data.setup
scoreboard players set #stepa_multiplier bhc.data.setup 10

# Autre
scoreboard players set #stepb_start bhc.data.setup -1
scoreboard players set #stepb_end bhc.data.setup 9999
scoreboard players set #stepb_multiplier bhc.data.setup 0

scoreboard players set #kills_multiplier bhc.data.setup 0
scoreboard players set #death_multiplier bhc.data.setup 0

# Start
 # 0 : Démarrage 30 secondes après tp
 # 1 : Démarrage immédiat
scoreboard players set #start_delay uhc.data.setup 1

## Scoreboard d'affichage
scoreboard objectives setdisplay sidebar

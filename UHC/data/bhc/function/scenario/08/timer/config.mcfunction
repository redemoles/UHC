
#> bhc:scenario/08/timer/config
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

## Scoreboard d'affichage
scoreboard objectives setdisplay sidebar


#> bhc:scenario/08/timer/settings
#
# @within			bhc:start/main
#
#
# @description		Configuration du timer 
#

## BHC → Préparation Config pre-game
scoreboard players set #stepa_multiplier bhc.data.setup 2
scoreboard players set #stepb_multiplier bhc.data.setup 2
scoreboard players set #kills_multiplier bhc.data.setup 2
scoreboard players set #death_multiplier bhc.data.setup 4

# Start
 # 0 : Démarrage 30 secondes après tp
 # 1 : Démarrage immédiat
scoreboard players set #start_delay uhc.data.setup 1

## Scoreboard d'affichage
scoreboard objectives setdisplay sidebar

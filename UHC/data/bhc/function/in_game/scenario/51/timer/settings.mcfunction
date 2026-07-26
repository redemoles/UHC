
#> bhc:in_game/scenario/51/timer/settings
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

## Team Health
execute if score #hp_name uhc.data.setup matches 0 run scoreboard objectives setdisplay below_name
execute if score #hp_name uhc.data.setup matches 1 if score #hp_100 uhc.data.setup matches 0 run scoreboard objectives setdisplay below_name uhc.player.health.reverse.20
execute if score #hp_name uhc.data.setup matches 1 if score #hp_100 uhc.data.setup matches 1 run scoreboard objectives setdisplay below_name uhc.player.health.reverse.100

execute if score #hp_tab uhc.data.setup matches 0 run scoreboard objectives setdisplay list
execute if score #hp_tab uhc.data.setup matches 1.. run scoreboard objectives setdisplay list uhc.player.health.reverse.20
execute if score #hp_tab uhc.data.setup matches 1 if score #hp_100 uhc.data.setup matches 1 run scoreboard objectives setdisplay list uhc.player.health.reverse.100

execute if score #hp_tab uhc.data.setup matches 1 run scoreboard objectives modify uhc.player.health.reverse.20 rendertype integer
execute if score #hp_tab uhc.data.setup matches 2 run scoreboard objectives modify uhc.player.health.reverse.20 rendertype hearts

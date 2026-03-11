
#> uhc:in_game/timer/hotbar/cooldown/event_list/main
#
# @within			uhc:in_game/timer/hotbar/cooldown/
#
#
# @description		Alerte décompte 
#

## Réinitialisation
data modify storage uhc:temp hotbar.alert_fra set value []
data modify storage uhc:temp hotbar.alert_eng set value []

## Mode de jeu
# Bingo UHC
execute if score #min_cooldown_temp uhc.data.temp matches 1.. if score #bhc uhc.gamemode matches 1 run function uhc:in_game/timer/hotbar/cooldown/event_list/bhc/waiting
execute if score #min_cooldown_temp uhc.data.temp matches ..0 if score #bhc uhc.gamemode matches 1 run function uhc:in_game/timer/hotbar/cooldown/event_list/bhc/event

## Alerte sonore à l'activation d'un événement
execute unless score #min_cooldown_temp_bhc uhc.data.temp matches 1 if score #sec_cooldown uhc.data.temp matches 0 if score #pve uhc.data.temp matches 0 as @a at @s run playsound minecraft:entity.ender_dragon.hurt master @s ~ ~ ~ 0.5 1 0.5
execute unless score #min_cooldown_temp_bhc uhc.data.temp matches 1 if score #sec_cooldown uhc.data.temp matches 0 if score #pvp uhc.data.temp matches 0 unless score #pve uhc.data.temp matches 0 as @a at @s run playsound minecraft:entity.ender_dragon.hurt master @s ~ ~ ~ 0.5 1 0.5
execute unless score #min_cooldown_temp_bhc uhc.data.temp matches 1 if score #sec_cooldown uhc.data.temp matches 0 if score #min_cooldown_temp uhc.data.temp matches 0 if score #pve uhc.data.temp matches ..-1 if score #pvp uhc.data.temp matches ..-1 as @a at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1 0.5
execute if score #min_cooldown_temp_bhc uhc.data.temp matches 1 if score #sec_cooldown uhc.data.temp matches 0 if score #stepa_start bhc.data.temp matches 0 as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.5 1 0.5
execute if score #min_cooldown_temp_bhc uhc.data.temp matches 1 if score #sec_cooldown uhc.data.temp matches 0 if score #stepa_end bhc.data.temp matches 0 as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 1 0.5
execute if score #min_cooldown_temp_bhc uhc.data.temp matches 1 if score #sec_cooldown uhc.data.temp matches 0 if score #stepb_start bhc.data.temp matches 0 as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.5 1 0.5
execute if score #min_cooldown_temp_bhc uhc.data.temp matches 1 if score #sec_cooldown uhc.data.temp matches 0 if score #stepb_exhaustion bhc.data.temp matches 0 as @a at @s run playsound minecraft:block.respawn_anchor.deplete master @s ~ ~ ~ 0.4 1 0.4
execute if score #min_cooldown_temp_bhc uhc.data.temp matches 1 if score #sec_cooldown uhc.data.temp matches 0 if score #stepb_end bhc.data.temp matches 0 as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 1 0.5
execute if score #go_to_hell uhc.scenario matches 1 unless score #min_cooldown_temp_bhc uhc.data.temp matches 1 if score #sec_cooldown uhc.data.temp matches 0 if score #go_to_hell uhc.data.temp matches 0 as @a at @s run playsound minecraft:block.portal.travel ambient @s ~ ~ ~ 0.5 1 0.5
execute if score #sky_high uhc.scenario matches 1 unless score #min_cooldown_temp_bhc uhc.data.temp matches 1 if score #sec_cooldown uhc.data.temp matches 0 if score #sky_high uhc.data.temp matches 0 as @a at @s run playsound minecraft:block.portal.travel ambient @s ~ ~ ~ 0.5 1 0.5

## Texte général
# Si activation d'événement
execute if score #min_cooldown_alert uhc.data.temp matches 1.. if score #min_cooldown_temp uhc.data.temp matches ..0 unless score #min_cooldown_temp_bhc uhc.data.temp matches 1 run data modify storage uhc:temp hotbar.alert_fra append value [{"text":"Activation ","color":"#FFFFFF"}]
execute if score #min_cooldown_alert uhc.data.temp matches 1.. if score #min_cooldown_temp uhc.data.temp matches ..0 unless score #min_cooldown_temp_bhc uhc.data.temp matches 1 run data modify storage uhc:temp hotbar.alert_eng append value [{"text":"Activation ","color":"#FFFFFF"}]
execute if score #min_cooldown_alert uhc.data.temp matches 1.. if score #min_cooldown_temp uhc.data.temp matches ..0 if score #min_cooldown_temp_bhc uhc.data.temp matches 1 run data modify storage uhc:temp hotbar.alert_fra append value [{"text":"activation ","color":"#FFFFFF"}]
execute if score #min_cooldown_alert uhc.data.temp matches 1.. if score #min_cooldown_temp uhc.data.temp matches ..0 if score #min_cooldown_temp_bhc uhc.data.temp matches 1 run data modify storage uhc:temp hotbar.alert_eng append value [{"text":"activation ","color":"#FFFFFF"}]
# Sinon
execute if score #min_cooldown_alert uhc.data.temp matches 1.. if score #min_cooldown_temp uhc.data.temp matches 1.. run data modify storage uhc:temp hotbar.alert_fra append value [{"text":"activation ","color":"#FFFFFF"}]
execute if score #min_cooldown_alert uhc.data.temp matches 1.. if score #min_cooldown_temp uhc.data.temp matches 1.. run data modify storage uhc:temp hotbar.alert_eng append value [{"text":"activation ","color":"#FFFFFF"}]

## Liste des événéments à annoncer
# Alerte sonore
execute if score #min_cooldown_temp uhc.data.temp matches 1 if score #sec_cooldown uhc.data.temp matches 0 as @a at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1 0.5
execute if score #min_cooldown_temp uhc.data.temp matches 1 if score #sec_cooldown uhc.data.temp matches 10 as @a at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1 0.5
execute if score #min_cooldown_temp uhc.data.temp matches 1 if score #sec_cooldown uhc.data.temp matches 3 as @a at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1 0.5
execute if score #min_cooldown_temp uhc.data.temp matches 1 if score #sec_cooldown uhc.data.temp matches 2 as @a at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1 0.5
execute if score #min_cooldown_temp uhc.data.temp matches 1 if score #sec_cooldown uhc.data.temp matches 1 as @a at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1 0.5
# Scénario
execute if score #go_to_hell uhc.scenario matches 1 run function uhc:in_game/timer/hotbar/cooldown/event_list/go_to_hell
execute if score #sky_high uhc.scenario matches 1 run function uhc:in_game/timer/hotbar/cooldown/event_list/sky_high
# Mode de jeu
execute if score #bhc bhc.scenario matches 99 run return run function uhc:in_game/timer/hotbar/cooldown/event_list/bhc/scenario/run/main
# Divers
execute if score #pve uhc.data.temp = #min_cooldown_temp uhc.data.temp run function uhc:in_game/timer/hotbar/cooldown/event_list/pve
execute if score #pvp uhc.data.temp = #min_cooldown_temp uhc.data.temp run function uhc:in_game/timer/hotbar/cooldown/event_list/pvp
execute if score #shrink_1_time_left uhc.data.temp = #min_cooldown_temp uhc.data.temp run function uhc:in_game/timer/hotbar/cooldown/event_list/shrink
execute if score #shrink_2_time_left uhc.data.temp = #min_cooldown_temp uhc.data.temp run function uhc:in_game/timer/hotbar/cooldown/event_list/shrink
execute if score #shrink_3_time_left uhc.data.temp = #min_cooldown_temp uhc.data.temp run function uhc:in_game/timer/hotbar/cooldown/event_list/shrink
# Title
execute if score #min_cooldown_temp uhc.data.temp matches 0 run scoreboard players set #min_cooldown_temp uhc.data.temp -1
execute if score #min_cooldown_temp uhc.data.temp matches 1.. unless score #sec_cooldown uhc.data.temp matches 0 run scoreboard players remove #min_cooldown_temp uhc.data.temp 1
function uhc:in_game/timer/hotbar/cooldown/text_title with storage uhc:temp hotbar

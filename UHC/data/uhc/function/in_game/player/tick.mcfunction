
#> uhc:in_game/player/tick
#
# @within			uhc:in_game/timer/tick
#
#
# @description		Fonction tick de base en jeu pour chaque joueur
#

scoreboard players operation #team uhc.id.team = @s uhc.id.team

# Connexion d'un joueur externe
execute unless score @s uhc.player.online matches 1 run function uhc:in_game/player/spec/new_player

# Reconnexion d'un joueur
execute if score @s uhc.player.disconnect matches 1.. run function uhc:in_game/player/login/main

## Joueur à faire revenir à la vie
# Ancien joueur
scoreboard players add @s[tag=uhc.player] uhc.player.death.last_time 1
execute unless entity @s[tag=!revive,tag=!uhc.revive] run function uhc:in_game/player/spec/revive/main
# Nouveau joueur
execute if entity @s[tag=uhc.revive.temp] in uhc:lobby run return run function uhc:in_game/player/spec/revive/new_player/tick

## Apparition / Réapparition
# Démarrage dans le ciel
execute in minecraft:overworld positioned 0 180 0 as @s[tag=uhc.player.start_in_the_sky] if entity @s[predicate=uhc:settings/start_in_the_sky/on_ground,distance=25..] run function uhc:in_game/player/misc/on_ground_with_elytra
execute if entity @s[tag=uhc.player.start_in_the_sky] unless items entity @s armor.chest minecraft:elytra run function uhc:in_game/player/misc/on_ground_with_elytra
# Réapparition
execute if score @s uhc.timer.respawn matches 1.. run function uhc:in_game/player/death/respawn

## Paramètres
function uhc:in_game/inventory/equipment/root
function uhc:in_game/player/pvp/settings/root

## Scenarios
execute as @s[tag=uhc.player] run function uhc:in_game/scenario/player

## Triggers
function uhc:in_game/player/trigger

## Effets aux joueurs
function uhc:in_game/player/effect/tick

## Vie en pourcentage
scoreboard players operation #data_check uhc.data.temp = #tick uhc.data.temp
scoreboard players operation #data_check uhc.data.temp %= #05 uhc.data.numbers
execute if score #data_check uhc.data.temp matches 0 if entity @s[gamemode=!spectator] unless score @s uhc.player.health.check = @s uhc.player.health.auto run function uhc:in_game/player/misc/health/default

## Scoreboard de dégâts
execute if score #game_progress uhc.game_progress matches 1 as @s[scores={uhc.player.damage_dealt.temp=1..}] run function uhc:in_game/player/pvp/damage_dealt/
execute if score #game_progress uhc.game_progress matches 1 as @s[scores={uhc.player.damage_taken.temp=1..}] run function uhc:in_game/player/pvp/damage_taken/

## Localisation
# Téléportation d'un joueur derrière la worldborder
execute if score #shrink_1_time_left uhc.data.temp matches ..0 if score #data_check uhc.data.temp matches 0 as @s[tag=uhc.player] at @s run function uhc:in_game/tp/border/coords
# Alerte d'un joueur hors des hauteurs autorisées
execute if score #map_height_timer uhc.data.temp matches ..0 if score #tick uhc.data.temp matches 0 unless score #sky_high uhc.scenario matches 1 if entity @s[tag=uhc.player,predicate=uhc:dimension/overworld] run function uhc:in_game/player/map_height/check_limit
execute if score #sky_high uhc.data.temp matches ..0 if score #tick uhc.data.temp matches 0 if score #sky_high uhc.scenario matches 1 if entity @s[tag=uhc.player,predicate=uhc:dimension/overworld] run function uhc:in_game/player/map_height/check_limit
# Téléportation d'un spectateur sous la carte
execute unless score @s[tag=uhc.spec] uhc.player.data.check matches 1 run function uhc:in_game/player/data/pos_only
execute if score @s[tag=uhc.spec] uhc.player.y matches ..-65 at @s positioned over motion_blocking run tp @s ~ ~32 ~ 0 67.5

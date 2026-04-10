
#> uhc:in_game/player/death/main
#
# @within			uhc:in_game/timer/tick
#
#
# @description		Mort d'un joueur
#

scoreboard players operation #team uhc.id.team = @s uhc.id.team

## Résumé des morts
execute unless score @s uhc.player.death.summary matches 1 if score #bhc bhc.scenario matches 02 in uhc:lobby run function bhc:scenario/02/target/death/main
execute unless score @s uhc.player.death.summary matches 1 run function uhc:in_game/player/death/text_end_game/ with storage uhc:temp hotbar
scoreboard players set @s uhc.player.death.summary 0

## Retrait d'une vie au joueur mort
scoreboard players remove @s uhc.player.lives 1

## Scenarios
# Permakill
execute if score #permakill uhc.scenario matches 1 run time add 600s

## Récompenses au kill, changement paramètres du joueur mort
function uhc:in_game/player/death/reveal
function uhc:in_game/player/death/location/data
execute if score @s uhc.player.lives matches ..0 in uhc:lobby run function uhc:in_game/player/death/definitive

## BHC → Attribution des points de survie (seulement si la partie n'est pas terminée)
execute if score #bhc uhc.gamemode matches 1 unless score #game_progress uhc.game_progress matches 2.. in uhc:lobby run function bhc:scores_calculator/death/update

## Settings Respawn
# Temps de Respawn
scoreboard players set @s[scores={uhc.player.lives=1..}] uhc.timer.respawn 32
scoreboard players set @s[scores={uhc.player.lives=1..}] uhc.player.death.temp 0

# Lieu de Respawn
execute in minecraft:overworld run function uhc:in_game/tp/spawn/border_size/main
execute if score @s uhc.player.lives matches 1.. in minecraft:overworld run function uhc:in_game/tp/spawn/default

# Récupère les coordonnées du joueur mort
data modify storage uhc:temp input.x set from entity @s LastDeathLocation.pos[0]
data modify storage uhc:temp input.y set from entity @s LastDeathLocation.pos[1]
data modify storage uhc:temp input.z set from entity @s LastDeathLocation.pos[2]

function uhc:in_game/player/death/coords with storage uhc:temp input

# Scoreboard Kills
execute if score #vanilla uhc.gamemode matches 1 if score #message uhc.data.setup matches 0 run scoreboard objectives setdisplay sidebar uhc.player.kills

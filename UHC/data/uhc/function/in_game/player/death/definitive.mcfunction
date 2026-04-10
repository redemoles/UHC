
#> uhc:in_game/player/death/definitive
#
# @within			uhc:in_game/player/death/main
#
#
# @description		Fonction si morts ou kills à chaque ticks
#

## Paramètres internes
# -1 Joueur
execute if score #message uhc.data.setup matches 0..4 run scoreboard players remove #player uhc.data.temp 1
scoreboard players remove #player uhc.data.temp.inv 1
# -1 Joueur dans l'équipe
scoreboard players operation #team uhc.id.team = @s uhc.id.team
scoreboard players remove @n[type=minecraft:marker,tag=UHC,distance=0..,predicate=uhc:id/team] uhc.player.lives 1
execute if score #player uhc.data.temp matches ..1 run data modify storage uhc:temp hotbar.player set value ""
# Dernier joueur de l'équipe ?
scoreboard players set #team_out uhc.id.team 1
execute if score @n[type=minecraft:marker,tag=UHC,distance=0..,predicate=uhc:id/team] uhc.player.lives matches 1.. run scoreboard players set #team_out uhc.id.team 0
execute if score #team_out uhc.id.team matches 1 run function uhc:in_game/team/out/main

## Attribution des effets
function uhc:in_game/player/spec/main
execute if score #biome_paranoia uhc.scenario matches 1.. run function uhc:in_game/player/team_join/vanilla

## Messages
execute if score #vanilla uhc.gamemode matches 1 if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"\nTu es mort. Merci d'avoir participé !\nSi un chat vocal de proximité est utilisé, merci de te rendre muet.","color":"#3FE7FF"}]
execute if score #vanilla uhc.gamemode matches 1 if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"\nYou died. Thank you for playing!\nIf a proximity voice chat is used, please mute yourself.","color":"#3FE7FF"}]

## Détection victoire
execute if score #team uhc.data.temp.inv matches ..1 run scoreboard players add #game_progress uhc.game_progress 1
execute if score #game_progress uhc.game_progress matches 2 run function uhc:in_game/endgame

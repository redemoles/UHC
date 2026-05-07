
#> uhc:in_game/player/lives_remove/drop_to_1
#
# @within			uhc:in_game/timer/tick
# 
#
# @description		Diminution à 1 vie maximum et compensations
#

## Équipe sélectionnée
scoreboard players operation #team uhc.id.team = @s uhc.id.team

# Couleur d'équipe de base
execute as @a[scores={uhc.player.lives=2},predicate=uhc:id/team] run function uhc:in_game/player/team_join/vanilla

## Message
# Bingo UHC > Points
scoreboard players set #temp uhc.data.temp 100
scoreboard players operation #temp uhc.data.temp *= #team_size uhc.data.temp
scoreboard players operation #temp uhc.data.temp /= @s uhc.team.size
scoreboard players operation #temp uhc.data.temp /= #10 uhc.data.numbers

execute as @a[scores={uhc.player.lives=2},predicate=uhc:id/team] run function uhc:translation/in_game/player_lives_remove_drop_to_1
execute if score #bhc uhc.gamemode matches 1 as @a[scores={uhc.player.lives=2},predicate=uhc:id/team] run function uhc:translation/bhc/player_lives_remove_drop_to_1

# Title
execute as @a[scores={uhc.player.lives=2},predicate=uhc:id/team] run title @s times 0s 1.5s 0.5s
execute as @a[scores={uhc.player.lives=2},predicate=uhc:id/team] run title @s title [{"text":" ","color":"#FFE73F","bold":false}]
execute as @a[scores={uhc.player.lives=2},predicate=uhc:id/team] run title @s subtitle [{"text":"❤❤ ","color":"#FFE73F","bold":false},{"text":"→","color":"#FFFFFF","bold":false},{"text":" ❤","color":"#E73F3F","bold":false}]
execute as @a[scores={uhc.player.lives=2},predicate=uhc:id/team] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.5 1 0.5

# Couleur du joueur
execute if score #game_progress uhc.game_progress matches 1 if score #biome_paranoia uhc.scenario matches 1 as @a[scores={uhc.player.lives=2},predicate=uhc:id/team] run function uhc:in_game/scenario/biome_paranoia/by_colors
execute if score #game_progress uhc.game_progress matches 1 if score #biome_paranoia uhc.scenario matches 2 as @a[scores={uhc.player.lives=2},predicate=uhc:id/team] run function uhc:in_game/scenario/biome_paranoia/by_nickname
execute unless score #nzl uhc.gamemode matches 1 if score #anonyme_team uhc.data.setup matches 1 as @a[scores={uhc.player.lives=2},predicate=uhc:id/team] run team join 091 @s
execute if score #nzl uhc.gamemode matches 1 as @a[scores={uhc.player.lives=2},predicate=uhc:id/team] run function uhc:in_game/player/team_join/nzl

## Récompense
# Tous les modes de jeu
give @a[scores={uhc.player.lives=2},predicate=uhc:id/team] minecraft:golden_apple 2

# Bingo UHC
execute if score #bhc uhc.gamemode matches 1 store result score #count bhc.data.temp if entity @a[scores={uhc.player.lives=2},predicate=uhc:id/team]
execute if score #bhc uhc.gamemode matches 1 run scoreboard players operation @s bhc.team.livescount += #count bhc.data.temp

## Retrait vie
scoreboard players set @a[scores={uhc.player.lives=2},predicate=uhc:id/team] uhc.player.lives 1

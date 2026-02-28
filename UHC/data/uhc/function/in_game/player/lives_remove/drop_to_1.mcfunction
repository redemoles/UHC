
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

## Équipe resélectionnée
scoreboard players operation #team uhc.id.team = @s uhc.id.team

## Message
# Points
scoreboard players set #temp uhc.data.temp 100
scoreboard players operation #temp uhc.data.temp *= #team_size uhc.data.temp
scoreboard players operation #temp uhc.data.temp /= @s uhc.team.size
scoreboard players operation #temp uhc.data.temp /= #10 uhc.data.numbers

# FRA
execute unless score #bhc uhc.gamemode matches 1 if score #live_1 uhc.data.temp matches ..0 as @a[scores={uhc.player.lives=2},predicate=uhc:id/team] run tellraw @a[scores={uhc.player.lang=061801},predicate=uhc:id/team] [{"text":"Vies maximum ","color":"#FFE73F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" -1 vie.","color":"#FF3F3F","bold":false},{"text":" Compensation reçu.","color":"#FFFFFF","bold":false}]
execute if score #bhc uhc.gamemode matches 1 if score #live_1 uhc.data.temp matches ..0 as @a[scores={uhc.player.lives=2},predicate=uhc:id/team] run tellraw @a[scores={uhc.player.lang=061801},predicate=uhc:id/team] [{"text":"Vies maximum ","color":"#FFE73F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" ","bold":false},{"text":"+","color":"#3FE7FF","bold":true},{"score":{"name":"#temp","objective":"uhc.data.temp"},"color":"#3FE7FF","bold":true},{"text":" points ","color":"#00C3DF","bold":false},{"text":"[","color":"#FFFFFF"},{"text":"Survie","color":"#3FE7FF"},{"text":"] (","color":"#FFFFFF"},{"selector":"@s"},{"text":")","color":"#FFFFFF"}]

# ENG
execute unless score #bhc uhc.gamemode matches 1 if score #live_1 uhc.data.temp matches ..0 as @a[scores={uhc.player.lives=2},predicate=uhc:id/team] run tellraw @a[scores={uhc.player.lang=051407},predicate=uhc:id/team] [{"text":"Maximum lives ","color":"#FFE73F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" -1 vie.","color":"#FF3F3F","bold":false},{"text":" Compensation received.","color":"#FFFFFF","bold":false}]
execute if score #bhc uhc.gamemode matches 1 if score #live_1 uhc.data.temp matches ..0 as @a[scores={uhc.player.lives=2},predicate=uhc:id/team] run tellraw @a[scores={uhc.player.lang=051407},predicate=uhc:id/team] [{"text":"Maximum lives ","color":"#FFE73F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" ","bold":false},{"text":"+","color":"#3FE7FF","bold":true},{"score":{"name":"#temp","objective":"uhc.data.temp"},"color":"#3FE7FF","bold":true},{"text":" points ","color":"#00C3DF","bold":false},{"text":"[","color":"#FFFFFF"},{"text":"Survival","color":"#3FE7FF"},{"text":"] (","color":"#FFFFFF"},{"selector":"@s"},{"text":")","color":"#FFFFFF"}]

# Couleur du joueur
execute if score #game_progress uhc.game_progress matches 1 if score #biome_paranoia uhc.scenario matches 1 as @a[scores={uhc.player.lives=2},predicate=uhc:id/team] run function uhc:in_game/scenario/biome_paranoia/by_colors
execute if score #game_progress uhc.game_progress matches 1 if score #biome_paranoia uhc.scenario matches 2 as @a[scores={uhc.player.lives=2},predicate=uhc:id/team] run function uhc:in_game/scenario/biome_paranoia/by_nickname
execute unless score #nzl uhc.gamemode matches 1 if score #anonyme_team uhc.data.setup matches 1 as @a[scores={uhc.player.lives=2},predicate=uhc:id/team] run team join 091 @s
execute if score #nzl uhc.gamemode matches 1 as @a[scores={uhc.player.lives=2},predicate=uhc:id/team] run function uhc:in_game/player/team_join/nzl

## Équipe resélectionnée
scoreboard players operation #team uhc.id.team = @s uhc.id.team

## Récompense
# Tous les modes de jeu
give @a[scores={uhc.player.lives=2},predicate=uhc:id/team] minecraft:golden_apple 2

# Bingo UHC
execute if score #bhc uhc.gamemode matches 1 store result score #count bhc.data.temp if entity @a[scores={uhc.player.lives=2},predicate=uhc:id/team]
execute if score #bhc uhc.gamemode matches 1 run scoreboard players operation @s bhc.team.livescount += #count bhc.data.temp

## Retrait vie
scoreboard players set @a[scores={uhc.player.lives=2},predicate=uhc:id/team] uhc.player.lives 1

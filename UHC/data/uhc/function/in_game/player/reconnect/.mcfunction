
#> uhc:in_game/player/reconnect/
#
# @within			uhc:in_game/player/tick
#
#
# @description		Reconnexion d'un joueur
#

scoreboard players operation #team uhc.id.team = @s uhc.id.team
scoreboard players set @s uhc.player.disconnect 0

# Vérifie si le joueur s'est déconnecté au démarrage lorsque celui-ci se fait depuis une plateforme dans le ciel
execute if entity @s[tag=uhc.player.start_in_the_sky] if score #game_progress uhc.game_progress matches 1 if score #minutes uhc.data.temp matches 0.. run function uhc:in_game/player/reconnect/start_in_the_sky

# Team Health
execute if entity @s[gamemode=!spectator] run function uhc:in_game/player/health

# TP Bordure
execute if score #shrink_1_time_left uhc.data.temp matches ..0 as @s[tag=uhc.player,predicate=!uhc:dimension/the_nether] at @s run function uhc:in_game/tp/border/coords

# Supprimer les effets de start / respawn
execute if score #minutes uhc.data.temp matches 0.. as @s[tag=uhc.player,predicate=uhc:effect_respawn] run function uhc:in_game/player/reconnect/start

# Coordonnées de respawn
execute if score #live_1 uhc.data.temp matches 1.. run function uhc:in_game/tp/spawn/text with storage uhc:temp respawn_location

# Message trigger Ironman
execute if score #player uhc.scenario.ironman matches ..0 run scoreboard players reset @s uhc.ironman.list
execute if score #minutes uhc.data.temp matches 0.. if score #player uhc.scenario.ironman matches 1.. if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"Ironman ","color":"#FFE73F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" Pour voir les joueurs dans la liste :","color":"#FFFFFF","bold":false},{"text":"\n/trigger uhc.ironman.list","color":"#FFE73F","bold":false}]
execute if score #minutes uhc.data.temp matches 0.. if score #player uhc.scenario.ironman matches 1.. if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"Ironman ","color":"#FFE73F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" To see the players list:","color":"#FFFFFF","bold":false},{"text":"\n/trigger uhc.ironman.list","color":"#FFE73F","bold":false}]

# Message trigger Best PvE
execute if score #minutes uhc.data.temp matches 0.. if score #best_pve uhc.scenario matches 1 if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"Best PvE ","color":"#E73F3F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" Pour voir les joueurs dans la liste :","color":"#FFFFFF","bold":false},{"text":"\n/trigger uhc.best_pve.list","color":"#FFE73F","bold":false}]
execute if score #minutes uhc.data.temp matches 0.. if score #best_pve uhc.scenario matches 1 if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"Best PvE ","color":"#E73F3F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" To see the players list:","color":"#FFFFFF","bold":false},{"text":"\n/trigger uhc.best_pve.list","color":"#FFE73F","bold":false}]

# Trigger informations des équipes
execute if score #game_progress uhc.game_progress matches 2.. run scoreboard players enable @s uhc.info.team

# Bingo UHC
execute if score #bhc bhc.scenario matches 02 as @s[tag=uhc.player] in uhc:lobby run function bhc:scenario/02/target/death/cycle_reset
execute if score #live_2 uhc.data.temp matches ..0 if score @s uhc.player.lives matches 3 as @e[type=marker,tag=UHC] run function uhc:in_game/player/lives_remove/drop_to_2
execute if score #live_1 uhc.data.temp matches ..0 if score @s uhc.player.lives matches 2 as @e[type=marker,tag=UHC] run function uhc:in_game/player/lives_remove/drop_to_1

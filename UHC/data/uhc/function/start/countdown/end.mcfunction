
#> uhc:start/countdown/end
#
# @within			uhc:in_game/timer/tick
#
#
# @description		Dégel des joueurs
#

scoreboard players reset #start_delay uhc.data.setup

execute in minecraft:overworld run function uhc:all_dimension_commands/start
execute in minecraft:the_nether run function uhc:all_dimension_commands/start
execute in minecraft:the_end run function uhc:all_dimension_commands/start

## Démarrage de la partie
# Cycle jour/nuit
time set 0s
execute if score #bhc bhc.scenario matches 51 run time set 600s
execute if score #bhc bhc.scenario matches 51 in minecraft:overworld run gamerule minecraft:spawn_monsters false
# Joueurs
gamemode survival @a[tag=uhc.player]
effect clear @a
effect give @a minecraft:instant_health 1 9 true
execute as @a[tag=uhc.player] run attribute @s minecraft:fall_damage_multiplier modifier remove lobby:fall_damage
execute as @a[tag=uhc.player] run attribute @s minecraft:jump_strength base set 0.42
scoreboard players set @a[tag=uhc.player] uhc.effect.resistance -1
# Paramètres spéciaux
effect give @a[tag=uhc.player.start_in_the_sky] minecraft:invisibility 30 0 true
effect give @a[tag=uhc.player.start_in_the_sky] minecraft:weakness infinite 0 true
# Scenario
execute if score #hastey_boys uhc.scenario matches 1 as @a run attribute @s minecraft:mining_efficiency modifier add uhc:hastey_boys 10 add_value
execute if score #no_fall uhc.scenario matches 1 as @a run attribute @s minecraft:fall_damage_multiplier modifier add uhc:no_fall -1.0 add_value

## Messages
# FRA
execute if score #vanilla uhc.gamemode matches 1 run tellraw @a[scores={uhc.player.lang=061801}] [{"text":"\nLa partie vient de démarrer !","color":"#FFE73F","bold":false}]
execute if score #bhc uhc.gamemode matches 1 run tellraw @a[scores={uhc.player.lang=061801}] [{"text":"\n[","color":"#FFFFFF","bold":true},{"text":"Bingo","color":"#B73FFF"},{"text":"UHC","color":"#FFE73F"},{"text":"]","color":"#FFFFFF"},{"text":" La partie vient de démarrer !","color":"#FFE73F","bold":false}]
tellraw @a[scores={uhc.player.lang=061801}] [{"text":"Ironman ","color":"#FFE73F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" Pour voir les joueurs dans la liste :","color":"#FFFFFF","bold":false},{"text":"\n/trigger uhc.ironman.list","color":"#FFE73F","bold":false}]

# ENG
execute if score #vanilla uhc.gamemode matches 1 run tellraw @a[scores={uhc.player.lang=051407}] [{"text":"\nGame starting now!","color":"#FFE73F","bold":false}]
execute if score #bhc uhc.gamemode matches 1 run tellraw @a[scores={uhc.player.lang=051407}] [{"text":"\n[","color":"#FFFFFF","bold":true},{"text":"Bingo","color":"#B73FFF"},{"text":"UHC","color":"#FFE73F"},{"text":"]","color":"#FFFFFF"},{"text":" Game starting now!","color":"#FFE73F","bold":false}]
tellraw @a[scores={uhc.player.lang=051407}] [{"text":"Ironman ","color":"#FFE73F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" To see the players list:","color":"#FFFFFF","bold":false},{"text":"\n/trigger uhc.ironman.list","color":"#FFE73F","bold":false}]

# Best PvE
execute if score #best_pve uhc.scenario matches 1 run tellraw @a[scores={uhc.player.lang=061801}] [{"text":"Best PvE ","color":"#E73F3F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" Pour voir les joueurs dans la liste :","color":"#FFFFFF","bold":false},{"text":"\n/trigger uhc.best_pve.list","color":"#FFE73F","bold":false}]
execute if score #best_pve uhc.scenario matches 1 run tellraw @a[scores={uhc.player.lang=051407}] [{"text":"Best PvE ","color":"#E73F3F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" To see the players list :","color":"#FFFFFF","bold":false},{"text":"\n/trigger uhc.best_pve.list","color":"#FFE73F","bold":false}]

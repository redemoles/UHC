
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
execute as @a[tag=uhc.player] run function uhc:player_status/attributes_and_effects/uhc/playing
tag @a[tag=uhc.player] remove uhc.start.temp
scoreboard players set @a[tag=uhc.player] uhc.effect.resistance -1
# Paramètres spéciaux
effect give @a[tag=uhc.player.start_in_the_sky] minecraft:invisibility 30 0 true
# Scenario
execute if score #hastey_boys uhc.scenario matches 1 as @a run attribute @s minecraft:mining_efficiency modifier add uhc.hastey_boys 10 add_value
execute if score #no_fall uhc.scenario matches 1 as @a run attribute @s minecraft:fall_damage_multiplier modifier add uhc.no_fall -1.0 add_value

## Messages
function uhc:translation/start_countdown_end

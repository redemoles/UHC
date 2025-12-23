
#> bhc:scenario/02/target/hotbar/
#
# @within			uhc:in_game/timer/hotbar/target/update
#
#
# @description      Hotbar de target
#

tag @s add uhc.target.targeter_success

# Id de traqueur
scoreboard players operation #temp bhc.targeter.id = @e[type=marker,tag=UHC,distance=0..,predicate=uhc:id_team] bhc.targeter.id

## Récupération de la localisation du joueur
# Joueur traçable
execute if entity @e[type=marker,tag=UHC,distance=0..,predicate=!bhc:bhc_2/safe_target,predicate=bhc:bhc_2/this_is_targeted] if entity @p[tag=uhc.player,predicate=!bhc:bhc_2/safe_target,predicate=!bhc:bhc_2/last_death_same_cycle,predicate=bhc:bhc_2/this_is_targeted] at @s run function bhc:scenario/02/target/hotbar/player
# Aucun joueur traçable / Équipe non traçable
execute unless entity @e[type=marker,tag=UHC,distance=0..,predicate=!bhc:bhc_2/safe_target,predicate=bhc:bhc_2/this_is_targeted] run return run function bhc:scenario/02/target/hotbar/no_target
execute unless entity @p[tag=uhc.player,predicate=!bhc:bhc_2/safe_target,predicate=!bhc:bhc_2/last_death_same_cycle,predicate=bhc:bhc_2/this_is_targeted] run function bhc:scenario/02/target/hotbar/no_target

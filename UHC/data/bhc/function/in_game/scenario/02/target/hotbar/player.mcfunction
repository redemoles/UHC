
#> bhc:in_game/scenario/02/target/hotbar/player
#
# @within			bhc:in_game/scenario/02/target/hotbar/
#
#
# @description      Hotbar de target
#

# Récupération de la localisation du joueurs
execute as @p[tag=uhc.player,predicate=!bhc:bhc_2/safe_target,predicate=!bhc:bhc_2/last_death_same_cycle,predicate=bhc:bhc_2/this_is_targeted] unless score @s uhc.player.data.check matches 1 run function uhc:in_game/player/data/main
execute unless score @s uhc.player.data.check matches 1 run function uhc:in_game/player/data/main

# Hotbar joueurs ciblés
function bhc:in_game/scenario/02/target/hotbar/player_coords


#> bhc:scenario/02/target/hotbar/player
#
# @within			bhc:scenario/02/target/hotbar/
#
#
# @description      Hotbar de target
#

# Récupération de la localisation du joueurs
execute as @p[tag=uhc.player,predicate=!bhc:bhc_2/safe_target,predicate=!bhc:bhc_2/last_death_same_cycle,predicate=bhc:bhc_2/this_is_targeted] if entity @s[tag=!uhc.player.location_check] run function uhc:in_game/timer/hotbar/target/location
execute if entity @s[tag=!uhc.player.location_check] run function uhc:in_game/timer/hotbar/target/location

# Hotbar joueurs ciblés
function bhc:scenario/02/target/hotbar/player_coords

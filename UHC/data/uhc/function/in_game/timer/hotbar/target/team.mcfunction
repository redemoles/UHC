
#> uhc:in_game/timer/hotbar/target/team
#
# @within			uhc:in_game/timer/hotbar/target/
#
#
# @description      Hotbar de target
#

tag @s add uhc.target.targeter_success

# Récupération de la localisation des joueurs de l'équipe
execute as @a[tag=uhc.player,tag=!uhc.player.location_check,predicate=uhc:id_team] run function uhc:in_game/timer/hotbar/target/location

# Hotbar joueurs ciblés
function uhc:in_game/timer/hotbar/target/team_coords

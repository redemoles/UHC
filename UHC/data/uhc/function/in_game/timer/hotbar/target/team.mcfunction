
#> uhc:in_game/timer/hotbar/target/team
#
# @within			uhc:in_game/timer/hotbar/target/
#
#
# @description      Hotbar de target
#

tag @s add uhc.target.targeter_success

# Récupération de la localisation des joueurs de l'équipe
execute as @a[tag=uhc.player,predicate=uhc:id/team] unless score @s uhc.player.data.check matches 1 run function uhc:in_game/player/data/main

# Hotbar joueurs ciblés
function uhc:in_game/timer/hotbar/target/team_coords

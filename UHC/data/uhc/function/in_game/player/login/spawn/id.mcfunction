
#> uhc:in_game/player/login/spawn/id
#
# @within			uhc:in_game/player/login/main
#
#
# @description		Reconnexion d'un joueur
#

# Suppression des effets
execute if score #minutes uhc.data.temp matches 0.. run function uhc:in_game/player/login/start

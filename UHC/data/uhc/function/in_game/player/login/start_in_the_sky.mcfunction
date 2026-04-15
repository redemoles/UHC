
#> uhc:in_game/player/login/start_in_sky
#
# @within			uhc:in_game/player/login/main
#
#
# @description		Vérifie si le joueur s'est déconnecté pendant la suppression de la plateforme en hauteur générée au démarrage de la partie
#

execute if score #minutes uhc.data.temp matches 0 if score #seconds uhc.data.temp matches ..29 run return fail
function uhc:in_game/player/misc/on_ground_with_elytra
function uhc:in_game/tp/spawn/default
function uhc:translation/in_game/player_login_start_in_the_sky

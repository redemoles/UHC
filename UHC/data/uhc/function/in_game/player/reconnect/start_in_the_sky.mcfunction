
#> uhc:in_game/player/reconnect/start_in_sky
#
# @within			uhc:in_game/player/reconnect/
#
#
# @description		Vérifie si le joueur s'est déconnecté pendant la suppression de la plateforme en hauteur générée au démarrage de la partie
#

execute if score #minutes uhc.data.temp matches 0 if score #seconds uhc.data.temp matches ..29 run return fail
function uhc:in_game/player/misc/on_ground_with_elytra
function uhc:in_game/tp/spawn/default with storage uhc:temp respawn_location

execute as @s[scores={uhc.player.lang=061801}] run tellraw @s [{"text":"Tu t'es déconnecté en étant sur la plateforme de démarrage, tu as été téléporté à la surface de la carte"}]
execute as @s[scores={uhc.player.lang=051407}] run tellraw @s [{"text":"You disconnected while on the start platform and were teleported on the surface of the map."}]


#> uhc:pre_game/player_and_team/reconnect/
#
# @within			uhc:pre_game/timer/tick_player
#
#
# @description		Joueur reconnecté détecté
#

# Mini-jeux
execute if entity @s[tag=mgs.tc.spec] run function lobby:mini_games/tc/spectators_room/when_joined
execute if entity @s[tag=mgs.tc.player] run function uhc:pre_game/player_and_team/reconnect/leave_tc

# Chargement de l'inventaire
scoreboard players set @s uhc.player.online 0
gamemode adventure @s
execute as @s[tag=uhc.host] run function uhc:pre_game/menu/reset/host
execute as @s[tag=!uhc.host] run function uhc:pre_game/menu/reset/player
scoreboard players set @s uhc.player.online 1
scoreboard players set @s uhc.player.disconnect 0

# Si déconnexion pendant la préparation des points d'apparition
execute if score @s uhc.spawn.check matches 01..32 run function uhc:translation/pre_game/world_check_trigger
execute if score @s uhc.spawn.check matches 01..32 run gamemode spectator @s

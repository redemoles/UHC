
#> uhc:in_game/advancement/wolf_killed_player/pos
#
# @within			uhc:in_game/advancement/wolf_killed_player/
#
#
# @description		Le joueur est mort par un loup
#

execute positioned 0 0 0 as @n[type=minecraft:wolf,distance=..3] on owner run tag @s add uhc.kill_with_wolf


tag @p[tag=uhc.kill_with_wolf] remove uhc.kill_with_wolf


#> uhc:pre_game/menu/load/world_generation/disable
#
# @within			uhc:pre_game/menu/selected/
#
#
# @description		Désactivation de la génération du monde
#

scoreboard players set #overworld_working pregen.world 0
scoreboard players set #the_nether_working pregen.world 0
scoreboard players set #the_end_working pregen.world 0
function uhc:pre_game/menu/load/world_generation/
execute in uhc:lobby run gamerule minecraft:spawn_mobs false
execute if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"Génération du monde arrêtée.","color":"#FFFFFF"}]
execute if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"World generation stopped.","color":"#FFFFFF"}]

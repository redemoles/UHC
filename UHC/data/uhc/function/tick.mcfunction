
#> uhc:tick
#
# @within			#minecraft:tick
#
#
# @description		Function executed every tick
#

# Mise à jour
execute as @a[tag=uhc.host] run function uhc:datapack_update/

# Nouvelle map
execute as @p[tag=!uhc.player,tag=!uhc.spec] run function uhc:pre_game/new_map/main
execute as @p[scores={uhc.game.reset=1}] run function uhc:reset
execute as @p[scores={uhc.game.reset=2}] run function uhc:reset/full

# Pre-game
execute if score #minutes uhc.data.temp matches -1 if score #seconds uhc.data.temp matches -1 in uhc:lobby run function uhc:pre_game/timer/tick

# In-game
execute if score #game_progress uhc.game_progress matches 1.. run function uhc:in_game/timer/tick

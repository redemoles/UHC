
#> uhc:in_game/scenario/tick
#
# @within			uhc:in_game/timer/tick
#
#
# @description		Fonction tick de base en jeu pour chaque joueur
#

# Ironman
execute if score #player uhc.scenario.ironman matches 1 unless score #winner_rewarded uhc.scenario.ironman matches 1 as @p[tag=uhc.ironman] run function uhc:in_game/scenario/ironman/reward
# Scénarios
execute if score #experienceless uhc.scenario matches 1 as @e[type=experience_orb] run kill @s
execute if score #enchanting_setup uhc.scenario matches 1 run function uhc:in_game/scenario/enchanting_setup/tick
execute if score #sound_paranoia uhc.scenario matches 1 as @e[type=minecraft:marker,tag=uhc.sound_paranoia.on] at @s run function uhc:in_game/scenario/sound_paranoia/tick

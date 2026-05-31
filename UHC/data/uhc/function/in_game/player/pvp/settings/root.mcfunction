
#> uhc:in_game/player/pvp/settings/root
#
# @within			uhc:in_game/player/tick
#
#
# @description		Règles de PvP
#

# PvP Version 1.8
execute if score #version_pvp uhc.data.setup matches 1 run function uhc:in_game/player/pvp/settings/version_pvp/1_8
execute if score #version_pvp uhc.data.setup matches 0 if entity @s[tag=uhc.version_pvp.1_8] run function uhc:in_game/player/pvp/settings/version_pvp/1_21

# Chevaux
execute if score #horse_limit uhc.data.setup matches 0 if entity @s[predicate=uhc:settings/ride_a_horse] run function uhc:in_game/player/pvp/settings/horse/

# Loups
execute at @s if entity @n[type=minecraft:wolf,distance=..10] run function uhc:in_game/player/pvp/settings/wolf/

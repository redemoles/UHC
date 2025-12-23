
#> uhc:in_game/player/effect/night_vision
#
# @within			uhc:in_game/timer/tick
#
#
# @description		Commandes in-game en tick
#

scoreboard players reset @s uhc.night_vision
scoreboard players enable @s uhc.night_vision
execute if entity @s[tag=uhc.night_vision] run effect clear @s minecraft:night_vision
execute if entity @s[tag=uhc.night_vision] run return run tag @s remove uhc.night_vision
execute if entity @s[tag=!uhc.night_vision] run return run tag @s add uhc.night_vision

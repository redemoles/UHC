
#> uhc:in_game/scenario/sound_paranoia/tick
#
# @within			uhc:in_game/player/tick
#
#
# @description		Son
#

scoreboard players operation #number uhc.scenario.sound_paranoia.number = @s uhc.scenario.sound_paranoia.number
tag @p[predicate=uhc:scenario/sound_paranoia/id_sound] add uhc.scenario.sound_paranoia.on

execute if score @s uhc.scenario.sound_paranoia.sound matches 3 if score @s uhc.scenario.sound_paranoia.tick matches 1.. run function uhc:in_game/scenario/sound_paranoia/sound/player_eat
execute if score @s uhc.scenario.sound_paranoia.sound matches 4 if score @s uhc.scenario.sound_paranoia.tick matches 1.. run function uhc:in_game/scenario/sound_paranoia/sound/skeleton
execute if score @s uhc.scenario.sound_paranoia.sound matches 5 if score @s uhc.scenario.sound_paranoia.tick matches 1.. run function uhc:in_game/scenario/sound_paranoia/sound/witch
execute if score @s uhc.scenario.sound_paranoia.sound matches 8 if score @s uhc.scenario.sound_paranoia.tick matches 1.. run function uhc:in_game/scenario/sound_paranoia/sound/lava
execute if score @s uhc.scenario.sound_paranoia.sound matches 9 if score @s uhc.scenario.sound_paranoia.tick matches 1.. run function uhc:in_game/scenario/sound_paranoia/sound/warden
execute if score @s uhc.scenario.sound_paranoia.sound matches 10 if score @s uhc.scenario.sound_paranoia.tick matches 1.. run function uhc:in_game/scenario/sound_paranoia/sound/water_bucket
execute if score @s uhc.scenario.sound_paranoia.sound matches 11..12 if score @s uhc.scenario.sound_paranoia.tick matches 1.. run function uhc:in_game/scenario/sound_paranoia/sound/stone

tag @p[predicate=uhc:scenario/sound_paranoia/id_sound] remove uhc.scenario.sound_paranoia.on

scoreboard players remove @s uhc.scenario.sound_paranoia.tick 1
kill @s[scores={uhc.scenario.sound_paranoia.tick=0}]

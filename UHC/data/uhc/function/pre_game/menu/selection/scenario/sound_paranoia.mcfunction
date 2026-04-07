
#> uhc:pre_game/menu/selection/scenario/sound_paranoia
#
# @within			uhc:pre_game/menu/selection/scenario/
#
#
# @description		Activation/Désactivation Blood Cycle
#


scoreboard players add #sound_paranoia uhc.scenario 1
execute if score #sound_paranoia uhc.scenario matches 2 run scoreboard players set #sound_paranoia uhc.scenario 0

execute if score #sound_paranoia uhc.scenario matches 0 if score #mystery_scenarios uhc.data.setup matches 0 run tellraw @a [{"text":"Scenarios ","color":"#FFE73F"},{"text":">","color":"#9F9F9F","bold":true},{"text":" Sound Paranoia","color":"#FFFFFF","bold":false},{"text":" disabled.","color":"#FF3F3F","bold":false}]
execute if score #sound_paranoia uhc.scenario matches 1 if score #mystery_scenarios uhc.data.setup matches 0 run tellraw @a [{"text":"Scenarios ","color":"#FFE73F"},{"text":">","color":"#9F9F9F","bold":true},{"text":" Sound Paranoia","color":"#FFFFFF","bold":false},{"text":" enabled.","color":"#3FE7FF","bold":false}]

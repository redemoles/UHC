
#> uhc:pre_game/menu/load/scenario/sky_high
#
# @within			uhc:pre_game/menu/selection/scenario/
#
#
# @description		Activation/Désactivation Sky High
#

scoreboard players set #go_to_hell uhc.scenario 0
scoreboard players add #sky_high uhc.scenario 1
execute if score #sky_high uhc.scenario matches 2 run scoreboard players set #sky_high uhc.scenario 0

execute if score #sky_high uhc.scenario matches 0 run tellraw @a [{"text":"Sky High","color":"#FF3F3F","bold":true},{"text":" désactivé","color":"#FF3F3F","bold":false}]
execute if score #sky_high uhc.scenario matches 1 run tellraw @a [{"text":"Sky High","color":"#3FE7FF","bold":true},{"text":" activé","color":"#3FE7FF","bold":false}]

execute if score @s uhc.menu.scenario.sky_high matches 1.. run function uhc:pre_game/menu/load/scenario/sky_high/menu with storage uhc:scenario sky_high

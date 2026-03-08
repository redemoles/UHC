
#> uhc:in_game/scenario/best_pve/list_2
#
# @within			uhc:in_game/scenario/best_pve/list_1
# 
#
# @description		Obtention de la liste Best PvE avec /trigger uhc.best_pve.list set 1
#

scoreboard players operation #seconds uhc.scenario.best_pve.tick = @s uhc.scenario.best_pve.tick
scoreboard players operation #seconds uhc.scenario.best_pve.tick /= #20 uhc.data.numbers
scoreboard players operation #minutes uhc.scenario.best_pve.tick = #seconds uhc.scenario.best_pve.tick
scoreboard players operation #minutes uhc.scenario.best_pve.tick /= #60 uhc.data.numbers
scoreboard players operation #seconds uhc.scenario.best_pve.tick %= #60 uhc.data.numbers
tellraw @p[tag=uhc.scenario.best_pve] [{"text":"","color":"#3FE7FF"},{"selector":"@s"},{"text":" ["},{"score":{"name":"#minutes","objective":"uhc.scenario.best_pve.tick"}},{"text":"m"},{"score":{"name":"#seconds","objective":"uhc.scenario.best_pve.tick"}},{"text":"s"},{"text":"]"}]
tellraw @p[tag=!uhc.scenario.best_pve] [{"text":"","color":"#FF3F3F"},{"selector":"@s"},{"text":" ["},{"score":{"name":"#minutes","objective":"uhc.scenario.best_pve.tick"}},{"text":"m"},{"score":{"name":"#seconds","objective":"uhc.scenario.best_pve.tick"}},{"text":"s"},{"text":"]"}]
tag @s remove uhc.best_pve.list

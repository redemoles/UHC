
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

# Dans liste Best PvE
execute if score #seconds uhc.scenario.best_pve.tick matches ..09 run tellraw @p[tag=uhc.scenario.best_pve] [{"text":"","color":"#3FE7FF"},{"selector":"@s"},{"text":" (","color":"#9F9F9F","bold":false},{"score":{"name":"#minutes","objective":"uhc.scenario.best_pve.tick"},"bold":false},{"text":":","color":"#9F9F9F","bold":false},{"text":"0","bold":false},{"score":{"name":"#seconds","objective":"uhc.scenario.best_pve.tick"},"bold":false},{"text":")","color":"#9F9F9F","bold":false}]
execute if score #seconds uhc.scenario.best_pve.tick matches 10.. run tellraw @p[tag=uhc.scenario.best_pve] [{"text":"","color":"#3FE7FF"},{"selector":"@s"},{"text":" (","color":"#9F9F9F","bold":false},{"score":{"name":"#minutes","objective":"uhc.scenario.best_pve.tick"},"bold":false},{"text":":","color":"#9F9F9F","bold":false},{"text":"","bold":false},{"score":{"name":"#seconds","objective":"uhc.scenario.best_pve.tick"},"bold":false},{"text":")","color":"#9F9F9F","bold":false}]

# Hors liste Best PvE
execute if score #seconds uhc.scenario.best_pve.tick matches ..09 run tellraw @p[tag=!uhc.scenario.best_pve] [{"text":"","color":"#FF3F3F"},{"selector":"@s"},{"text":" (","color":"#9F9F9F","bold":false},{"score":{"name":"#minutes","objective":"uhc.scenario.best_pve.tick"},"bold":false},{"text":":","color":"#9F9F9F","bold":false},{"text":"0","bold":false},{"score":{"name":"#seconds","objective":"uhc.scenario.best_pve.tick"},"bold":false},{"text":")","color":"#9F9F9F","bold":false}]
execute if score #seconds uhc.scenario.best_pve.tick matches 10.. run tellraw @p[tag=!uhc.scenario.best_pve] [{"text":"","color":"#FF3F3F"},{"selector":"@s"},{"text":" (","color":"#9F9F9F","bold":false},{"score":{"name":"#minutes","objective":"uhc.scenario.best_pve.tick"},"bold":false},{"text":":","color":"#9F9F9F","bold":false},{"text":"","bold":false},{"score":{"name":"#seconds","objective":"uhc.scenario.best_pve.tick"},"bold":false},{"text":")","color":"#9F9F9F","bold":false}]

tag @s remove uhc.best_pve.list


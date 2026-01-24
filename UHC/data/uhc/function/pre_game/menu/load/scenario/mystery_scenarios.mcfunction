
#> uhc:pre_game/menu/load/scenario/mystery_scenarios
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Redirection
#


scoreboard players add #mystery_scenarios uhc.data.setup 1
execute if score #mystery_scenarios uhc.data.setup matches 2 run scoreboard players set #mystery_scenarios uhc.data.setup 0

execute if score #mystery_scenarios uhc.data.setup matches 0 run tellraw @a[scores={uhc.player.lang=061801}] [{"text":"Scénarios","color":"#3FE7FF","bold":true},{"text":" connus des joueurs","color":"#3FE7FF","bold":false}]
execute if score #mystery_scenarios uhc.data.setup matches 1 run tellraw @a[scores={uhc.player.lang=061801}] [{"text":"Scénarios","color":"#E73FFF","bold":true},{"text":" cachés aux joueurs","color":"#E73FFF","bold":false}]

execute if score #mystery_scenarios uhc.data.setup matches 0 run tellraw @a[scores={uhc.player.lang=051407}] [{"text":"Scenarios","color":"#3FE7FF","bold":true},{"text":" known to players","color":"#3FE7FF","bold":false}]
execute if score #mystery_scenarios uhc.data.setup matches 1 run tellraw @a[scores={uhc.player.lang=051407}] [{"text":"Scenarios","color":"#E73FFF","bold":true},{"text":" hidden to players","color":"#E73FFF","bold":false}]

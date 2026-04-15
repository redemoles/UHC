
#> uhc:reset/full
#
# @within			
#
#
# @description		Réinitialisation plus complète du datapack
#

execute if score #game_progress uhc.game_progress matches 1.. run scoreboard players set #warning uhc.game.reset 2
execute if score #warning uhc.game.reset matches 2 unless score @s uhc.game.reset matches 1.. run return run function uhc:translation/reset_warning_full

function uhc:load
scoreboard objectives remove lobby.structure.data
scoreboard objectives remove uhc.data.setup
scoreboard objectives remove uhc.player.lang
function uhc:reset

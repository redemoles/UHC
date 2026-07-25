
#> uhc:start/countdown/text
#
# @within			uhc:in_game/timer/tick
#
#
# @description		Lancement de la partie
#

title @a reset
execute if score #vanilla uhc.gamemode matches 1 run title @a title [{"text":"UHC","color":"#3FE7FF","bold":false}]
execute if score #bhc uhc.gamemode matches 1 run function uhc:start/countdown/text_bhc
function #plugin:start/title

function uhc:translation/start_countdown_start

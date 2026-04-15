
#> uhc:start/countdown/text_bhc
#
# @within			uhc:in_game/timer/tick
#
#
# @description		Text
#

execute if score #bhc bhc.scenario matches 00 run title @a title [{"text":"Bingo","color":"#B73FFF","bold":false},{"text":" UHC","color":"#FFE73F","bold":false}]
execute if score #bhc bhc.scenario matches 01 run title @a title [{"text":"Bingo","color":"#B73FFF","bold":false},{"text":" UHC","color":"#FFE73F","bold":false}]
execute if score #bhc bhc.scenario matches 02 run title @a title [{"text":"Bingo","color":"#CF6F3F","bold":false},{"text":" UHC","color":"#FFE73F","bold":false}]
execute if score #bhc bhc.scenario matches 51 run title @a title [{"text":"CHU ","color":"#FFE73F","bold":false},{"text":"ogniB","color":"#B73FFF","bold":false}]
execute if score #bhc bhc.scenario matches 91..98 run title @a title [{"text":"Bingo","color":"#CFCFCF","bold":false},{"text":" UHC","color":"#FFE73F","bold":false}]
execute if score #bhc bhc.scenario matches 99 run title @a title [{"text":"Bingo","color":"#B73FFF","bold":false},{"text":" UHC Run","color":"#FFE73F","bold":false}]

function uhc:translation/bhc/start_title_scenario

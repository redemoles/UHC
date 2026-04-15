
#> uhc:translation/lobby/tc_puzzle_pb
#
# @within			lobby:mini_games/tc/mini_games/puzzle/record/new_pb
#
#
#
#

## FRA - Français / French
$execute if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"Terminé en ","color":"#FFFFFF"},{"score":{"name":"#temp_record","objective":"lobby.tc.data.record.puzzle.min"},"color":"#FFE73F"},{"text":":","color":"#FFFFFF"},{"text":"$(s)","color":"#FFE73F"},{"score":{"name":"#temp_record","objective":"lobby.tc.data.record.puzzle.sec"},"color":"#FFE73F"},{"text":".","color":"#FFFFFF"},{"text":"$(ms)","color":"#FFE73F"},{"score":{"name":"#temp_record","objective":"lobby.tc.data.record.puzzle.ms"},"color":"#FFE73F"},{"text":" !","color":"#FFFFFF"}]

## ENG - English
$execute if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"Finished in ","color":"#FFFFFF"},{"score":{"name":"#temp_record","objective":"lobby.tc.data.record.puzzle.min"},"color":"#FFE73F"},{"text":":","color":"#FFFFFF"},{"text":"$(s)","color":"#FFE73F"},{"score":{"name":"#temp_record","objective":"lobby.tc.data.record.puzzle.sec"},"color":"#FFE73F"},{"text":".","color":"#FFFFFF"},{"text":"$(ms)","color":"#FFE73F"},{"score":{"name":"#temp_record","objective":"lobby.tc.data.record.puzzle.ms"},"color":"#FFE73F"},{"text":"!","color":"#FFFFFF"}]

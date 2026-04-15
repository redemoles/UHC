
#> uhc:translation/lobby/tc_puzzle_end
#
# @within			lobby:mini_games/tc/mini_games/puzzle/record/time
#
#
#
#

## FRA - Français / French
$execute as @a[tag=mgs.tc.player,scores={uhc.player.lang=061801}] run tellraw @s [{"text":"Nouveau record local par ","color":"#FF3FFF"},{"selector":"@p[tag=mgs.tc.lr]"},{"text":" ! "},{"score":{"name":"#record","objective":"lobby.tc.data.record.puzzle.min"},"color":"#FFE73F"},{"text":":","color":"#FFFFFF"},{"text":"$(s)","color":"#FFE73F"},{"score":{"name":"#record","objective":"lobby.tc.data.record.puzzle.sec"},"color":"#FFE73F"},{"text":".","color":"#FFFFFF"},{"text":"$(ms)","color":"#FFE73F"},{"score":{"name":"#record","objective":"lobby.tc.data.record.puzzle.ms"},"color":"#FFE73F"}]

## ENG - English
$execute as @a[tag=mgs.tc.player,scores={uhc.player.lang=051407}] run tellraw @s [{"text":"New local record by ","color":"#FF3FFF"},{"selector":"@p[tag=mgs.tc.lr]"},{"text":" ! "},{"score":{"name":"#record","objective":"lobby.tc.data.record.puzzle.min"},"color":"#FFE73F"},{"text":":","color":"#FFFFFF"},{"text":"$(s)","color":"#FFE73F"},{"score":{"name":"#record","objective":"lobby.tc.data.record.puzzle.sec"},"color":"#FFE73F"},{"text":".","color":"#FFFFFF"},{"text":"$(ms)","color":"#FFE73F"},{"score":{"name":"#record","objective":"lobby.tc.data.record.puzzle.ms"},"color":"#FFE73F"}]

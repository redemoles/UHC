
#> uhc:translation/lobby/tc_parkour_pb
#
# @within			lobby:mini_games/tc/mini_games/parkour/record/*/new_pb
#
#
#
#

## FRA - Français / French
$execute if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"Nouveau record personnel ! ","color":"#B73FFF"},{"score":{"name":"@s","objective":"lobby.tc.data.record.parkour.$(map).min"},"color":"#FFE73F"},{"text":":","color":"#FFFFFF"},{"text":"$(s)","color":"#FFE73F"},{"score":{"name":"@s","objective":"lobby.tc.data.record.parkour.$(map).sec"},"color":"#FFE73F"},{"text":".","color":"#FFFFFF"},{"text":"$(ms)","color":"#FFE73F"},{"score":{"name":"@s","objective":"lobby.tc.data.record.parkour.$(map).ms"},"color":"#FFE73F"}]

## ENG - English
$execute if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"New personal best! ","color":"#B73FFF"},{"score":{"name":"@s","objective":"lobby.tc.data.record.parkour.$(map).min"},"color":"#FFE73F"},{"text":":","color":"#FFFFFF"},{"text":"$(s)","color":"#FFE73F"},{"score":{"name":"@s","objective":"lobby.tc.data.record.parkour.$(map).sec"},"color":"#FFE73F"},{"text":".","color":"#FFFFFF"},{"text":"$(ms)","color":"#FFE73F"},{"score":{"name":"@s","objective":"lobby.tc.data.record.parkour.$(map).ms"},"color":"#FFE73F"}]

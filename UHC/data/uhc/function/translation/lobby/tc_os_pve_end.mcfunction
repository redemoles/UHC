
#> uhc:translation/lobby/tc_os_pve_end
#
# @within			lobby:mini_games/tc/mini_games/os_pve/record/*/time
#
#
#
#

## FRA - Français / French
$execute if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"Terminé en ","color":"#FFFFFF"},{"score":{"name":"#temp_record","objective":"lobby.tc.data.record.os_pve.$(map).min"},"color":"#FFE73F"},{"text":":","color":"#FFFFFF"},{"text":"$(s)","color":"#FFE73F"},{"score":{"name":"#temp_record","objective":"lobby.tc.data.record.os_pve.$(map).sec"},"color":"#FFE73F"},{"text":".","color":"#FFFFFF"},{"text":"$(ms)","color":"#FFE73F"},{"score":{"name":"#temp_record","objective":"lobby.tc.data.record.os_pve.$(map).ms"},"color":"#FFE73F"},{"text":" !","color":"#FFFFFF"}]

## ENG - English
$execute if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"Finished in ","color":"#FFFFFF"},{"score":{"name":"#temp_record","objective":"lobby.tc.data.record.os_pve.$(map).min"},"color":"#FFE73F"},{"text":":","color":"#FFFFFF"},{"text":"$(s)","color":"#FFE73F"},{"score":{"name":"#temp_record","objective":"lobby.tc.data.record.os_pve.$(map).sec"},"color":"#FFE73F"},{"text":".","color":"#FFFFFF"},{"text":"$(ms)","color":"#FFE73F"},{"score":{"name":"#temp_record","objective":"lobby.tc.data.record.os_pve.$(map).ms"},"color":"#FFE73F"},{"text":"!","color":"#FFFFFF"}]

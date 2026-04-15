
#> uhc:translation/lobby/tc_ctb_record_maximum_pb
#
# @within			lobby:mini_games/tc/mini_games/ctb/record/maximum/new_pb
#
#
#
#

## FRA - Français / French
execute if score @s lobby.tc.record.ctb.maximum.for >= @s lobby.tc.record.ctb.maximum.against if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"Nouveau record personnel ! ","color":"#B73FFF"},{"score":{"name":"@s","objective":"lobby.tc.record.ctb.maximum.for"},"color":"#FFE73F","underlined":true},{"text":"-","color":"#FFFFFF"},{"score":{"name":"@s","objective":"lobby.tc.record.ctb.maximum.against"},"color":"#FF3F3F"},{"text":" (","color":"#FFFFFF"},{"text":"+","color":"#FFE73F"},{"score":{"name":"@s","objective":"lobby.tc.record.ctb.maximum.difference"},"color":"#FFE73F"},{"text":")","color":"#FFFFFF"}]
execute if score @s lobby.tc.record.ctb.maximum.for < @s lobby.tc.record.ctb.maximum.against if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"Nouveau record personnel ! ","color":"#B73FFF"},{"score":{"name":"@s","objective":"lobby.tc.record.ctb.maximum.for"},"color":"#FFE73F","underlined":true},{"text":"-","color":"#FFFFFF"},{"score":{"name":"@s","objective":"lobby.tc.record.ctb.maximum.against"},"color":"#FF3F3F"},{"text":" (","color":"#FFFFFF"},{"score":{"name":"@s","objective":"lobby.tc.record.ctb.maximum.difference"},"color":"#FF3F3F"},{"text":")","color":"#FFFFFF"}]

## ENG - English
execute if score @s lobby.tc.record.ctb.maximum.for >= @s lobby.tc.record.ctb.maximum.against if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"New personal best! ","color":"#B73FFF"},{"score":{"name":"@s","objective":"lobby.tc.record.ctb.maximum.for"},"color":"#FFE73F","underlined":true},{"text":"-","color":"#FFFFFF"},{"score":{"name":"@s","objective":"lobby.tc.record.ctb.maximum.against"},"color":"#FF3F3F"},{"text":" (","color":"#FFFFFF"},{"text":"+","color":"#FFE73F"},{"score":{"name":"@s","objective":"lobby.tc.record.ctb.maximum.difference"},"color":"#FFE73F"},{"text":")","color":"#FFFFFF"}]
execute if score @s lobby.tc.record.ctb.maximum.for < @s lobby.tc.record.ctb.maximum.against if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"New personal best! ","color":"#B73FFF"},{"score":{"name":"@s","objective":"lobby.tc.record.ctb.maximum.for"},"color":"#FFE73F","underlined":true},{"text":"-","color":"#FFFFFF"},{"score":{"name":"@s","objective":"lobby.tc.record.ctb.maximum.against"},"color":"#FF3F3F"},{"text":" (","color":"#FFFFFF"},{"score":{"name":"@s","objective":"lobby.tc.record.ctb.maximum.difference"},"color":"#FF3F3F"},{"text":")","color":"#FFFFFF"}]

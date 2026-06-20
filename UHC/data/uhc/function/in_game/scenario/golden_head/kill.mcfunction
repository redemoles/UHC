
#> uhc:in_game/scenario/golden_head/kill
#
# @within			uhc:in_game/player/death/location/item_drop/main
#
#
# @description		
#

tag @s add uhc.scenario.golden_head
execute in uhc:lobby run data modify block 0 -61 0 front_text.messages[0] set value [{"selector":"@p[tag=uhc.scenario.golden_head]"}]
execute in uhc:lobby run data modify storage uhc:temp scenario.golden_head.name set from block 0 -61 0 front_text.messages[0].hover_event.name
function uhc:in_game/scenario/golden_head/macro_text with storage uhc:temp scenario.golden_head
tag @s remove uhc.scenario.golden_head

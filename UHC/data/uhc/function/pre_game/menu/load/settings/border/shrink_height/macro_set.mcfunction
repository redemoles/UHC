
#> uhc:pre_game/menu/load/settings/border/shrink_height/macro_set
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

execute if score #sky_high uhc.scenario matches 0 run data modify block 0 -61 0 front_text.messages set value [{"score":{"name":"#map_height_limit_above","objective":"uhc.data.setup"},"color":"#FF3F3F","bold":true,"italic":false},{"score":{"name":"#map_height_limit_below","objective":"uhc.data.setup"},"color":"#FF3F3F","bold":true,"italic":false},{"score":{"name":"#map_height_timer","objective":"uhc.data.setup"},"color":"#FF3F3F","bold":true,"italic":false},{"text":"Limite Y","color":"#FF3F3F","bold":true,"italic":false}]
execute if score #sky_high uhc.scenario matches 1 run data modify block 0 -61 0 front_text.messages set value [{"text":"256","color":"#FF3F3F","bold":true,"italic":false},{"score":{"name":"#height","objective":"uhc.scenario.sky_high.settings"},"color":"#FF3F3F","bold":true,"italic":false},{"score":{"name":"#sky_high","objective":"uhc.data.setup"},"color":"#FF3F3F","bold":true,"italic":false},""]
data modify storage uhc:settings menu.shrink.height_y_max set from block 0 -61 0 front_text.messages[0]
data modify storage uhc:settings menu.shrink.height_y_min set from block 0 -61 0 front_text.messages[1]
data modify storage uhc:settings menu.shrink.height_y_timer set from block 0 -61 0 front_text.messages[2]

execute if score @s uhc.player.lang matches 061801 if score #sky_high uhc.scenario matches 0 run data modify storage uhc:settings menu.shrink.height_text set value "Limites Y"
execute if score @s uhc.player.lang matches 051407 if score #sky_high uhc.scenario matches 0 run data modify storage uhc:settings menu.shrink.height_text set value "Y limits"
execute if score #sky_high uhc.scenario matches 1 run data modify storage uhc:settings menu.shrink.height_text set value "Sky High"


#> uhc:translation/bhc/01_gold_rush/bingo_b_exhaustion_square
#
# @within			bhc:in_game/scenario/01/bingo_stepb/exhaustion_1
#
#
#
#

## FRA - Français / French
$tellraw @a[scores={uhc.player.lang=061801},advancements={$(namespace):$(line)_$(column)=false}] [{"text":"La case ","color":"#FF5F5F","bold":false},{"text":"[","color":"#7F1F1F","bold":false,"hover_event":{"action":"show_text","value":{"text":"$(description)","color":"#FFFFFF"}}},{"text":"$(title)","color":"#FF3F3F","bold":false,"hover_event":{"action":"show_text","value":{"text":"$(description)","color":"#FFFFFF"}}},{"text":"]","color":"#7F1F1F","bold":false,"hover_event":{"action":"show_text","value":{"text":"$(description)","color":"#FFFFFF"}}},{"text":" est épuisée !","bold":false}]
$execute unless score #exhausted_send bhc.data.temp matches 0 run tellraw @a[scores={uhc.player.lang=061801},advancements={$(namespace):$(line)_$(column)=true}] [{"text":"La case ","color":"#E7E7E7","bold":false},{"text":"[","color":"#5F5F5F","bold":false,"hover_event":{"action":"show_text","value":{"text":"$(description)","color":"#FFBFBF"}}},{"text":"$(title)","color":"#9F9F9F","bold":false,"hover_event":{"action":"show_text","value":{"text":"$(description)","color":"#FFBFBF"}}},{"text":"]","color":"#5F5F5F","bold":false,"hover_event":{"action":"show_text","value":{"text":"$(description)","color":"#FFFFFF"}}},{"text":" a été épuisée !","bold":false}]

## ENG - English
$tellraw @a[scores={uhc.player.lang=051407},advancements={$(namespace):$(line)_$(column)=false}] [{"text":"The square ","color":"#FF5F5F","bold":false},{"text":"[","color":"#7F1F1F","bold":false,"hover_event":{"action":"show_text","value":{"text":"$(description)","color":"#FFFFFF"}}},{"text":"$(title)","color":"#FF3F3F","bold":false,"hover_event":{"action":"show_text","value":{"text":"$(description)","color":"#FFFFFF"}}},{"text":"]","color":"#7F1F1F","bold":false,"hover_event":{"action":"show_text","value":{"text":"$(description)","color":"#FFFFFF"}}},{"text":" is exhausted !","bold":false}]
$execute unless score #exhausted_send bhc.data.temp matches 0 run tellraw @a[scores={uhc.player.lang=051407},advancements={$(namespace):$(line)_$(column)=true}] [{"text":"The square ","color":"#E7E7E7","bold":false},{"text":"[","color":"#5F5F5F","bold":false,"hover_event":{"action":"show_text","value":{"text":"$(description)","color":"#FFBFBF"}}},{"text":"$(title)","color":"#9F9F9F","bold":false,"hover_event":{"action":"show_text","value":{"text":"$(description)","color":"#FFBFBF"}}},{"text":"]","color":"#5F5F5F","bold":false,"hover_event":{"action":"show_text","value":{"text":"$(description)","color":"#FFFFFF"}}},{"text":" has been exhausted !","bold":false}]


#> uhc:translation/bhc/01_gold_rush/bingo_b_exhaustion_sqaure
#
# @within			bhc:scenario/01/bingo_stepb/exhaustion_1
#
#
#
#

## FRA - Français / French
$execute if score #$(namespace)_$(line)_$(column) bhc.case matches ..0 run tellraw @a[scores={uhc.player.lang=061801},advancements={$(namespace):$(line)_$(column)=false}] [{"text":"La case ","color":"#FF5F5F","bold":false},{"text":"[","color":"#7F1F1F","bold":false,"hover_event":{"action":"show_text","value":{"text":"$(description)","color":"#FFFFFF"}}},{"text":"$(title)","color":"#FF3F3F","bold":false,"hover_event":{"action":"show_text","value":{"text":"$(description)","color":"#FFFFFF"}}},{"text":"]","color":"#7F1F1F","bold":false,"hover_event":{"action":"show_text","value":{"text":"$(description)","color":"#FFFFFF"}}},{"text":" est épuisée !","bold":false}]

## ENG - English
$execute if score #$(namespace)_$(line)_$(column) bhc.case matches ..0 run tellraw @a[scores={uhc.player.lang=051407},advancements={$(namespace):$(line)_$(column)=false}] [{"text":"The box ","color":"#FF5F5F","bold":false},{"text":"[","color":"#7F1F1F","bold":false,"hover_event":{"action":"show_text","value":{"text":"$(description)","color":"#FFFFFF"}}},{"text":"$(title)","color":"#FF3F3F","bold":false,"hover_event":{"action":"show_text","value":{"text":"$(description)","color":"#FFFFFF"}}},{"text":"]","color":"#7F1F1F","bold":false,"hover_event":{"action":"show_text","value":{"text":"$(description)","color":"#FFFFFF"}}},{"text":" is exhausted !","bold":false}]


#> uhc:translation/menu/selected/gamemode_text_main
#
# @within			uhc:pre_game/menu/selected/gamemode/*
#
#
#
#

function #plugin:pre_game/menu/selected/gamemodes_main_menu/text

## FRA - Français / French
execute if score #bhc bhc.scenario matches 00 run data modify storage uhc:settings gamemode.fra set value [{"text":"Bingo","color":"#B73FFF",extra:[{"text":" UHC","color":"#FFE73F"},{"text":" - ","color":"#FFFFFF"},{"text":"Classique","color":"#FFE73F"}]}]
execute if score #bhc bhc.scenario matches 01 run data modify storage uhc:settings gamemode.fra set value [{"text":"Bingo","color":"#B73FFF",extra:[{"text":" UHC","color":"#FFE73F"},{"text":" - ","color":"#FFFFFF"},{"text":"Ruée Vers l'Or","color":"#FFE73F"}]}]
execute if score #bhc bhc.scenario matches 02 run data modify storage uhc:settings gamemode.fra set value [{"text":"Bingo","color":"#B73FFF",extra:[{"text":" UHC","color":"#FFE73F"},{"text":" - ","color":"#FFFFFF"},{"text":"Ère Viking","color":"#CF6F3F"}]}]
execute if score #bhc bhc.scenario matches 03 run data modify storage uhc:settings gamemode.fra set value [{"text":"Bingo","color":"#B73FFF",extra:[{"text":" UHC","color":"#FFE73F"},{"text":" - ","color":"#FFFFFF"},{"text":"BHC III","color":"#FFE73F"}]}]
execute if score #bhc bhc.scenario matches 04 run data modify storage uhc:settings gamemode.fra set value [{"text":"Bingo","color":"#B73FFF",extra:[{"text":" UHC","color":"#FFE73F"},{"text":" - ","color":"#FFFFFF"},{"text":"BHC IV","color":"#FFE73F"}]}]
execute if score #bhc bhc.scenario matches 05 run data modify storage uhc:settings gamemode.fra set value [{"text":"Bingo","color":"#B73FFF",extra:[{"text":" UHC","color":"#FFE73F"},{"text":" - ","color":"#FFFFFF"},{"text":"BHC V","color":"#FFE73F"}]}]
execute if score #bhc bhc.scenario matches 06 run data modify storage uhc:settings gamemode.fra set value [{"text":"Bingo","color":"#B73FFF",extra:[{"text":" UHC","color":"#FFE73F"},{"text":" - ","color":"#FFFFFF"},{"text":"BHC VI","color":"#FFE73F"}]}]
execute if score #bhc bhc.scenario matches 07 run data modify storage uhc:settings gamemode.fra set value [{"text":"Bingo","color":"#B73FFF",extra:[{"text":" UHC","color":"#FFE73F"},{"text":" - ","color":"#FFFFFF"},{"text":"BHC VII","color":"#FFE73F"}]}]
execute if score #bhc bhc.scenario matches 08 run data modify storage uhc:settings gamemode.fra set value [{"text":"Bingo","color":"#B73FFF",extra:[{"text":" UHC","color":"#FFE73F"},{"text":" - ","color":"#FFFFFF"},{"text":"BHC VIII","color":"#FFE73F"}]}]
execute if score #bhc bhc.scenario matches 51 run data modify storage uhc:settings gamemode.fra set value [{"text":"Bingo","color":"#B73FFF",extra:[{"text":" UHC","color":"#FFE73F"},{"text":" - ","color":"#FFFFFF"},{"text":"1er avril 2026","color":"#FFE73F"}]}]
execute if score #bhc bhc.scenario matches 91 run data modify storage uhc:settings gamemode.fra set value [{"text":"Bingo","color":"#B73FFF",extra:[{"text":" UHC","color":"#FFE73F"},{"text":" - ","color":"#FFFFFF"},{"text":"Chill Mode","color":"#E7E7E7"}]}]
execute if score #bhc bhc.scenario matches 92 run data modify storage uhc:settings gamemode.fra set value [{"text":"Bingo","color":"#B73FFF",extra:[{"text":" UHC","color":"#FFE73F"},{"text":" - ","color":"#FFFFFF"},{"text":"Chill Mode","color":"#E7E7E7"}]}]
execute if score #bhc bhc.scenario matches 99 run data modify storage uhc:settings gamemode.fra set value [{"text":"Bingo","color":"#B73FFF",extra:[{"text":" UHC Run","color":"#FFE73F"}]}]
execute if score #vanilla uhc.gamemode matches 1 run data modify storage uhc:settings gamemode.fra set value [{"text":"Vanilla","color":"#E7E7E7"}]

## ENG - English
execute if score #bhc bhc.scenario matches 00 run data modify storage uhc:settings gamemode.eng set value [{"text":"Bingo","color":"#B73FFF",extra:[{"text":" UHC","color":"#FFE73F"},{"text":" - ","color":"#FFFFFF"},{"text":"Classic","color":"#FFE73F"}]}]
execute if score #bhc bhc.scenario matches 01 run data modify storage uhc:settings gamemode.eng set value [{"text":"Bingo","color":"#B73FFF",extra:[{"text":" UHC","color":"#FFE73F"},{"text":" - ","color":"#FFFFFF"},{"text":"Gold Rush","color":"#FFE73F"}]}]
execute if score #bhc bhc.scenario matches 02 run data modify storage uhc:settings gamemode.eng set value [{"text":"Bingo","color":"#B73FFF",extra:[{"text":" UHC","color":"#FFE73F"},{"text":" - ","color":"#FFFFFF"},{"text":"Viking Era","color":"#CF6F3F"}]}]
execute if score #bhc bhc.scenario matches 03 run data modify storage uhc:settings gamemode.eng set value [{"text":"Bingo","color":"#B73FFF",extra:[{"text":" UHC","color":"#FFE73F"},{"text":" - ","color":"#FFFFFF"},{"text":"BHC III","color":"#FFE73F"}]}]
execute if score #bhc bhc.scenario matches 04 run data modify storage uhc:settings gamemode.eng set value [{"text":"Bingo","color":"#B73FFF",extra:[{"text":" UHC","color":"#FFE73F"},{"text":" - ","color":"#FFFFFF"},{"text":"BHC IV","color":"#FFE73F"}]}]
execute if score #bhc bhc.scenario matches 05 run data modify storage uhc:settings gamemode.eng set value [{"text":"Bingo","color":"#B73FFF",extra:[{"text":" UHC","color":"#FFE73F"},{"text":" - ","color":"#FFFFFF"},{"text":"BHC V","color":"#FFE73F"}]}]
execute if score #bhc bhc.scenario matches 06 run data modify storage uhc:settings gamemode.eng set value [{"text":"Bingo","color":"#B73FFF",extra:[{"text":" UHC","color":"#FFE73F"},{"text":" - ","color":"#FFFFFF"},{"text":"BHC VI","color":"#FFE73F"}]}]
execute if score #bhc bhc.scenario matches 07 run data modify storage uhc:settings gamemode.eng set value [{"text":"Bingo","color":"#B73FFF",extra:[{"text":" UHC","color":"#FFE73F"},{"text":" - ","color":"#FFFFFF"},{"text":"BHC VII","color":"#FFE73F"}]}]
execute if score #bhc bhc.scenario matches 08 run data modify storage uhc:settings gamemode.eng set value [{"text":"Bingo","color":"#B73FFF",extra:[{"text":" UHC","color":"#FFE73F"},{"text":" - ","color":"#FFFFFF"},{"text":"BHC VIII","color":"#FFE73F"}]}]
execute if score #bhc bhc.scenario matches 51 run data modify storage uhc:settings gamemode.eng set value [{"text":"Bingo","color":"#B73FFF",extra:[{"text":" UHC","color":"#FFE73F"},{"text":" - ","color":"#FFFFFF"},{"text":"April Fool's Day 2026","color":"#FFE73F"}]}]
execute if score #bhc bhc.scenario matches 91 run data modify storage uhc:settings gamemode.eng set value [{"text":"Bingo","color":"#B73FFF",extra:[{"text":" UHC","color":"#FFE73F"},{"text":" - ","color":"#FFFFFF"},{"text":"Chill Mode","color":"#E7E7E7"}]}]
execute if score #bhc bhc.scenario matches 92 run data modify storage uhc:settings gamemode.eng set value [{"text":"Bingo","color":"#B73FFF",extra:[{"text":" UHC","color":"#FFE73F"},{"text":" - ","color":"#FFFFFF"},{"text":"Chill Mode","color":"#E7E7E7"}]}]
execute if score #bhc bhc.scenario matches 99 run data modify storage uhc:settings gamemode.eng set value [{"text":"Bingo","color":"#B73FFF",extra:[{"text":" UHC Run","color":"#FFE73F"}]}]
execute if score #vanilla uhc.gamemode matches 1 run data modify storage uhc:settings gamemode.eng set value [{"text":"Vanilla","color":"#E7E7E7"}]

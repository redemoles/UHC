
#> uhc:translation/in_game/player_death_reveal
#
# @within			uhc:in_game/player/death/main
#
#
# @description		Fonction si morts ou kills à chaque ticks
#

## FRA - Français / French
execute if score #death_message uhc.data.temp matches 1..2 run tellraw @a[scores={uhc.player.lang=061801}] [{"selector":"@s"},{"text":" est mort(e).","color":"#FFFFFF"}]
execute if score #death_message uhc.data.temp matches 4 run tellraw @a[scores={uhc.player.lang=061801}] [{"text":"Une personne est morte. ","color":"#FFFFFF"}]

## ENG - English
execute if score #death_message uhc.data.temp matches 1..2 run tellraw @a[scores={uhc.player.lang=051407}] [{"selector":"@s"},{"text":" died.","color":"#FFFFFF"}]
execute if score #death_message uhc.data.temp matches 4 run tellraw @a[scores={uhc.player.lang=051407}] [{"text":"A player died. ","color":"#FFFFFF"}]

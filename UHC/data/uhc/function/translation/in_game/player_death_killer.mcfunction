
#> uhc:translation/in_game/player_death_killer
#
# @within			uhc:in_game/player/death/killer
#
#
# @description		Fonction si morts ou kills à chaque ticks
#

## FRA - Français / French
execute if score #death_message uhc.data.temp matches 1 run tellraw @a[scores={uhc.player.lang=061801}] [{"selector":"@p[tag=uhc.temp]"},{"text":" a été éliminé(e) par ","color":"#FFFFFF"},{"selector":"@s"}]
execute if score #death_message uhc.data.temp matches 3 run tellraw @a[scores={uhc.player.lang=061801}] [{"text":"Un joueur a été éliminé par ","color":"#FFFFFF"},{"selector":"@s"}]

## ENG - English
execute if score #death_message uhc.data.temp matches 1 run tellraw @a[scores={uhc.player.lang=051407}] [{"selector":"@p[tag=uhc.temp]"},{"text":" was killed by ","color":"#FFFFFF"},{"selector":"@s"}]
execute if score #death_message uhc.data.temp matches 3 run tellraw @a[scores={uhc.player.lang=051407}] [{"text":"A player was killed by ","color":"#FFFFFF"},{"selector":"@s"}]

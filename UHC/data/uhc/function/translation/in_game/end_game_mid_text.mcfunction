
#> uhc:translation/in_game/end_game_mid_text
#
# @within			uhc:in_game/end_game/main
#
#
#
#

## FRA - Français / French
tellraw @a[scores={uhc.player.lang=061801}] [{"text":"Victoire de ","color":"#FFFFFF"},{"selector":"@a[predicate=uhc:id/team]"},{"text":" avec ","color":"#FFFFFF"},{"score":{"name":"@n[type=minecraft:marker,tag=UHC,distance=0..,predicate=uhc:id/team]","objective":"uhc.team.kills"}},{"text":" kill(s) !","color":"#FFFFFF"}]

## ENG - English
tellraw @a[scores={uhc.player.lang=051407}] [{"text":"Victory of ","color":"#FFFFFF"},{"selector":"@a[predicate=uhc:id/team]"},{"text":" with ","color":"#FFFFFF"},{"score":{"name":"@n[type=minecraft:marker,tag=UHC,distance=0..,predicate=uhc:id/team]","objective":"uhc.team.kills"}},{"text":" kill(s)!","color":"#FFFFFF"}]

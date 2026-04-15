
#> uhc:translation/pre_game/world_check_finished
#
# @within			uhc:pre_game/world_check/finished
#
#
#
#

## FRA - Français / French
tellraw @s[scores={uhc.player.lang=061801}] [{"text":"\nVérification terminée !\nPoints validés ","color":"#FFFFFF"},{"text":">","color":"#FFFFFF","bold":true},{"text":" "},{"score":{"name":"#count_correct","objective":"uhc.spawn.check"},"color":"#3FE7FF"},{"text":"\nPoints invalidés ","color":"#FFFFFF"},{"text":">","color":"#FFFFFF","bold":true},{"text":" "},{"score":{"name":"#count_incorrect","objective":"uhc.spawn.check"},"color":"#FF3F3F"},{"text":"\nPoints non vérifiés ","color":"#FFFFFF"},{"text":">","color":"#FFFFFF","bold":true},{"text":" "},{"score":{"name":"#count_unverified","objective":"uhc.spawn.check"},"color":"#CFCFCF"}]

## ENG - English
tellraw @s[scores={uhc.player.lang=051407}] [{"text":"\nCheck completed!\nValidated points ","color":"#FFFFFF"},{"text":">","color":"#FFFFFF","bold":true},{"text":" "},{"score":{"name":"#count_correct","objective":"uhc.spawn.check"},"color":"#3FE7FF"},{"text":"\nInvalidated points ","color":"#FFFFFF"},{"text":">","color":"#FFFFFF","bold":true},{"text":" "},{"score":{"name":"#count_incorrect","objective":"uhc.spawn.check"},"color":"#FF3F3F"},{"text":"\nUnverified points ","color":"#FFFFFF"},{"text":">","color":"#FFFFFF","bold":true},{"text":" "},{"score":{"name":"#count_unverified","objective":"uhc.spawn.check"},"color":"#CFCFCF"}]

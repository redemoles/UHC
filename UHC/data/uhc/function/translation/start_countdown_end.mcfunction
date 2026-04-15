
#> uhc:start_countdown_end
#
# @within			uhc:start/countdown/end
#
#
#
#

## FRA - Français / French
execute if score #vanilla uhc.gamemode matches 1 run tellraw @a[scores={uhc.player.lang=061801}] [{"text":"\nLa partie vient de démarrer !","color":"#FFE73F","bold":false}]
execute if score #bhc uhc.gamemode matches 1 run tellraw @a[scores={uhc.player.lang=061801}] [{"text":"\n[","color":"#FFFFFF","bold":true},{"text":"Bingo","color":"#B73FFF"},{"text":"UHC","color":"#FFE73F"},{"text":"]","color":"#FFFFFF"},{"text":" La partie vient de démarrer !","color":"#FFE73F","bold":false}]
# Ironman
tellraw @a[scores={uhc.player.lang=061801}] [{"text":"\nIronman ","color":"#FFE73F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" Pour voir la liste des joueurs :","color":"#FFFFFF","bold":false},{"text":"\n/trigger uhc.ironman.list","color":"#FFE73F","bold":false}]
# Best PvE
execute if score #best_pve uhc.scenario matches 1 run tellraw @a[scores={uhc.player.lang=061801}] [{"text":"Best PvE ","color":"#E73F3F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" Pour voir la liste des joueurs :","color":"#FFFFFF","bold":false},{"text":"\n/trigger uhc.best_pve.list","color":"#FFE73F","bold":false}]

## ENG - English
execute if score #vanilla uhc.gamemode matches 1 run tellraw @a[scores={uhc.player.lang=051407}] [{"text":"\nGame starting now!","color":"#FFE73F","bold":false}]
execute if score #bhc uhc.gamemode matches 1 run tellraw @a[scores={uhc.player.lang=051407}] [{"text":"\n[","color":"#FFFFFF","bold":true},{"text":"Bingo","color":"#B73FFF"},{"text":"UHC","color":"#FFE73F"},{"text":"]","color":"#FFFFFF"},{"text":" Game starting now!","color":"#FFE73F","bold":false}]
# Ironman
tellraw @a[scores={uhc.player.lang=051407}] [{"text":"\nIronman ","color":"#FFE73F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" To see the players list:","color":"#FFFFFF","bold":false},{"text":"\n/trigger uhc.ironman.list","color":"#FFE73F","bold":false}]
# Best PvE
execute if score #best_pve uhc.scenario matches 1 run tellraw @a[scores={uhc.player.lang=051407}] [{"text":"Best PvE ","color":"#E73F3F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" To see the players list :","color":"#FFFFFF","bold":false},{"text":"\n/trigger uhc.best_pve.list","color":"#FFE73F","bold":false}]


#> uhc:translation/lobby/tc_countdown_next_game
#
# @within			lobby:mini_games/tc/hotbar/
#
#
#
#

## FRA - Français / French
execute if score #timer_pre_start_sec lobby.tc.data matches 2.. as @s[scores={uhc.player.lang=061801}] unless entity @s[tag=!mgs.tc.player,tag=!mgs.tc.spec] run title @s actionbar [{"text":"","color":"#FFFFFF","bold":true},{"text":"Nouveau mini-jeu dans "},{"score":{"name":"#timer_pre_start_sec","objective":"lobby.tc.data"},"color":"#FFE73F"},{"text":" secondes"}]
execute if score #timer_pre_start_sec lobby.tc.data matches 1 as @s[scores={uhc.player.lang=061801}] unless entity @s[tag=!mgs.tc.player,tag=!mgs.tc.spec] run title @s actionbar [{"text":"","color":"#FFFFFF","bold":true},{"text":"Nouveau mini-jeu dans "},{"score":{"name":"#timer_pre_start_sec","objective":"lobby.tc.data"},"color":"#FFE73F"},{"text":" seconde"}]

## ENG - English
execute if score #timer_pre_start_sec lobby.tc.data matches 2.. as @s[scores={uhc.player.lang=051407}] unless entity @s[tag=!mgs.tc.player,tag=!mgs.tc.spec] run title @s actionbar [{"text":"","color":"#FFFFFF","bold":true},{"text":"New mini-game in "},{"score":{"name":"#timer_pre_start_sec","objective":"lobby.tc.data"},"color":"#FFE73F"},{"text":" seconds"}]
execute if score #timer_pre_start_sec lobby.tc.data matches 1 as @s[scores={uhc.player.lang=051407}] unless entity @s[tag=!mgs.tc.player,tag=!mgs.tc.spec] run title @s actionbar [{"text":"","color":"#FFFFFF","bold":true},{"text":"New mini-game in "},{"score":{"name":"#timer_pre_start_sec","objective":"lobby.tc.data"},"color":"#FFE73F"},{"text":" second"}]

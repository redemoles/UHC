
#> uhc:pre_game/menu/load/main/player/menu
#
# @within			uhc:pre_game/menu/selected/main/
# @within			uhc:pre_game/menu/selected/team/...
#
# @description		Menu
#

clear @s

scoreboard players set @s uhc.menu.language 0
execute unless score @s uhc.menu.main.player matches 1.. run scoreboard players set @s uhc.menu.main.player 1
scoreboard players set @s uhc.menu.scenario.main 0
scoreboard players set @s uhc.menu.settings 0
tag @s remove uhc.menu.main.host
tag @s remove uhc.menu.tp


execute if score #random_team uhc.data.setup matches 0 run function uhc:pre_game/menu/load/main/player/team/chosen/main
execute if score #random_team uhc.data.setup matches 1 unless score #random_team_pots uhc.data.setup matches 2..3 run function uhc:pre_game/menu/load/main/player/team/random/1_pot
execute if score #random_team uhc.data.setup matches 1 if score #random_team_pots uhc.data.setup matches 2 run function uhc:pre_game/menu/load/main/player/team/random/2_pots
execute if score #random_team uhc.data.setup matches 1 if score #random_team_pots uhc.data.setup matches 3 run function uhc:pre_game/menu/load/main/player/team/random/3_pots

function uhc:translation/menu/load/team/page/all_pre_game with storage uhc:settings gamemode

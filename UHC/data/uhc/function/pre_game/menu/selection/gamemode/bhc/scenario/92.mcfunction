
#> uhc:pre_game/menu/selection/gamemode/bhc/scenario/92
#
# @within			uhc:pre_game/menu/load/gamemode_bhc/
#
#
# @description		Activation BHC - Chill Mode
#

scoreboard players set #vanilla uhc.gamemode 0


scoreboard players set #mls uhc.gamemode 0
scoreboard players set #mls mls.scenario 0
scoreboard players set #nzl uhc.gamemode 0
scoreboard players set #nzl nzl.scenario -1

data modify storage uhc:settings gamemode set value [{"text":"Bingo","color":"#B73FFF","bold":true,"italic":false},{"text":" UHC","color":"#FFE73F","bold":true,"italic":false},{"text":" - ","color":"#FFFFFF","bold":true},{"text":"Chill Mode","color":"#E7E7E7","bold":true}]
execute unless score #bhc bhc.scenario matches 92 as @a[scores={uhc.player.lang=061801}] run tellraw @s [{"text":"Bingo","color":"#B73FFF","bold":true},{"text":" UHC","color":"#FFE73F","bold":true},{"text":" - ","color":"#FFFFFF","bold":true},{"text":"Chill Mode","color":"#E7E7E7","bold":true},{"text":" activé","color":"#3FE7FF","bold":false}]
execute unless score #bhc bhc.scenario matches 92 as @a[scores={uhc.player.lang=051407}] run tellraw @s [{"text":"Bingo","color":"#B73FFF","bold":true},{"text":" UHC","color":"#FFE73F","bold":true},{"text":" - ","color":"#FFFFFF","bold":true},{"text":"Chill Mode","color":"#E7E7E7","bold":true},{"text":" enabled","color":"#3FE7FF","bold":false}]
scoreboard players set #bhc uhc.gamemode 1
scoreboard players set #bhc bhc.scenario 92

function uhc:pre_game/menu/selection/gamemode/bhc/settings/preset_scenario/92

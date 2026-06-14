
#> uhc:pre_game/menu/selection/gamemode/bhc/scenario/51
#
# @within			uhc:pre_game/menu/load/gamemode_bhc/
#
#
# @description		Activation BHC Inversion - 1er avril 2026
#

scoreboard players set #vanilla uhc.gamemode 0


scoreboard players set #mls uhc.gamemode 0
scoreboard players set #mls mls.scenario 0
scoreboard players set #nzl uhc.gamemode 0
scoreboard players set #nzl nzl.scenario -1

data modify storage uhc:settings gamemode set value [{"text":"Bingo","color":"#B73FFF","bold":true,"italic":false},{"text":" UHC","color":"#FFE73F","bold":true,"italic":false},{"text":" - ","color":"#FFFFFF","bold":true},{"text":"1er avril 2026","color":"#FFE73F","bold":true}]
execute unless score #bhc bhc.scenario matches 51 as @a[scores={uhc.player.lang=061801}] run tellraw @s [{"text":"Bingo","color":"#B73FFF","bold":true},{"text":" UHC","color":"#FFE73F","bold":true},{"text":" - ","color":"#FFFFFF","bold":true},{"text":"1er avril 2026","color":"#FFE73F","bold":true},{"text":" activé","color":"#3FE7FF","bold":false}]
execute unless score #bhc bhc.scenario matches 51 as @a[scores={uhc.player.lang=051407}] run tellraw @s [{"text":"Bingo","color":"#B73FFF","bold":true},{"text":" UHC","color":"#FFE73F","bold":true},{"text":" - ","color":"#FFFFFF","bold":true},{"text":"April fool 2026","color":"#FFE73F","bold":true},{"text":" enabled","color":"#3FE7FF","bold":false}]
scoreboard players set #bhc uhc.gamemode 1
scoreboard players set #bhc bhc.scenario 51

scoreboard players set #stepa_start bhc.data.setup -1
scoreboard players set #stepa_end bhc.data.setup 30
scoreboard players set #stepb_start bhc.data.setup 45
scoreboard players set #stepb_end bhc.data.setup 75

function uhc:pre_game/menu/selection/gamemode/bhc/settings/preset_scenario/51

scoreboard players set #check_bingo_generated uhc.data.temp 1
execute store result score #check_bingo_generated uhc.data.temp run function bingo_generator:load
execute if score #check_bingo_generated uhc.data.temp matches 0 run return run function uhc:translation/menu/selected/gamemode_no_bingo_generated

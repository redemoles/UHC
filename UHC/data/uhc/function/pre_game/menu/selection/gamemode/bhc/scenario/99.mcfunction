
#> uhc:pre_game/menu/selection/gamemode/bhc/scenario/99
#
# @within			uhc:pre_game/menu/load/gamemode_bhc/
#
#
# @description		Activation BHC Run
#

scoreboard players set #vanilla uhc.gamemode 0


scoreboard players set #mls uhc.gamemode 0
scoreboard players set #mls mls.scenario 0
scoreboard players set #nzl uhc.gamemode 0
scoreboard players set #nzl nzl.scenario -1

data modify storage uhc:settings gamemode set value [{"text":"Bingo","color":"#B73FFF","bold":true},{"text":" UHC Run","color":"#FFE73F","bold":true,"italic":false}]
execute unless score #bhc bhc.scenario matches 99 as @a[scores={uhc.player.lang=061801}] run tellraw @s [{"text":"Bingo","color":"#B73FFF","bold":true},{"text":" UHC Run","color":"#FFE73F","bold":true},{"text":" activé","color":"#3FE7FF","bold":false}]
execute unless score #bhc bhc.scenario matches 99 as @a[scores={uhc.player.lang=051407}] run tellraw @s [{"text":"Bingo","color":"#B73FFF","bold":true},{"text":" UHC Run","color":"#FFE73F","bold":true},{"text":" enabled","color":"#3FE7FF","bold":false}]
scoreboard players set #bhc uhc.gamemode 1
scoreboard players set #bhc bhc.scenario 99

scoreboard players set #stepa_start bhc.data.setup -1
scoreboard players set #stepa_end bhc.data.setup 20
scoreboard players set #stepb_start bhc.data.setup -1
scoreboard players set #stepb_end bhc.data.setup 9999

function uhc:pre_game/menu/selection/gamemode/bhc/settings/preset_scenario/99

scoreboard players set #check_bingo_generated uhc.data.temp 1
execute store result score #check_bingo_generated uhc.data.temp run function bingo_generator:load
execute if score #check_bingo_generated uhc.data.temp matches 0 run return run function uhc:translation/menu/selected/gamemode_no_bingo_generated

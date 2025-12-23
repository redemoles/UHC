
#> uhc:pre_game/menu/load/gamemode/mls/disable
#
# @within			uhc:pre_game/menu/load/gamemode_bhc/
#
#
# @description		Désactivation Moles
#

scoreboard players set #vanilla uhc.gamemode 0
scoreboard players set #bhc uhc.gamemode 0
scoreboard players set #bhc bhc.scenario -1
scoreboard players set #mls uhc.gamemode 0
scoreboard players set #mls mls.scenario 0
scoreboard players set #nzl uhc.gamemode 0
scoreboard players set #nzl nzl.scenario -1

data modify storage uhc:settings gamemode set value [{"text":"Moles","color":"#E73F3F","bold":true,"italic":false}]

scoreboard players set #vanilla uhc.gamemode 1
function uhc:pre_game/menu/load/gamemode/mls/

execute if score #mls uhc.gamemode matches 0 run tellraw @a [{"text":"Moles","color":"#E73F3F","bold":true},{"text":" désactivé","color":"#FF3F3F","bold":false}]
execute if score #mls uhc.gamemode matches 0 run scoreboard players remove #custom_arrow uhc.data.setup 1

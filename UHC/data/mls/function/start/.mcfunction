
#> mls:start/
#
# @within			mls:start/setup_uhc
#
#
# @description		Moles Start
#

## Config UHC
function mls:start/config

## Reset des tags
execute as @a run function mls:start/reset_tags

## Attribution de rôles
scoreboard players set @a[tag=uhc.player] mls.player.team 0
scoreboard players set #team mls.player.team 1
execute as @e[type=marker,tag=UHC] run function mls:start/set_moles

## Attribution des kits
execute store result score #number mls.player.kit run random value 0..6
execute as @a[scores={mls.player.team=1..},sort=random] run function mls:start/set_kits

## Message start
tellraw @a[scores={uhc.player.lang=061801}] [{"text":"[","color":"#E73F3F","bold":true},{"text":"Moles","color":"#FFFFFF"},{"text":"]","color":"#E73F3F"},{"text":" La partie vient de démarrer !","color":"#FFE73F","bold":false}]
tellraw @a[scores={uhc.player.lang=051407}] [{"text":"[","color":"#E73F3F","bold":true},{"text":"Moles","color":"#FFFFFF"},{"text":"]","color":"#E73F3F"},{"text":" Game starting now!","color":"#FFE73F","bold":false}]

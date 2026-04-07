
#> uhc:pre_game/world_check/finished
#
# @within			uhc:pre_game/menu/load/world_check/finished
# @within			uhc:pre_game/timer/tick
#
# @description		Vérification des points de spawns des équipes
#

scoreboard players set #count_correct uhc.spawn.check 0
scoreboard players set #count_incorrect uhc.spawn.check 0
execute if score #spawn_01 uhc.id.spawn_check matches 1 run scoreboard players add #count_correct uhc.spawn.check 1
execute if score #spawn_02 uhc.id.spawn_check matches 1 run scoreboard players add #count_correct uhc.spawn.check 1
execute if score #spawn_03 uhc.id.spawn_check matches 1 run scoreboard players add #count_correct uhc.spawn.check 1
execute if score #spawn_04 uhc.id.spawn_check matches 1 run scoreboard players add #count_correct uhc.spawn.check 1
execute if score #spawn_05 uhc.id.spawn_check matches 1 run scoreboard players add #count_correct uhc.spawn.check 1
execute if score #spawn_06 uhc.id.spawn_check matches 1 run scoreboard players add #count_correct uhc.spawn.check 1
execute if score #spawn_07 uhc.id.spawn_check matches 1 run scoreboard players add #count_correct uhc.spawn.check 1
execute if score #spawn_08 uhc.id.spawn_check matches 1 run scoreboard players add #count_correct uhc.spawn.check 1
execute if score #spawn_09 uhc.id.spawn_check matches 1 run scoreboard players add #count_correct uhc.spawn.check 1
execute if score #spawn_10 uhc.id.spawn_check matches 1 run scoreboard players add #count_correct uhc.spawn.check 1
execute if score #spawn_11 uhc.id.spawn_check matches 1 run scoreboard players add #count_correct uhc.spawn.check 1
execute if score #spawn_12 uhc.id.spawn_check matches 1 run scoreboard players add #count_correct uhc.spawn.check 1
execute if score #spawn_13 uhc.id.spawn_check matches 1 run scoreboard players add #count_correct uhc.spawn.check 1
execute if score #spawn_14 uhc.id.spawn_check matches 1 run scoreboard players add #count_correct uhc.spawn.check 1
execute if score #spawn_15 uhc.id.spawn_check matches 1 run scoreboard players add #count_correct uhc.spawn.check 1
execute if score #spawn_16 uhc.id.spawn_check matches 1 run scoreboard players add #count_correct uhc.spawn.check 1
execute if score #spawn_17 uhc.id.spawn_check matches 1 run scoreboard players add #count_correct uhc.spawn.check 1
execute if score #spawn_18 uhc.id.spawn_check matches 1 run scoreboard players add #count_correct uhc.spawn.check 1
execute if score #spawn_19 uhc.id.spawn_check matches 1 run scoreboard players add #count_correct uhc.spawn.check 1
execute if score #spawn_20 uhc.id.spawn_check matches 1 run scoreboard players add #count_correct uhc.spawn.check 1
execute if score #spawn_21 uhc.id.spawn_check matches 1 run scoreboard players add #count_correct uhc.spawn.check 1
execute if score #spawn_22 uhc.id.spawn_check matches 1 run scoreboard players add #count_correct uhc.spawn.check 1
execute if score #spawn_23 uhc.id.spawn_check matches 1 run scoreboard players add #count_correct uhc.spawn.check 1
execute if score #spawn_24 uhc.id.spawn_check matches 1 run scoreboard players add #count_correct uhc.spawn.check 1
execute if score #spawn_25 uhc.id.spawn_check matches 1 run scoreboard players add #count_correct uhc.spawn.check 1
execute if score #spawn_26 uhc.id.spawn_check matches 1 run scoreboard players add #count_correct uhc.spawn.check 1
execute if score #spawn_27 uhc.id.spawn_check matches 1 run scoreboard players add #count_correct uhc.spawn.check 1
execute if score #spawn_28 uhc.id.spawn_check matches 1 run scoreboard players add #count_correct uhc.spawn.check 1
execute if score #spawn_29 uhc.id.spawn_check matches 1 run scoreboard players add #count_correct uhc.spawn.check 1
execute if score #spawn_30 uhc.id.spawn_check matches 1 run scoreboard players add #count_correct uhc.spawn.check 1
execute if score #spawn_31 uhc.id.spawn_check matches 1 run scoreboard players add #count_correct uhc.spawn.check 1
execute if score #spawn_32 uhc.id.spawn_check matches 1 run scoreboard players add #count_correct uhc.spawn.check 1

scoreboard players set #count_incorrect uhc.spawn.check 0
execute if score #spawn_01 uhc.id.spawn_check matches 2 run scoreboard players add #count_incorrect uhc.spawn.check 1
execute if score #spawn_02 uhc.id.spawn_check matches 2 run scoreboard players add #count_incorrect uhc.spawn.check 1
execute if score #spawn_03 uhc.id.spawn_check matches 2 run scoreboard players add #count_incorrect uhc.spawn.check 1
execute if score #spawn_04 uhc.id.spawn_check matches 2 run scoreboard players add #count_incorrect uhc.spawn.check 1
execute if score #spawn_05 uhc.id.spawn_check matches 2 run scoreboard players add #count_incorrect uhc.spawn.check 1
execute if score #spawn_06 uhc.id.spawn_check matches 2 run scoreboard players add #count_incorrect uhc.spawn.check 1
execute if score #spawn_07 uhc.id.spawn_check matches 2 run scoreboard players add #count_incorrect uhc.spawn.check 1
execute if score #spawn_08 uhc.id.spawn_check matches 2 run scoreboard players add #count_incorrect uhc.spawn.check 1
execute if score #spawn_09 uhc.id.spawn_check matches 2 run scoreboard players add #count_incorrect uhc.spawn.check 1
execute if score #spawn_10 uhc.id.spawn_check matches 2 run scoreboard players add #count_incorrect uhc.spawn.check 1
execute if score #spawn_11 uhc.id.spawn_check matches 2 run scoreboard players add #count_incorrect uhc.spawn.check 1
execute if score #spawn_12 uhc.id.spawn_check matches 2 run scoreboard players add #count_incorrect uhc.spawn.check 1
execute if score #spawn_13 uhc.id.spawn_check matches 2 run scoreboard players add #count_incorrect uhc.spawn.check 1
execute if score #spawn_14 uhc.id.spawn_check matches 2 run scoreboard players add #count_incorrect uhc.spawn.check 1
execute if score #spawn_15 uhc.id.spawn_check matches 2 run scoreboard players add #count_incorrect uhc.spawn.check 1
execute if score #spawn_16 uhc.id.spawn_check matches 2 run scoreboard players add #count_incorrect uhc.spawn.check 1
execute if score #spawn_17 uhc.id.spawn_check matches 2 run scoreboard players add #count_incorrect uhc.spawn.check 1
execute if score #spawn_18 uhc.id.spawn_check matches 2 run scoreboard players add #count_incorrect uhc.spawn.check 1
execute if score #spawn_19 uhc.id.spawn_check matches 2 run scoreboard players add #count_incorrect uhc.spawn.check 1
execute if score #spawn_20 uhc.id.spawn_check matches 2 run scoreboard players add #count_incorrect uhc.spawn.check 1
execute if score #spawn_21 uhc.id.spawn_check matches 2 run scoreboard players add #count_incorrect uhc.spawn.check 1
execute if score #spawn_22 uhc.id.spawn_check matches 2 run scoreboard players add #count_incorrect uhc.spawn.check 1
execute if score #spawn_23 uhc.id.spawn_check matches 2 run scoreboard players add #count_incorrect uhc.spawn.check 1
execute if score #spawn_24 uhc.id.spawn_check matches 2 run scoreboard players add #count_incorrect uhc.spawn.check 1
execute if score #spawn_25 uhc.id.spawn_check matches 2 run scoreboard players add #count_incorrect uhc.spawn.check 1
execute if score #spawn_26 uhc.id.spawn_check matches 2 run scoreboard players add #count_incorrect uhc.spawn.check 1
execute if score #spawn_27 uhc.id.spawn_check matches 2 run scoreboard players add #count_incorrect uhc.spawn.check 1
execute if score #spawn_28 uhc.id.spawn_check matches 2 run scoreboard players add #count_incorrect uhc.spawn.check 1
execute if score #spawn_29 uhc.id.spawn_check matches 2 run scoreboard players add #count_incorrect uhc.spawn.check 1
execute if score #spawn_30 uhc.id.spawn_check matches 2 run scoreboard players add #count_incorrect uhc.spawn.check 1
execute if score #spawn_31 uhc.id.spawn_check matches 2 run scoreboard players add #count_incorrect uhc.spawn.check 1
execute if score #spawn_32 uhc.id.spawn_check matches 2 run scoreboard players add #count_incorrect uhc.spawn.check 1

scoreboard players set #count_unverified uhc.spawn.check 32
scoreboard players operation #count_unverified uhc.spawn.check -= #count_correct uhc.spawn.check
scoreboard players operation #count_unverified uhc.spawn.check -= #count_incorrect uhc.spawn.check

tellraw @s[scores={uhc.player.lang=061801}] [{"text":"\nVérification terminée !\nPoints validés ","color":"#FFFFFF"},{"text":">","color":"#FFFFFF","bold":true},{"text":" "},{"score":{"name":"#count_correct","objective":"uhc.spawn.check"},"color":"#3FE7FF"},{"text":"\nPoints invalidés ","color":"#FFFFFF"},{"text":">","color":"#FFFFFF","bold":true},{"text":" "},{"score":{"name":"#count_incorrect","objective":"uhc.spawn.check"},"color":"#FF3F3F"},{"text":"\nPoints non vérifiés ","color":"#FFFFFF"},{"text":">","color":"#FFFFFF","bold":true},{"text":" "},{"score":{"name":"#count_unverified","objective":"uhc.spawn.check"},"color":"#CFCFCF"}]
tellraw @s[scores={uhc.player.lang=051407}] [{"text":"\nCheck completed!\nValidated points ","color":"#FFFFFF"},{"text":">","color":"#FFFFFF","bold":true},{"text":" "},{"score":{"name":"#count_correct","objective":"uhc.spawn.check"},"color":"#3FE7FF"},{"text":"\nInvalidated points ","color":"#FFFFFF"},{"text":">","color":"#FFFFFF","bold":true},{"text":" "},{"score":{"name":"#count_incorrect","objective":"uhc.spawn.check"},"color":"#FF3F3F"},{"text":"\nUnverified points ","color":"#FFFFFF"},{"text":">","color":"#FFFFFF","bold":true},{"text":" "},{"score":{"name":"#count_unverified","objective":"uhc.spawn.check"},"color":"#CFCFCF"}]

gamemode adventure @s
execute if score #lobby lobby.structure.data matches 00..09 in uhc:lobby run tp @s 0 65 0 0 0
execute if score #lobby lobby.structure.data matches 10..19 in uhc:lobby run tp @s 0 65 0 0 0

scoreboard players reset @s uhc.spawn.check
scoreboard players reset @s uhc.id.spawn_check

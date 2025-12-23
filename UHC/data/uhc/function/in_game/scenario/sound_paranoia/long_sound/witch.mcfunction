
#> uhc:in_game/scenario/sound_paranoia/long_sound/witch
#
# @within			uhc:in_game/scenario/sound_paranoia/trigger
#
#
# @description		Son de witch qui jette une potion sur un joueur
#

scoreboard players add Witch uhc.scenario.sound_paranoia.sb.total_sound 1
scoreboard players add Total uhc.scenario.sound_paranoia.sb.witch 1
scoreboard players add @s uhc.scenario.sound_paranoia.sb.witch 1

scoreboard players set @s uhc.scenario.sound_paranoia.tick 36

tellraw @a[tag=uhc.spec,scores={uhc.player.lang=061801}] [{"text":"Sound Paranoia >","color":"#CF3FFF","bold":true},{"text":" Witch jette une potion sur ","color":"#FFFFFF","bold":false},{"selector":"@s","bold":false}]
tellraw @a[tag=uhc.spec,scores={uhc.player.lang=051407}] [{"text":"Sound Paranoia >","color":"#CF3FFF","bold":true},{"text":" Witch throw a potion on ","color":"#FFFFFF","bold":false},{"selector":"@s","bold":false}]

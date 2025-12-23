
#> mls:reveal/
#
# @within			mls:chat/storage
# 
#
# @description		Reveal de taupe
#

tellraw @s[tag=mls.command.reveal,scores={uhc.player.lang=061801}] [{"text":"Tu t'es déjà révélé !","color":"#FF5F5F"}]
tellraw @s[tag=mls.command.reveal,scores={uhc.player.lang=051407}] [{"text":"You already revealed!","color":"#FF5F5F"}]
execute if entity @s[tag=mls.command.reveal] run return fail

tag @s add mls.command.reveal

tellraw @a[scores={uhc.player.lang=061801}] [{"selector":"@s"},{"text":" se révèle être une taupe !","color":"#FF5F5F"}]
tellraw @a[scores={uhc.player.lang=051407}] [{"selector":"@s"},{"text":" is a mole!","color":"#FF5F5F"}]
execute at @s run playsound minecraft:entity.ghast.hurt master @a ~ ~ ~ 0.4 1 0.4
give @s golden_apple 2

execute if score @s mls.player.team matches 1 run team join mls.01 @s
execute if score @s mls.player.team matches 2 run team join mls.02 @s
execute if score @s mls.player.team matches 3 run team join mls.03 @s
execute if score @s mls.player.team matches 4 run team join mls.04 @s
execute if score @s mls.player.team matches 5 run team join mls.05 @s
execute if score @s mls.player.team matches 6 run team join mls.06 @s
execute if score @s mls.player.team matches 7 run team join mls.07 @s
execute if score @s mls.player.team matches 8 run team join mls.08 @s

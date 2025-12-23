
#> mls:reveal/super
#
# @within			mls:chat/storage
# 
#
# @description		Reveal de supertaupe
#

# FRA
tellraw @s[tag=mls.command.superreveal,scores={uhc.player.lang=061801}] [{"text":"Tu t'es déjà révélé !","color":"#FF5F5F"}]
# ENG
tellraw @s[tag=mls.command.superreveal,scores={uhc.player.lang=051407}] [{"text":"You already revealed!","color":"#FF5F5F"}]
execute if entity @s[tag=mls.command.superreveal] run return fail

tag @s add mls.command.superreveal

tellraw @a[scores={uhc.player.lang=061801}] [{"selector":"@s"},{"text":" se révèle être une super taupe !","color":"#FF5F5F"}]
tellraw @a[scores={uhc.player.lang=051407}] [{"selector":"@s"},{"text":" is a super mole!","color":"#FF5F5F"}]
execute at @s run playsound minecraft:entity.ghast.hurt master @a ~ ~ ~ 0.4 2 0.4
give @s golden_apple 2

execute if score @s mls.player.superteam matches 1 run team join mls.s01 @s
execute if score @s mls.player.superteam matches 2 run team join mls.s02 @s
execute if score @s mls.player.superteam matches 3 run team join mls.s03 @s
execute if score @s mls.player.superteam matches 4 run team join mls.s04 @s
execute if score @s mls.player.superteam matches 5 run team join mls.s05 @s
execute if score @s mls.player.superteam matches 6 run team join mls.s06 @s
execute if score @s mls.player.superteam matches 7 run team join mls.s07 @s
execute if score @s mls.player.superteam matches 8 run team join mls.s08 @s

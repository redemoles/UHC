
#> mls:kit/
#
# @within			mls:tick
# 
#
# @description		Don de kit
#

tellraw @s[tag=mls.command.kit,scores={uhc.player.lang=061801}] [{"text":"Non.","color":"#FF5F5F"}]
tellraw @s[tag=mls.command.kit,scores={uhc.player.lang=051407}] [{"text":"No.","color":"#FF5F5F"}]
execute if entity @s[tag=mls.command.kit] run return fail

scoreboard players add #claim mls.player.kit 1
execute store result storage mls:kit mls_pyro int 1 run scoreboard players get #claim mls.player.kit

tag @s add mls.command.kit
execute if score @s mls.player.kit matches 1 run function mls:kit/enchantueur
execute if score @s mls.player.kit matches 2 run function mls:kit/endertan
execute if score @s mls.player.kit matches 3 run function mls:kit/pyrolienne with storage mls:kit
execute if score @s mls.player.kit matches 4 run function mls:kit/sorcerique
execute if score @s mls.player.kit matches 5 run function mls:kit/tiranic
execute if score @s mls.player.kit matches 6 run function mls:kit/usain_bottes
execute if score @s mls.player.kit matches 7 run function mls:kit/whealer

tellraw @s[scores={uhc.player.lang=061801}] [{"text":"Kit reçu !","color":"#FF5F5F"}]
tellraw @s[scores={uhc.player.lang=051407}] [{"text":"Kit received!","color":"#FF5F5F"}]

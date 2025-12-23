
#> mls:team/annonce
#
# @within			mls:tick
#
#
# @description		Annonce des taupes
#

tellraw @a[tag=uhc.player,scores={mls.player.team=0}] [{"text":"-----------------------------------\n","color":"#5F5FFF"},{"text":"Tu n'es pas la Taupe.\nPeut-être une autre fois...","color":"#3FE7FF"},{"text":"\n-----------------------------------","color":"#5F5FFF"}]
tellraw @a[tag=uhc.player,scores={mls.player.team=1..}] [{"text":"-----------------------------------\n","color":"#FF5F5F"},{"text":"Tu es la ","color":"#FFCF3F"},{"text":"Taupe","color":"#FF5F5F"},{"text":" !\nTon objectif est de trahir ton équipe d'origine et de rejoindre ton équipe de taupes.\n\nTu obtiens un livre pour transmettre des messages à tes coéquipiers.\nTu possèdes un kit à activer pour t'aider à agir\n","color":"#FFCF3F"}]
tellraw @a[tag=uhc.player,scores={mls.player.kit=1}] [{"text":"Kit : ","color":"#FFCF3F"},{"text":"Enchantueur","color":"#CF3FFF","bold":true}]
tellraw @a[tag=uhc.player,scores={mls.player.kit=2}] [{"text":"Kit : ","color":"#FFCF3F"},{"text":"Endertan","color":"#3F9FCF","bold":true}]
tellraw @a[tag=uhc.player,scores={mls.player.kit=3}] [{"text":"Kit : ","color":"#FFCF3F"},{"text":"Pyrolienne","color":"#FF6F3F","bold":true}]
tellraw @a[tag=uhc.player,scores={mls.player.kit=4}] [{"text":"Kit : ","color":"#FFCF3F"},{"text":"Sorcérique","color":"#6F3F6F","bold":true}]
tellraw @a[tag=uhc.player,scores={mls.player.kit=5}] [{"text":"Kit : ","color":"#FFCF3F"},{"text":"Tiranic","color":"#3F6FFF","bold":true}]
tellraw @a[tag=uhc.player,scores={mls.player.kit=6}] [{"text":"Kit : ","color":"#FFCF3F"},{"text":"Usain Bottes","color":"#FFFF3F","bold":true}]
tellraw @a[tag=uhc.player,scores={mls.player.kit=7}] [{"text":"Kit : ","color":"#FFCF3F"},{"text":"Whealer","color":"#FF3FFF","bold":true}]
tellraw @a[tag=uhc.player,scores={mls.player.team=1..}] [{"text":"-----------------------------------","color":"#FF5F5F"}]
scoreboard players set #annonce mls.player.team 1

tag @a[tag=uhc.player,scores={mls.player.kit=3}] add uhc.fire_flame

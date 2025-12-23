
#> mls:chat/command
#
# @within			mls:chat/storage
# 
#
# @description		Détection de commande ou message à envoyer
#

$execute if score #$(chat) mls.command matches 1 run function mls:kit/
$execute if score #$(chat) mls.command matches 2 run function mls:reveal/
$execute if score #$(chat) mls.command matches 3 if entity @s[tag=mls.command.reveal,scores={mls.player.superteam=1..}] run function mls:reveal/super
$execute if score #$(chat) mls.command matches 1.. run scoreboard players set #command mls.command 1


#> uhc:translation/nzl/move_attack_activation
#
# @within			nzl:types/move/attack_activation/*
#
#
#
#

## FRA - Français / French
$execute if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"\nAttaque activée !","color":"#3F9FFF","bold":true},{"text":"\nDurée : ","color":"#7FBFFF","bold":false},{"score":{"name":"#seconds","objective":"nzl.attack.length.$(type)"},"color":"#FF3F3F","bold":false},{"text":" secondes.\n","color":"#7FBFFF","bold":false}]

## ENG - English
$execute if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"\nAttack activated!","color":"#3F9FFF","bold":true},{"text":"\nDuration: ","color":"#7FBFFF","bold":false},{"score":{"name":"#seconds","objective":"nzl.attack.length.$(type)"},"color":"#FF3F3F","bold":false},{"text":" seconds.\n","color":"#7FBFFF","bold":false}]


#> uhc:translation/nzl/move_no_flood
#
# @within			nzl:types/move/attack_available/*
#
#
#
#

## FRA - Français / French
$execute if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"\nAttaque non rechargée.","color":"#3F9FFF","bold":true},{"text":"\nTemps restant : ","color":"#7FBFFF","bold":false},{"score":{"name":"#seconds","objective":"nzl.attack.cooldown.$(type)"},"color":"#FF3F3F","bold":false},{"text":" secondes.\n","color":"#7FBFFF","bold":false}]

## ENG - English
$execute if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"\nAttack not reloaded.","color":"#3F9FFF","bold":true},{"text":"\nTime remaining: ","color":"#7FBFFF","bold":false},{"score":{"name":"#seconds","objective":"nzl.attack.cooldown.$(type)"},"color":"#FF3F3F","bold":false},{"text":" seconds.\n","color":"#7FBFFF","bold":false}]

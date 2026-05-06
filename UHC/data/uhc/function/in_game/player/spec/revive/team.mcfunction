
#> uhc:in_game/player/spec/revive/team
#
# @within			uhc:in_game/player/spec/revive/main
#
#
# @description		Resurrection d'un spectateur
#

execute unless score @s uhc.player.lives matches 1.. run scoreboard players add #team uhc.data.temp 1
execute unless score @s uhc.player.lives matches 1.. run scoreboard players add #team uhc.data.temp.inv 1
scoreboard players add @s uhc.player.lives 1

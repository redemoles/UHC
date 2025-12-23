
#> uhc:in_game/player/spec/revive_team
#
# @within			uhc:in_game/player/spec/revive
#
#
# @description		Resurrection d'un spectateur
#

execute if score @s uhc.player.lives matches 0 run scoreboard players add #team uhc.data.temp 1
execute if score @s uhc.player.lives matches 0 run scoreboard players add #team uhc.data.temp.inv 1
scoreboard players add @s uhc.player.lives 1

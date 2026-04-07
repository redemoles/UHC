
#> uhc:pre_game/player_and_team/new_player_heal
#
# @within			uhc:pre_game/player_and_team/new_player
#
#
# @description		Formation des équipes et effets à donner au spawn
#

execute as @a[tag=lobby.temp] run attribute @s minecraft:max_health modifier remove lobby.new_player
execute as @a[tag=lobby.temp] run effect give @s minecraft:regeneration 1 9 true
tag @a remove lobby.temp

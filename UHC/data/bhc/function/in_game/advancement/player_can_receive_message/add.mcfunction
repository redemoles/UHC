
#> bhc:in_game/advancement/player_can_receive_message/add
#
# @within			bhc:in_game/scenario/**/advancement/new_adv
#
#
# 
#

tag @a[predicate=!uhc:id/team] add bhc.temp.adv_message
execute if predicate uhc:scenario/silent_night/night_time run tag @a[tag=uhc.player] remove bhc.temp.adv_message
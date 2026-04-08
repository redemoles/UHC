
#> uhc:player_status/attributes_and_effects/uhc/waiting_start
#
# @within			uhc:start/setup_players
#
#
# @description		Donne les effets / gamemode aux specs
#

attribute @s minecraft:jump_strength modifier add uhc.waiting_start -1.0 add_multiplied_total
attribute @s minecraft:movement_speed modifier add uhc.waiting_start -1.0 add_multiplied_total

effect give @s minecraft:blindness infinite 0 true
effect give @s minecraft:invisibility infinite 0 true
effect give @s minecraft:resistance infinite 4 true

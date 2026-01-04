
#> uhc:all_dimension_commands/start
#
# @within			uhc:start/countdown/end
#
#
# @description		Gamerule pour toutes les dimensions
#

gamerule minecraft:send_command_feedback false
difficulty normal
execute unless score #team_size uhc.data.temp matches 1 run difficulty hard
gamerule minecraft:advance_time true
gamerule minecraft:fire_spread_radius_around_player 64
gamerule minecraft:spawn_mobs true
gamerule minecraft:spectators_generate_chunks false
execute if score #message uhc.data.setup matches 0 run gamerule minecraft:show_death_messages true

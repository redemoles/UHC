
#> uhc:all_dimension_commands/start
#
# @within			uhc:start/countdown/end
#
#
# @description		Gamerule pour toutes les dimensions
#

gamerule minecraft:send_command_feedback false
execute if score #team_size uhc.data.temp matches 1 run difficulty normal
execute unless score #team_size uhc.data.temp matches 1 run difficulty hard
gamerule minecraft:advance_time false
execute unless score #perma_day uhc.scenario matches 1 unless score #perma_night uhc.scenario matches 1 run gamerule minecraft:advance_time true
gamerule minecraft:fire_spread_radius_around_player 64
gamerule minecraft:spawn_mobs true
gamerule minecraft:spawn_monsters true
gamerule minecraft:spectators_generate_chunks false
gamerule minecraft:pvp false
execute if score #death_message uhc.data.setup matches 0 run gamerule minecraft:show_death_messages true

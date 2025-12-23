
#> uhc:all_dimension_commands/start
#
# @within			uhc:start/countdown/end
#
#
# @description		Gamerule pour toutes les dimensions
#

gamerule sendCommandFeedback false
difficulty normal
execute unless score #team_size uhc.data.temp matches 1 run difficulty hard
gamerule doDaylightCycle true
gamerule doFireTick true
gamerule doMobSpawning true
gamerule spectatorsGenerateChunks false
execute if score #message uhc.data.setup matches 0 run gamerule showDeathMessages true

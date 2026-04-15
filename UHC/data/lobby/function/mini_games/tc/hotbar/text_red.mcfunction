
#> lobby:mini_games/tc/hotbar/text_red
#
# @within			uhc:pre_game/timer/tick_player
#
#
# @description		Hotbar
#

$execute unless score #playing_ctb lobby.tc.data matches 1 run title @s actionbar [{"text":"","color":"#FF3F3F","bold":true},{"score":{"name":"#timer_game_min","objective":"lobby.tc.data"}},{"text":":","color":"#FFFFFF"},"$(s)",{"score":{"name":"#timer_game_sec","objective":"lobby.tc.data"}},{"text":".","color":"#FFFFFF"},"$(ms)",{"score":{"name":"#timer_game_ms","objective":"lobby.tc.data"}}]
$execute if score #playing_ctb lobby.tc.data matches 1 run title @s actionbar [{"text":"","color":"#FF3F3F","bold":true},{"score":{"name":"#timer_game_min","objective":"lobby.tc.data"}},{"text":":","color":"#FFFFFF"},"$(s)",{"score":{"name":"#timer_game_sec","objective":"lobby.tc.data"}},{"text":".","color":"#FFFFFF"},"$(ms)",{"score":{"name":"#timer_game_ms","objective":"lobby.tc.data"}},{"text":" - ","color":"#FFFFFF"},{"score":{"name":"#team_01","objective":"lobby.tc.player.score"},"color":"red"},{"text":"-","color":"#FFFFFF"},{"score":{"name":"#team_02","objective":"lobby.tc.player.score"},"color":"blue"}]

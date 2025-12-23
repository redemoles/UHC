
#> lobby:mini_games/rjg/hotbar/infinite
#
# @within			lobby:mini_games/rjg/hotbar/
#
#
# @description		Hotbar pour Jump Infini
#

execute as @s[scores={uhc.player.lang=061801}] run title @s actionbar [{"text":"","color":"#FFE73F","bold":true},{"text":"Personnel ","color":"#FFFFFF"},{"score":{"name":"@s","objective":"lobby.rjg.record.infinite.score"}},{"text":" | ","color":"#3F3F3F"},{"score":{"name":"@s","objective":"lobby.rjg.score.sb"}},{"text":" | ","color":"#3F3F3F"},{"score":{"name":"#record","objective":"lobby.rjg.record.infinite.score"}},{"text":" Local","color":"#FFFFFF"}]
execute as @s[scores={uhc.player.lang=051407}] run title @s actionbar [{"text":"","color":"#FFE73F","bold":true},{"text":"Personal ","color":"#FFFFFF"},{"score":{"name":"@s","objective":"lobby.rjg.record.infinite.score"}},{"text":" | ","color":"#3F3F3F"},{"score":{"name":"@s","objective":"lobby.rjg.score.sb"}},{"text":" | ","color":"#3F3F3F"},{"score":{"name":"#record","objective":"lobby.rjg.record.infinite.score"}},{"text":" Local","color":"#FFFFFF"}]

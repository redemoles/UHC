
#> uhc:in_game/tp/spawn/border_size/100-149
#
# @within			uhc:in_game/player/death/
# @within			uhc:start/game_team/
#
# @description		Changement des points d'apparitions des équipes
#

scoreboard players set #border_size_tp uhc.data.temp 100

## Lieu de respawn
execute store result storage uhc:temp respawn_location.720 int 0.10 run scoreboard players get #respawn_location_720 uhc.data.setup
execute store result storage uhc:temp respawn_location.840 int 0.10 run scoreboard players get #respawn_location_840 uhc.data.setup
execute store result storage uhc:temp respawn_location.360 int 0.10 run scoreboard players get #respawn_location_360 uhc.data.setup
execute store result storage uhc:temp respawn_location.960 int 0.10 run scoreboard players get #respawn_location_960 uhc.data.setup
data modify storage uhc:temp respawn_location.0 set value 0
execute store result storage uhc:temp respawn_location.900 int 0.10 run scoreboard players get #respawn_location_900 uhc.data.setup
execute store result storage uhc:temp respawn_location.180 int 0.10 run scoreboard players get #respawn_location_180 uhc.data.setup
execute store result storage uhc:temp respawn_location.780 int 0.10 run scoreboard players get #respawn_location_780 uhc.data.setup
execute store result storage uhc:temp respawn_location.540 int 0.10 run scoreboard players get #respawn_location_540 uhc.data.setup

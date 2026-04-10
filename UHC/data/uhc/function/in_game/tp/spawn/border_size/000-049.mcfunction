
#> uhc:in_game/tp/spawn/border_size/000-049
#
# @within			uhc:in_game/tp/spawn/border_size/main
#
#
# @description		Changement des points d'apparitions des équipes
#

scoreboard players set #border_size_tp uhc.data.temp 000

## Lieu de respawn
scoreboard players operation @s uhc.id.spawn.x.temp = @s uhc.id.spawn.x
scoreboard players operation @s uhc.id.spawn.z.temp = @s uhc.id.spawn.z
scoreboard players operation @s uhc.id.spawn.x.temp /= #50 uhc.data.numbers
scoreboard players operation @s uhc.id.spawn.z.temp /= #50 uhc.data.numbers

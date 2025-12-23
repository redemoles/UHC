
#> mls:reset
#
# @within			uhc:reset
#
#
# @description		Reset
#

scoreboard objectives remove mls.player.inventory
scoreboard objectives remove mls.player.kit
scoreboard objectives remove mls.player.kit.bow
scoreboard objectives remove mls.player.team
scoreboard objectives remove mls.player.superteam
scoreboard objectives remove mls.scenario

scoreboard objectives add mls.player.inventory dummy
scoreboard objectives add mls.player.kit dummy
scoreboard objectives add mls.player.kit.bow dummy
scoreboard objectives add mls.player.team dummy
scoreboard objectives add mls.player.superteam dummy
scoreboard objectives add mls.scenario dummy

## Création des équipes de taupe
team remove mls.01
team remove mls.02
team remove mls.03
team remove mls.04
team remove mls.05
team remove mls.06
team remove mls.07
team remove mls.08

team add mls.01
team add mls.02
team add mls.03
team add mls.04
team add mls.05
team add mls.06
team add mls.07
team add mls.08

team modify mls.01 color red
team modify mls.02 color red
team modify mls.03 color red
team modify mls.04 color red
team modify mls.05 color red
team modify mls.06 color red
team modify mls.07 color red
team modify mls.08 color red

team modify mls.01 prefix {"text":"[Moles 1] ","color":"#FF5F5F"}
team modify mls.02 prefix {"text":"[Moles 2] ","color":"#FF5F5F"}
team modify mls.03 prefix {"text":"[Moles 3] ","color":"#FF5F5F"}
team modify mls.04 prefix {"text":"[Moles 4] ","color":"#FF5F5F"}
team modify mls.05 prefix {"text":"[Moles 5] ","color":"#FF5F5F"}
team modify mls.06 prefix {"text":"[Moles 6] ","color":"#FF5F5F"}
team modify mls.07 prefix {"text":"[Moles 7] ","color":"#FF5F5F"}
team modify mls.08 prefix {"text":"[Moles 8] ","color":"#FF5F5F"}

team remove mls.s01
team remove mls.s02
team remove mls.s03
team remove mls.s04
team remove mls.s05
team remove mls.s06
team remove mls.s07
team remove mls.s08

team add mls.s01
team add mls.s02
team add mls.s03
team add mls.s04
team add mls.s05
team add mls.s06
team add mls.s07
team add mls.s08

team modify mls.s01 color dark_red
team modify mls.s02 color dark_red
team modify mls.s03 color dark_red
team modify mls.s04 color dark_red
team modify mls.s05 color dark_red
team modify mls.s06 color dark_red
team modify mls.s07 color dark_red
team modify mls.s08 color dark_red

team modify mls.s01 prefix {"text":"[Moles 1] ","color":"#CF3F3F"}
team modify mls.s02 prefix {"text":"[Moles 2] ","color":"#CF3F3F"}
team modify mls.s03 prefix {"text":"[Moles 3] ","color":"#CF3F3F"}
team modify mls.s04 prefix {"text":"[Moles 4] ","color":"#CF3F3F"}
team modify mls.s05 prefix {"text":"[Moles 5] ","color":"#CF3F3F"}
team modify mls.s06 prefix {"text":"[Moles 6] ","color":"#CF3F3F"}
team modify mls.s07 prefix {"text":"[Moles 7] ","color":"#CF3F3F"}
team modify mls.s08 prefix {"text":"[Moles 8] ","color":"#CF3F3F"}

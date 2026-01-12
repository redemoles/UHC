
#> uhc:pre_game/menu/load/background/
#
# @within			uhc:pre_game/menu/load/
#
#
# @description		Menu background
#

execute unless score #bhc uhc.gamemode matches 1 if score #trade_uhc uhc.scenario matches 1 run function uhc:pre_game/menu/load/background/green_lime
execute if score #bhc uhc.gamemode matches 1 run function uhc:pre_game/menu/load/background/purple_magenta
execute unless score #bhc uhc.gamemode matches 1 unless score #trade_uhc uhc.scenario matches 1 run function uhc:pre_game/menu/load/background/yellow_white

execute unless items entity @s inventory.1 * run item replace entity @s inventory.1 with minecraft:gray_stained_glass_pane[minecraft:tooltip_display={"hide_tooltip":true}]
execute unless items entity @s inventory.2 * run item replace entity @s inventory.2 with minecraft:black_stained_glass_pane[minecraft:tooltip_display={"hide_tooltip":true}]
execute unless items entity @s inventory.3 * run item replace entity @s inventory.3 with minecraft:gray_stained_glass_pane[minecraft:tooltip_display={"hide_tooltip":true}]
execute unless items entity @s inventory.4 * run item replace entity @s inventory.4 with minecraft:black_stained_glass_pane[minecraft:tooltip_display={"hide_tooltip":true}]
execute unless items entity @s inventory.5 * run item replace entity @s inventory.5 with minecraft:gray_stained_glass_pane[minecraft:tooltip_display={"hide_tooltip":true}]
execute unless items entity @s inventory.6 * run item replace entity @s inventory.6 with minecraft:black_stained_glass_pane[minecraft:tooltip_display={"hide_tooltip":true}]
execute unless items entity @s inventory.7 * run item replace entity @s inventory.7 with minecraft:gray_stained_glass_pane[minecraft:tooltip_display={"hide_tooltip":true}]

execute unless items entity @s inventory.10 * run item replace entity @s inventory.10 with minecraft:black_stained_glass_pane[minecraft:tooltip_display={"hide_tooltip":true}]
execute unless items entity @s inventory.11 * run item replace entity @s inventory.11 with minecraft:gray_stained_glass_pane[minecraft:tooltip_display={"hide_tooltip":true}]
execute unless items entity @s inventory.12 * run item replace entity @s inventory.12 with minecraft:black_stained_glass_pane[minecraft:tooltip_display={"hide_tooltip":true}]
execute unless items entity @s inventory.13 * run item replace entity @s inventory.13 with minecraft:gray_stained_glass_pane[minecraft:tooltip_display={"hide_tooltip":true}]
execute unless items entity @s inventory.14 * run item replace entity @s inventory.14 with minecraft:black_stained_glass_pane[minecraft:tooltip_display={"hide_tooltip":true}]
execute unless items entity @s inventory.15 * run item replace entity @s inventory.15 with minecraft:gray_stained_glass_pane[minecraft:tooltip_display={"hide_tooltip":true}]
execute unless items entity @s inventory.16 * run item replace entity @s inventory.16 with minecraft:black_stained_glass_pane[minecraft:tooltip_display={"hide_tooltip":true}]

execute unless items entity @s inventory.19 * run item replace entity @s inventory.19 with minecraft:gray_stained_glass_pane[minecraft:tooltip_display={"hide_tooltip":true}]
execute unless items entity @s inventory.20 * run item replace entity @s inventory.20 with minecraft:black_stained_glass_pane[minecraft:tooltip_display={"hide_tooltip":true}]
execute unless items entity @s inventory.21 * run item replace entity @s inventory.21 with minecraft:gray_stained_glass_pane[minecraft:tooltip_display={"hide_tooltip":true}]
execute unless items entity @s inventory.22 * run item replace entity @s inventory.22 with minecraft:black_stained_glass_pane[minecraft:tooltip_display={"hide_tooltip":true}]
execute unless items entity @s inventory.23 * run item replace entity @s inventory.23 with minecraft:gray_stained_glass_pane[minecraft:tooltip_display={"hide_tooltip":true}]
execute unless items entity @s inventory.24 * run item replace entity @s inventory.24 with minecraft:black_stained_glass_pane[minecraft:tooltip_display={"hide_tooltip":true}]
execute unless items entity @s inventory.25 * run item replace entity @s inventory.25 with minecraft:gray_stained_glass_pane[minecraft:tooltip_display={"hide_tooltip":true}]

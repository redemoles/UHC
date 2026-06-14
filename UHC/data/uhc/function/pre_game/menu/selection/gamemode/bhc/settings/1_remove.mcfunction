
#> uhc:pre_game/menu/selection/gamemode/bhc/settings/1_remove
#
# @within			uhc:pre_game/menu/detector/menu
#
#
# @description		Redirection
#

# Timer Départ premier Bingo
execute if score @s uhc.menu.gamemode.bhc matches 12 if score #stepa_start bhc.data.setup matches 0.. run scoreboard players remove #stepa_start bhc.data.setup 10
execute if score #stepa_start bhc.data.setup matches ..-1 run scoreboard players set #stepa_start bhc.data.setup -1

# Timer Fin premier Bingo
execute if score @s uhc.menu.gamemode.bhc matches 13 if score #stepa_end bhc.data.setup > #stepa_start bhc.data.setup run scoreboard players remove #stepa_end bhc.data.setup 10
execute if score #stepa_end bhc.data.setup <= #stepa_start bhc.data.setup run scoreboard players operation #stepa_end bhc.data.setup = #stepa_start bhc.data.setup
execute if score #stepa_end bhc.data.setup matches -1 run scoreboard players set #stepa_end bhc.data.setup 0
# Timer Départ second Bingo
execute if score @s uhc.menu.gamemode.bhc matches 16 if score #stepb_start bhc.data.setup > #stepa_end bhc.data.setup run scoreboard players remove #stepb_start bhc.data.setup 10
execute if score #stepb_start bhc.data.setup <= #stepa_end bhc.data.setup run scoreboard players operation #stepb_start bhc.data.setup = #stepa_end bhc.data.setup

# Timer Épuisement des ressources second Bingo - Ruée vers l'or
execute if score #bhc bhc.scenario matches 1 if score @s uhc.menu.gamemode.bhc matches 18 if score #stepb_exhaustion bhc.data.setup > #stepb_start bhc.data.setup run scoreboard players remove #stepb_exhaustion bhc.data.setup 10
execute if score #bhc bhc.scenario matches 1 if score #stepb_exhaustion bhc.data.setup <= #stepb_start bhc.data.setup run scoreboard players operation #stepb_exhaustion bhc.data.setup = #stepb_start bhc.data.setup

# Timer Fin second Bingo
execute if score @s uhc.menu.gamemode.bhc matches 17 if score #stepb_end bhc.data.setup > #stepb_exhaustion bhc.data.setup run scoreboard players remove #stepb_end bhc.data.setup 10
execute if score #stepb_end bhc.data.setup <= #stepb_exhaustion bhc.data.setup run scoreboard players operation #stepb_end bhc.data.setup = #stepb_exhaustion bhc.data.setup

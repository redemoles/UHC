
#> uhc:translation/menu/selected/gamemode_bhc_no_bingo_generated
#
# @within			uhc:pre_game/menu/selected/gamemode/bhc/grids_check/xx/enable
#
#
#
#

## FRA - Français / French
execute if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"\nAucune grille de bingo détectée.","color":"#FF3F3F"},{"text":"\nTélécharger le générateur de bingo en cliquant sur ce message","underlined":true,"color":"#E7E7E7","click_event":{"action":"open_url","url":"https://drive.google.com/drive/u/0/folders/1KDspiYNc3s_YT_1duM478VaUTGnx2jum"}}]

## ENG - English
execute if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"\nNo bingo grid detected.","color":"#FF3F3F"},{"text":"\nDownload the bingo generator by clicking this message","underlined":true,"color":"#E7E7E7","click_event":{"action":"open_url","url":"https://drive.google.com/drive/u/0/folders/1KDspiYNc3s_YT_1duM478VaUTGnx2jum"}}]

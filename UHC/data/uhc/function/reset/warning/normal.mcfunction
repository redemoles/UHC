
#> uhc:reset/warning/normal
#
# @within			uhc:reset
#
#
# @description		Avertissement réinitialisation UHC
#

execute if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"\nUHC","color":"#FFE73F","click_event":{"action":"run_command","command":"/scoreboard players set @s uhc.game.reset 1"}},{"text":" > ","color":"#6F6F6F"},{"text":"Cliquer ici","color":"#FF5F5F","underlined":true},{"text":" pour réinitialiser la partie.\nLes données de la partie seront supprimées.\n","color":"#FF5F5F"},{"text":"Les paramètres de la partie seront conservés.\n","color":"#E7E7E7"}]
execute if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"\nUHC","color":"#FFE73F","click_event":{"action":"run_command","command":"/scoreboard players set @s uhc.game.reset 1"}},{"text":" > ","color":"#6F6F6F"},{"text":"Click here","color":"#FF5F5F","underlined":true},{"text":" to reset the game.\nThe game data will be deleted.\n","color":"#FF5F5F"},{"text":"The game settings will be saved.\n","color":"#E7E7E7"}]

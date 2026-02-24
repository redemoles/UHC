
#> uhc:reset/warning/full
#
# @within			uhc:reset/full
#
#
# @description		Avertissement réinitialisation UHC
#

execute if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"\nUHC","color":"#FFE73F","click_event":{"action":"run_command","command":"/scoreboard players set @s uhc.game.reset 2"}},{"text":" > ","color":"#6F6F6F"},{"text":"Cliquer ici","color":"#FF5F5F","underlined":true},{"text":" pour réinitialiser la partie.\nLes données de la partie seront supprimées.\nLes paramètres de la partie seront réinitialisés.\n","color":"#FF5F5F"}]
execute if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"\nUHC","color":"#FFE73F","click_event":{"action":"run_command","command":"/scoreboard players set @s uhc.game.reset 2"}},{"text":" > ","color":"#6F6F6F"},{"text":"Click here","color":"#FF5F5F","underlined":true},{"text":" to reset the game.\nThe game data will be deleted.\nThe game settings will be reset.","color":"#FF5F5F"}]

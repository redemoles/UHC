
#> uhc:translation/in_game/player_spec_revive_cancel_is_playing
#
# @within			uhc:in_game/player/spec/revive/main
#
#
# @description		Annulation de la resurrection
#

## FRA - Français / French
tellraw @a[tag=uhc.host,scores={uhc.player.lang=061801}] [{"text":"Le joueur ","color":"#FF5F5F"},{"selector":"@s","color":"#FF5F5F"},{"text":" est déjà entrain de jouer, il ne peut pas être ressuscité."}]

## ENG - English
tellraw @a[tag=uhc.host,scores={uhc.player.lang=051407}] [{"text":"The player ","color":"#FF5F5F"},{"selector":"@s","color":"#FF5F5F"},{"text":" is already playing, he cannot be revived."}]


#> uhc:translation/hotbar/uhc_delay
#
# @within			uhc:in_game/timer/tick
#
#
# @description		Affichage Hotbar Départ retardé
#

## FRA - Français / French
$title @a[tag=!uhc.target.targeter_done,scores={uhc.player.lang=061801}] actionbar [{"text":"0:$(sec_cooldown)","color":"#FF3F3F","bold":true}, {"score":{"name":"#sec_cooldown","objective":"uhc.data.temp"},"color":"#FF3F3F","bold":true}, {"text":" avant ","color":"#FFFFFF"}, {"text":"démarrage","color":"#FF3F3F"}, {"text":" !","color":"#FFFFFF"}]

## ENG - English
$title @a[tag=!uhc.target.targeter_done,scores={uhc.player.lang=051407}] actionbar [{"text":"0:$(sec_cooldown)","color":"#FF3F3F","bold":true}, {"score":{"name":"#sec_cooldown","objective":"uhc.data.temp"},"color":"#FF3F3F","bold":true}, {"text":" before the ","color":"#FFFFFF"}, {"text":"start","color":"#FF3F3F"}, {"text":"!","color":"#FFFFFF"}]

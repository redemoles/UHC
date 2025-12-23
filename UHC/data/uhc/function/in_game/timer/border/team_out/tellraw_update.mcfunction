
#> uhc:in_game/timer/border/team_out/tellraw_update
#
# @within			uhc:in_game/timer/border/team_out/
#
#
# @description		Réduction de la bordure quand une équipe est éliminée
#

$execute as @a[scores={uhc.player.lang=061801}] run tellraw @s [{"text":"Réduction ","color":"#FF3F3F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" Une équipe a été éliminée. Fin de la réduction en ","color":"#FFFFFF","bold":false},{"text":"$(border_size)","color":"#FF3F3F","bold":false},{"text":"/","color":"#FFFFFF","bold":false},{"text":"-","color":"#FF3F3F","bold":false},{"text":"$(border_size)","color":"#FF3F3F","bold":false}]
$execute as @a[scores={uhc.player.lang=051407}] run tellraw @s [{"text":"Shrink ","color":"#FF3F3F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" A team has been eliminated. End of shrinkage at ","color":"#FFFFFF","bold":false},{"text":"$(border_size)","color":"#FF3F3F","bold":false},{"text":"/","color":"#FFFFFF","bold":false},{"text":"-","color":"#FF3F3F","bold":false},{"text":"$(border_size)","color":"#FF3F3F","bold":false}]

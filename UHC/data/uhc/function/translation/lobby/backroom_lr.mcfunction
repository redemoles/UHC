
#> uhc:translation/lobby/backroom_lr
#
# @within			lobby:mini_games/br/record/lr
#
#
#
#

## FRA - Français / French
$execute as @a[tag=mgs.backroom,scores={uhc.player.lang=061801}] run tellraw @s [{"text":"Nouveau record local par ","color":"#FF3FFF"},{"selector":"@p[tag=mgs.br.lr]"},{"text":" ! "},{"score":{"name":"#record","objective":"lobby.br.data.record.min"},"color":"#FFE73F"},{"text":":","color":"#FFFFFF"},"$(s)",{"score":{"name":"#record","objective":"lobby.br.data.record.sec"},"color":"#FFE73F"},{"text":".","color":"#FFFFFF"},"$(ms)",{"score":{"name":"#record","objective":"lobby.br.data.record.ms"},"color":"#FFE73F"}]

## ENG - English
$execute as @a[tag=mgs.backroom,scores={uhc.player.lang=051407}] run tellraw @s [{"text":"New local record by ","color":"#FF3FFF"},{"selector":"@p[tag=mgs.br.lr]"},{"text":" ! "},{"score":{"name":"#record","objective":"lobby.br.data.record.min"},"color":"#FFE73F"},{"text":":","color":"#FFFFFF"},"$(s)",{"score":{"name":"#record","objective":"lobby.br.data.record.sec"},"color":"#FFE73F"},{"text":".","color":"#FFFFFF"},"$(ms)",{"score":{"name":"#record","objective":"lobby.br.data.record.ms"},"color":"#FFE73F"}]

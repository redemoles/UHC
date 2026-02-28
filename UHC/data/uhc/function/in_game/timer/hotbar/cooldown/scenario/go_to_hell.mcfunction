
#> uhc:in_game/timer/hotbar/cooldown/scenario/go_to_hell
#
# @within			uhc:in_game/timer/hotbar/cooldown/text_tellraw
#
#
# @description		Annonce décompte
#

execute unless score #go_to_hell uhc.data.temp matches 11.. unless score #go_to_hell uhc.data.temp matches 6..9 unless score #go_to_hell uhc.data.temp matches ..1 as @a[scores={uhc.player.lang=061801}] run tellraw @s [{"text":"Go To Hell ","color":"#FF3F3F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" Activée dans ","color":"#FFFFFF","bold":false},{"score":{"name":"#go_to_hell","objective":"uhc.data.temp"},"color":"#FFFFFF","bold":false},{"text":" minutes !","color":"#FFFFFF","bold":false}]
execute if score #go_to_hell uhc.data.temp matches 1 as @a[scores={uhc.player.lang=061801}] run tellraw @s [{"text":"Go To Hell ","color":"#FF3F3F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" Activée dans ","color":"#FFFFFF","bold":false},{"score":{"name":"#go_to_hell","objective":"uhc.data.temp"},"color":"#FFFFFF","bold":false},{"text":" minute !","color":"#FFFFFF","bold":false}]
execute if score #go_to_hell uhc.data.temp matches 0 as @a[scores={uhc.player.lang=061801}] run tellraw @s [{"text":"Go To Hell ","color":"#FF3F3F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" Activation !","color":"#FF3F3F","bold":false}]
execute unless score #go_to_hell uhc.data.temp matches 11.. unless score #go_to_hell uhc.data.temp matches 6..9 unless score #go_to_hell uhc.data.temp matches ..1 as @a[scores={uhc.player.lang=051407}] run tellraw @s [{"text":"Go To Hell ","color":"#FF3F3F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" Enabled in ","color":"#FFFFFF","bold":false},{"score":{"name":"#go_to_hell","objective":"uhc.data.temp"},"color":"#FFFFFF","bold":false},{"text":" minutes !","color":"#FFFFFF","bold":false}]
execute if score #go_to_hell uhc.data.temp matches 1 as @a[scores={uhc.player.lang=051407}] run tellraw @s [{"text":"Go To Hell ","color":"#FF3F3F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" Enabled in ","color":"#FFFFFF","bold":false},{"score":{"name":"#go_to_hell","objective":"uhc.data.temp"},"color":"#FFFFFF","bold":false},{"text":" minute !","color":"#FFFFFF","bold":false}]
execute if score #go_to_hell uhc.data.temp matches 0 as @a[scores={uhc.player.lang=051407}] run tellraw @s [{"text":"Go To Hell ","color":"#FF3F3F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" Enable!","color":"#FF3F3F","bold":false}]


#> uhc:in_game/player/death/reveal
#
# @within			uhc:in_game/player/death/
#
#
# @description		Fonction si morts ou kills à chaque ticks
#

# Msg FRA
execute if score #message uhc.data.setup matches 1..2 run tellraw @a[scores={uhc.player.lang=061801}] [{"text":"\n","color":"#3FE7FF"},{"selector":"@s","color":"#B73FFF"},{"text":" est mort(e).","color":"#FF3FFF"}]
execute if score #message uhc.data.setup matches 7 run tellraw @a[scores={uhc.player.lang=061801}] [{"text":"\n","color":"#3FE7FF"},{"selector":"@s","color":"#B73FFF"},{"text":" est mort(e).","color":"#FF3FFF"}]
execute if score #message uhc.data.setup matches 4 run tellraw @a[scores={uhc.player.lang=061801}] [{"text":"\n","color":"#3FE7FF"},{"text":"Une personne est morte. ","color":"#FF3FFF"}]

# Msg ENG
execute if score #message uhc.data.setup matches 1..2 run tellraw @a[scores={uhc.player.lang=051407}] [{"text":"\n","color":"#3FE7FF"},{"selector":"@s","color":"#B73FFF"},{"text":" died.","color":"#FF3FFF"}]
execute if score #message uhc.data.setup matches 7 run tellraw @a[scores={uhc.player.lang=051407}] [{"text":"\n","color":"#3FE7FF"},{"selector":"@s","color":"#B73FFF"},{"text":" died.","color":"#FF3FFF"}]
execute if score #message uhc.data.setup matches 4 run tellraw @a[scores={uhc.player.lang=051407}] [{"text":"\n","color":"#3FE7FF"},{"text":"A player died. ","color":"#FF3FFF"}]

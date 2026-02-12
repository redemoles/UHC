
#> bhc:scenario/02/target/randomizer/tellraw
#
# @within			bhc:scenario/02/target/randomizer/main
#
#
# @description		Annonce des nouvelles cibles
#

scoreboard players operation #team uhc.id.team = @s uhc.id.team

# Id
scoreboard players operation @a[tag=uhc.player,predicate=uhc:id/team] bhc.targeted.id = @s bhc.targeted.id
scoreboard players operation @a[tag=uhc.player,predicate=uhc:id/team] bhc.targeter.id = @s bhc.targeter.id

# Message
scoreboard players operation #temp bhc.targeter.id = @s bhc.targeter.id
execute as @a[predicate=uhc:id/team,scores={uhc.player.lang=061801}] run tellraw @s [{"text":"\nÈre Viking ","color":"#CF6F3F"},{"text":">","color":"#9F9F9F","bold":true},{"text":" Nouvelles cibles attribuées !","color":"#FFE73F"}]
execute as @a[predicate=uhc:id/team,scores={uhc.player.lang=051407}] run tellraw @s [{"text":"\nViking Era ","color":"#CF6F3F"},{"text":">","color":"#9F9F9F","bold":true},{"text":" New targets assigned!","color":"#FFE73F"}]

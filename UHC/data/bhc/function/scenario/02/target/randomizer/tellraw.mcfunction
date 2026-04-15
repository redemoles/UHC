
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
function uhc:translation/bhc/02_viking_era/target_randomizer

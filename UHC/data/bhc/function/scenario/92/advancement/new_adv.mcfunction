
#> bhc:scenario/92/advancement/new_adv
#
# @within			bhc:advancement/new_adv
#
#
# @description		Executed when the player completes the advancement
#



## Sélection du joueur et son équipe
scoreboard players operation #team uhc.id.team = @s uhc.id.team
tag @s add bhc.new_adv
$execute in uhc:lobby as @e[type=minecraft:marker,tag=UHC,distance=0..,predicate=uhc:id/team] run function bhc:scenario/92/advancement/new_adv_1 with storage $(namespace) $(line)_$(column)
execute if score #team_first_case bhc.data matches 0 run return run tag @s remove bhc.new_adv

## Resélection de l'équipe du joueur
scoreboard players operation #team uhc.id.team = @s uhc.id.team

## Don de l'advancement aux alliés
$advancement grant @a[predicate=uhc:id/team] only $(namespace):$(line)_$(column)




## Récompenses
$execute if score #stepa_enabled bhc.data matches $(step) run function bhc:scenario/92/bingo_stepa/player_reward/case with storage $(namespace) $(line)_$(column)
$execute if score #stepb_enabled bhc.data matches $(step) run function bhc:scenario/92/bingo_stepb/player_reward/case with storage $(namespace) $(line)_$(column)

tag @s remove bhc.new_adv

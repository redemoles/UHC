
#> bhc:in_game/scenario/02/advancement/new_adv
#
# @within			bhc:in_game/advancement/new_adv
#
#
# @description		Executed when the player completes the advancement
#



## Sélection du joueur et son équipe
scoreboard players operation #team uhc.id.team = @s uhc.id.team
tag @s add bhc.new_adv
$execute in uhc:lobby as @n[type=minecraft:marker,tag=UHC,distance=0..,predicate=uhc:id/team] run function bhc:in_game/scenario/02/advancement/new_adv_1 with storage $(namespace) $(line)_$(column)
execute if score #team_first_case bhc.data matches 0 run return run tag @s remove bhc.new_adv

## Resélection de l'équipe du joueur
scoreboard players operation #team uhc.id.team = @s uhc.id.team

## Don de l'advancement aux alliés
$advancement grant @a[predicate=uhc:id/team] only $(namespace):$(line)_$(column)




## Récompenses
$execute if score #stepa_enabled bhc.data matches $(step) run function bhc:in_game/scenario/02/bingo_stepa/player_reward/case with storage $(namespace) $(line)_$(column)
$execute if score #stepb_enabled bhc.data matches $(step) run function bhc:in_game/scenario/02/bingo_stepb/player_reward/case with storage $(namespace) $(line)_$(column)

tag @s remove bhc.new_adv

execute if score #stepb_start bhc.data.temp matches ..0 if score #stepb_end bhc.data.temp matches 1.. in uhc:lobby unless entity @n[type=minecraft:marker,tag=UHC,distance=0..,scores={uhc.player.lives=1..},predicate=!bhc:stepb_max] run function bhc:in_game/scenario/02/bingo_stepb/end

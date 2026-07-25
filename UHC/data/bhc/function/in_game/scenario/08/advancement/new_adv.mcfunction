
#> bhc:in_game/scenario/08/advancement/new_adv
#
# @within			bhc:in_game/advancement/new_adv
#
#
# @description		Executed when the player completes the advancement
#



## Sélection du joueur et son équipe
scoreboard players operation #team uhc.id.team = @s uhc.id.team
tag @s add bhc.new_adv
$execute in uhc:lobby as @n[type=minecraft:marker,tag=UHC,distance=0..,predicate=uhc:id/team] run function bhc:in_game/scenario/08/advancement/new_adv_1 with storage $(namespace) $(line)_$(column)
execute if score #team_first_case bhc.data matches 0 run return run tag @s remove bhc.new_adv

## Resélection de l'équipe du joueur
scoreboard players operation #team uhc.id.team = @s uhc.id.team

## Don de l'advancement aux alliés
$advancement grant @a[predicate=uhc:id/team] only $(namespace):$(line)_$(column)




## Récompenses
$execute if score #stepa_enabled bhc.data matches $(step) run function bhc:in_game/scenario/08/bingo_stepa/player_reward/case with storage $(namespace) $(line)_$(column)
$execute if score #stepb_enabled bhc.data matches $(step) run function bhc:in_game/scenario/08/bingo_stepb/player_reward/case with storage $(namespace) $(line)_$(column)

tag @s remove bhc.new_adv

## Si FFA → Don du dernier succès non complété d'une ligne/colonne
#$execute if score #team_size uhc.data.temp matches 1 if score @s bhc.line_$(line) = #line-1 bhc.data run function bhc:in_game/scenario/08/advancement/ffa_line with storage $(namespace) $(line)_$(column)
#$execute if score #team_size uhc.data.temp matches 1 if score @s bhc.column_$(column) = #column-1 bhc.data run function bhc:in_game/scenario/08/advancement/ffa_column with storage $(namespace) $(line)_$(column)

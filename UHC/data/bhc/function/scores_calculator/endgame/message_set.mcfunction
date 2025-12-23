
#> bhc:scores_calculator/endgame/message_set
#
# @within			bhc:scores_calculator/rank/endgame
#
#
# @description		Calcul des résultats finaux 
#

## Attribution aux joueurs du score total de leur équipe
# Sélection des joueurs de chaque équipe
scoreboard players operation #team uhc.id.team = @s uhc.id.team

# Classement Étape A → Affichage pour le message de fin
scoreboard players operation @a[predicate=uhc:id_team] bhc.stepa.score.inv = @s bhc.stepa.score.inv
scoreboard players operation @a[predicate=uhc:id_team] bhc.stepa.score.inv /= #1m uhc.data.numbers
scoreboard players operation @a[predicate=uhc:id_team] bhc.stepa.rank.score.inv = @s bhc.stepa.rank.score.inv
scoreboard players operation @a[predicate=uhc:id_team] bhc.stepa.rank.number = @s bhc.stepa.rank.number

# Classement Étape B → Affichage pour le message de fin
scoreboard players operation @a[predicate=uhc:id_team] bhc.stepb.score.inv = @s bhc.stepb.score.inv
scoreboard players operation @a[predicate=uhc:id_team] bhc.stepb.score.inv /= #1m uhc.data.numbers
scoreboard players operation @a[predicate=uhc:id_team] bhc.stepb.rank.score.inv = @s bhc.stepb.rank.score.inv
scoreboard players operation @a[predicate=uhc:id_team] bhc.stepb.rank.number = @s bhc.stepb.rank.number

# Classement Kills → Affichage pour le message de fin
scoreboard players operation @a[predicate=uhc:id_team] bhc.kills.score.inv = @s bhc.kills.score.inv
scoreboard players operation @a[predicate=uhc:id_team] bhc.kills.score.inv /= #10m uhc.data.numbers
scoreboard players operation @a[predicate=uhc:id_team] bhc.kills.rank.score.inv = @s bhc.kills.rank.score.inv
scoreboard players operation @a[predicate=uhc:id_team] bhc.kills.rank.number = @s bhc.kills.rank.number

# Classement Survie → Affichage pour le message de fin
scoreboard players operation @a[predicate=uhc:id_team] bhc.death.score.inv = @s bhc.death.score.inv
scoreboard players operation @a[predicate=uhc:id_team] bhc.death.score.inv /= #100 uhc.data.numbers
scoreboard players operation @a[predicate=uhc:id_team] bhc.death.rank.score.inv = @s bhc.death.rank.score.inv
scoreboard players operation @a[predicate=uhc:id_team] bhc.death.rank.number = @s bhc.death.rank.number

# Classement Total → Affichage pour le message de fin
scoreboard players operation @s bhc.total.score.inv /= #100 uhc.data.numbers
scoreboard players operation @a[predicate=uhc:id_team] bhc.total.score.inv = @s bhc.total.score.inv
scoreboard players operation @a[predicate=uhc:id_team] bhc.total.rank.number = @s bhc.total.rank.number

function bhc:timer/scoreboard/marker_name

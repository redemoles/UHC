
#> nzl:types/move/attack/fee
#
# @within			nzl:types/move/stats/fee
#
#
# @description		Champ Brumeux
#

scoreboard players operation #team uhc.id.team = @s uhc.id.team

# Détecte la présence d'alliés à proximité
execute as @a[distance=0.1..50,predicate=uhc:id_team,tag=!nzl.fee.bonus] run effect give @s regeneration infinite 0 true
execute as @a[distance=0.1..50,predicate=uhc:id_team,tag=!nzl.fee.bonus] run tag @s add nzl.fee.bonus

# Détecte l'absence d'alliés à proximité
execute as @a[distance=50..,predicate=uhc:id_team,tag=nzl.fee.bonus] unless entity @s[predicate=nzl:effects/champ_brumeux] run effect clear @s regeneration
execute as @a[distance=50..,predicate=uhc:id_team,tag=nzl.fee.bonus] unless entity @s[predicate=nzl:effects/champ_brumeux] run tag @s remove nzl.fee.bonus

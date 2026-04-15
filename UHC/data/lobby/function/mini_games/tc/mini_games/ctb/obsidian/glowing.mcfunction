
#> lobby:mini_games/tc/mini_games/ctb/obsidian/glowing
#
# @within			lobby:mini_games/tc/mini_games/ctb/obsidian/mined
#
#
# @description		Récompense suite à une obsidienne minée
#

function uhc:translation/lobby/tc_ctb_obsidian_glowing

# Effets
execute if entity @s[tag=mgs.tc.team.01] as @a[tag=mgs.tc.team.02] run effect give @s minecraft:glowing 40 0 true
execute if entity @s[tag=mgs.tc.team.02] as @a[tag=mgs.tc.team.01] run effect give @s minecraft:glowing 40 0 true

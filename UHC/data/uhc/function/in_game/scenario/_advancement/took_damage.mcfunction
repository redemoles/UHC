
#> uhc:in_game/scenario/_advancement/took_damage
#
# @within			advancement #uhc:took_damage
#
#
# @description		Le joueur a pris un dégât
#

scoreboard players operation #team uhc.id.team = @s uhc.id.team

# Ironman
execute if score #pve uhc.data.temp matches ..0 as @s[tag=uhc.ironman] in uhc:lobby run function uhc:in_game/scenario/ironman/remove with storage uhc:temp hotbar

# Best PvE
execute if score #pve uhc.data.temp matches ..0 as @s[tag=uhc.scenario.best_pve] run function uhc:in_game/scenario/best_pve/remove

advancement revoke @s[tag=uhc.ironman] only uhc:took_damage

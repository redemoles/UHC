
#> bhc:timer/countdown/text_tellraw
#
# @within			uhc:in_game/timer/hotbar/cooldown/text_tellraw
#
#
# @description		Annonce décompte
#

## Décompte Bingo Classique
execute if score #stepa_start bhc.data.temp matches 1.. unless score #stepa_start bhc.data.temp matches 56.. unless score #stepa_start bhc.data.temp matches 51..54 unless score #stepa_start bhc.data.temp matches 46..49 unless score #stepa_start bhc.data.temp matches 41..44 unless score #stepa_start bhc.data.temp matches 36..39 unless score #stepa_start bhc.data.temp matches 31..34 unless score #stepa_start bhc.data.temp matches 26..29 unless score #stepa_start bhc.data.temp matches 21..24 unless score #stepa_start bhc.data.temp matches 16..19 unless score #stepa_start bhc.data.temp matches 11..14 run return run function bhc:timer/countdown/bingo_a_start
execute if score #stepa_end bhc.data.temp matches 1.. unless score #stepa_end bhc.data.temp matches 56.. unless score #stepa_end bhc.data.temp matches 51..54 unless score #stepa_end bhc.data.temp matches 46..49 unless score #stepa_end bhc.data.temp matches 41..44 unless score #stepa_end bhc.data.temp matches 36..39 unless score #stepa_end bhc.data.temp matches 31..34 unless score #stepa_end bhc.data.temp matches 26..29 unless score #stepa_end bhc.data.temp matches 21..24 unless score #stepa_end bhc.data.temp matches 16..19 unless score #stepa_end bhc.data.temp matches 11..14 run return run function bhc:timer/countdown/bingo_a_end

## Décompte Bingo Spécial
execute if score #stepb_end bhc.data.temp matches ..0 run return fail
execute if score #stepb_start bhc.data.temp matches 1.. unless score #stepb_start bhc.data.temp matches 56.. unless score #stepb_start bhc.data.temp matches 51..54 unless score #stepb_start bhc.data.temp matches 46..49 unless score #stepb_start bhc.data.temp matches 41..44 unless score #stepb_start bhc.data.temp matches 36..39 unless score #stepb_start bhc.data.temp matches 31..34 unless score #stepb_start bhc.data.temp matches 26..29 unless score #stepb_start bhc.data.temp matches 21..24 unless score #stepb_start bhc.data.temp matches 16..19 unless score #stepb_start bhc.data.temp matches 11..14 run return run function bhc:timer/countdown/bingo_b_start
execute if score #stepb_end bhc.data.temp matches 1.. unless score #stepb_end bhc.data.temp matches 56.. unless score #stepb_end bhc.data.temp matches 51..54 unless score #stepb_end bhc.data.temp matches 46..49 unless score #stepb_end bhc.data.temp matches 41..44 unless score #stepb_end bhc.data.temp matches 36..39 unless score #stepb_end bhc.data.temp matches 31..34 unless score #stepb_end bhc.data.temp matches 26..29 unless score #stepb_end bhc.data.temp matches 21..24 unless score #stepb_end bhc.data.temp matches 16..19 unless score #stepb_end bhc.data.temp matches 11..14 run return run function bhc:timer/countdown/bingo_b_end

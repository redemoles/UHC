
#> uhc:translation/lobby/tc_ctb_finished
#
# @within			lobby:mini_games/tc/mini_games/craft/start/
#
#
#
#

## FRA - Français / French
execute if score #team_01 lobby.tc.player.score > #team_02 lobby.tc.player.score as @a[scores={uhc.player.lang=061801}] unless entity @s[tag=!mgs.tc.player,tag=!mgs.tc.spec] run tellraw @s [{"text":"Victoire de l'équipe ","color":"#FFFFFF"},{"text":"Rouge","color":"red"},{"text":" !\nScore : "},{"score":{"name":"#team_01","objective":"lobby.tc.player.score"},"color":"red"},{"text":"-"},{"score":{"name":"#team_02","objective":"lobby.tc.player.score"},"color":"blue"}]
execute if score #team_02 lobby.tc.player.score > #team_01 lobby.tc.player.score as @a[scores={uhc.player.lang=061801}] unless entity @s[tag=!mgs.tc.player,tag=!mgs.tc.spec] run tellraw @s [{"text":"Victoire de l'équipe ","color":"#FFFFFF"},{"text":"Bleu","color":"blue"},{"text":" !\nScore : "},{"score":{"name":"#team_01","objective":"lobby.tc.player.score"},"color":"red"},{"text":"-"},{"score":{"name":"#team_02","objective":"lobby.tc.player.score"},"color":"blue"}]
execute if score #team_01 lobby.tc.player.score = #team_02 lobby.tc.player.score as @a[tag=mgs.tc.player,tag=!mgs.tc.spec,scores={uhc.player.lang=061801}] run tellraw @s [{"text":"Match nul.\nScore : ","color":"#FFFFFF"},{"score":{"name":"#team_01","objective":"lobby.tc.player.score"},"color":"red"},{"text":"-"},{"score":{"name":"#team_02","objective":"lobby.tc.player.score"},"color":"blue"}]

## ENG - English
execute if score #team_01 lobby.tc.player.score > #team_02 lobby.tc.player.score as @a[scores={uhc.player.lang=051407}] unless entity @s[tag=!mgs.tc.player,tag=!mgs.tc.spec] run tellraw @s [{"text":"Victory for the ","color":"#FFFFFF"},{"text":"Red","color":"red"},{"text":" team!\nScore : "},{"score":{"name":"#team_01","objective":"lobby.tc.player.score"},"color":"red"},{"text":"-"},{"score":{"name":"#team_02","objective":"lobby.tc.player.score"},"color":"blue"}]
execute if score #team_02 lobby.tc.player.score > #team_01 lobby.tc.player.score as @a[scores={uhc.player.lang=051407}] unless entity @s[tag=!mgs.tc.player,tag=!mgs.tc.spec] run tellraw @s [{"text":"Victoire for the ","color":"#FFFFFF"},{"text":"Blue","color":"blue"},{"text":" team!\nScore : "},{"score":{"name":"#team_01","objective":"lobby.tc.player.score"},"color":"red"},{"text":"-"},{"score":{"name":"#team_02","objective":"lobby.tc.player.score"},"color":"blue"}]
execute if score #team_01 lobby.tc.player.score = #team_02 lobby.tc.player.score as @a[tag=mgs.tc.player,tag=!mgs.tc.spec,scores={uhc.player.lang=051407}] run tellraw @s [{"text":"Draw.\nScore : ","color":"#FFFFFF"},{"score":{"name":"#team_01","objective":"lobby.tc.player.score"},"color":"red"},{"text":"-"},{"score":{"name":"#team_02","objective":"lobby.tc.player.score"},"color":"blue"}]

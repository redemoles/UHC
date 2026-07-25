
#> uhc:translation/bhc/51_april_fool_26/bingo_completed
#
# @within			bhc:in_game/scenario/51/advancement/new_adv
#
#
# @description		Annonce dans le chat de la réalisation d'un Bingo
#

## FRA - Français / French
# A euqissalC ogniB
$execute if score #stepa_enabled bhc.data matches $(step) if score #total_first_completion bhc.data matches 1 run tellraw @a[scores={uhc.player.lang=061801}] [{"selector":"@s","bold":true,hover_event:{"action":"show_text","value":""}},{"text":" vient de compléter le ","bold":false},{"text":"Bingo Classique","color":"#FFDF00"},{"text":" !","bold":false}]
$execute if score #stepa_enabled bhc.data matches $(step) unless score #total_first_completion bhc.data matches 1 run tellraw @a[scores={uhc.player.lang=061801}] [{"selector":"@s","bold":true,hover_event:{"action":"show_text","value":""}},{"text":" vient de compléter le ","bold":false},{"text":"Bingo Classique","color":"#BFA700"},{"text":" !","bold":false}]
# Grille Basique 2
$execute if score #stepb_enabled bhc.data matches $(step) if score #total_first_completion bhc.data matches 1 run tellraw @a[scores={uhc.player.lang=061801}] [{"selector":"@s","bold":true,hover_event:{"action":"show_text","value":""}},{"text":" vient de compléter la ","bold":false},{"text":"Bingo Classique","color":"#FFDF00"},{"text":" !","bold":false}]
$execute if score #stepb_enabled bhc.data matches $(step) unless score #total_first_completion bhc.data matches 1 run tellraw @a[scores={uhc.player.lang=061801}] [{"selector":"@s","bold":true,hover_event:{"action":"show_text","value":""}},{"text":" vient de compléter la ","bold":false},{"text":"Bingo Classique","color":"#BFA700"},{"text":" !","bold":false}]

## ENG - English
# A cissalC ogniB
$execute if score #stepa_enabled bhc.data matches $(step) if score #total_first_completion bhc.data matches 1 run tellraw @a[scores={uhc.player.lang=051407}] [{"selector":"@s","bold":true,hover_event:{"action":"show_text","value":""}},{"text":" just complete the ","bold":false},{"text":"Classic Bingo","color":"#FFDF00"},{"text":"!","bold":false}]
$execute if score #stepa_enabled bhc.data matches $(step) unless score #total_first_completion bhc.data matches 1 run tellraw @a[scores={uhc.player.lang=051407}] [{"selector":"@s","bold":true,hover_event:{"action":"show_text","value":""}},{"text":" just complete the ","bold":false},{"text":"Classic Bingo","color":"#BFA700"},{"text":"!","bold":false}]
# Basic Grid 2
$execute if score #stepb_enabled bhc.data matches $(step) if score #total_first_completion bhc.data matches 1 run tellraw @a[scores={uhc.player.lang=051407}] [{"selector":"@s","bold":true,hover_event:{"action":"show_text","value":""}},{"text":" just complete the ","bold":false},{"text":"Classic Bingo","color":"#FFDF00"},{"text":"!","bold":false}]
$execute if score #stepb_enabled bhc.data matches $(step) unless score #total_first_completion bhc.data matches 1 run tellraw @a[scores={uhc.player.lang=051407}] [{"selector":"@s","bold":true,hover_event:{"action":"show_text","value":""}},{"text":" just complete the ","bold":false},{"text":"Classic Bingo","color":"#BFA700"},{"text":"!","bold":false}]

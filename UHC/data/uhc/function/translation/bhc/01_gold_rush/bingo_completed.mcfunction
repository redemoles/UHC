
#> uhc:translation/bhc/01_gold_rush/bingo_completed
#
# @within			bhc:scenario/01/advancement/new_adv_1
#
#
# @description		Annonce dans le chat de la réalisation d'un Bingo
#

## FRA - Français / French
# Bingo Classique
$execute if score #stepa_enabled bhc.data matches $(step) if score #total_first_completion bhc.data matches 1 run tellraw @a[scores={uhc.player.lang=061801}] [{"selector":"@s","bold":true,hover_event:{"action":"show_text","value":""}},{"text":" vient de compléter le ","bold":false},{"text":"Bingo Classique","color":"#FFDF00"},{"text":" !","bold":false}]
$execute if score #stepa_enabled bhc.data matches $(step) unless score #total_first_completion bhc.data matches 1 run tellraw @a[scores={uhc.player.lang=061801}] [{"selector":"@s","bold":true,hover_event:{"action":"show_text","value":""}},{"text":" vient de compléter le ","bold":false},{"text":"Bingo Classique","color":"#BFA700"},{"text":" !","bold":false}]
# Ruée Vers l'Or
$execute if score #stepb_enabled bhc.data matches $(step) if score #total_first_completion bhc.data matches 1 run tellraw @a[scores={uhc.player.lang=061801}] [{"selector":"@s","bold":true,hover_event:{"action":"show_text","value":""}},{"text":" vient de compléter la ","bold":false},{"text":"Ruée Vers l'Or","color":"#FFDF00"},{"text":" !","bold":false}]
$execute if score #stepb_enabled bhc.data matches $(step) unless score #total_first_completion bhc.data matches 1 run tellraw @a[scores={uhc.player.lang=061801}] [{"selector":"@s","bold":true,hover_event:{"action":"show_text","value":""}},{"text":" vient de compléter la ","bold":false},{"text":"Ruée Vers l'Or","color":"#BFA700"},{"text":" !","bold":false}]

## ENG - English
# Classic Bingo
$execute if score #stepa_enabled bhc.data matches $(step) if score #total_first_completion bhc.data matches 1 run tellraw @a[scores={uhc.player.lang=051407}] [{"selector":"@s","bold":true,hover_event:{"action":"show_text","value":""}},{"text":" just complete the ","bold":false},{"text":"Classic Bingo","color":"#FFDF00"},{"text":"!","bold":false}]
$execute if score #stepa_enabled bhc.data matches $(step) unless score #total_first_completion bhc.data matches 1 run tellraw @a[scores={uhc.player.lang=051407}] [{"selector":"@s","bold":true,hover_event:{"action":"show_text","value":""}},{"text":" just complete the ","bold":false},{"text":"Classic Bingo","color":"#BFA700"},{"text":"!","bold":false}]
# Gold Rush
$execute if score #stepb_enabled bhc.data matches $(step) if score #total_first_completion bhc.data matches 1 run tellraw @a[scores={uhc.player.lang=051407}] [{"selector":"@s","bold":true,hover_event:{"action":"show_text","value":""}},{"text":" just complete the ","bold":false},{"text":"Gold Rush","color":"#FFDF00"},{"text":"!","bold":false}]
$execute if score #stepb_enabled bhc.data matches $(step) unless score #total_first_completion bhc.data matches 1 run tellraw @a[scores={uhc.player.lang=051407}] [{"selector":"@s","bold":true,hover_event:{"action":"show_text","value":""}},{"text":" just complete the ","bold":false},{"text":"Gold Rush","color":"#BFA700"},{"text":"!","bold":false}]

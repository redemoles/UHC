
#> bhc:scenario/92/advancement/message_line
#
# @within			bhc:scenario/92/advancement/new_adv
#
#
# @description		Annonce dans le chat de la réalisation d'un Bingo
#

## Bingo Classique A
# Msg FRA
$execute if score #stepa_enabled bhc.data matches $(step) if score #total_first_completion bhc.data matches 1 run tellraw @a[scores={uhc.player.lang=061801}] [{"selector":"@s","bold":true,hover_event:{"action":"show_text","value":""}},{"text":" vient de compléter le ","bold":false},{"text":"Bingo Classique A","color":"#FFDF00"},{"text":" !","bold":false}]
$execute if score #stepa_enabled bhc.data matches $(step) unless score #total_first_completion bhc.data matches 1 run tellraw @a[scores={uhc.player.lang=061801}] [{"selector":"@s","bold":true,hover_event:{"action":"show_text","value":""}},{"text":" vient de compléter le ","bold":false},{"text":"Bingo Classique A","color":"#BFA700"},{"text":" !","bold":false}]

# Msg ENG
$execute if score #stepa_enabled bhc.data matches $(step) if score #total_first_completion bhc.data matches 1 run tellraw @a[scores={uhc.player.lang=051407}] [{"selector":"@s","bold":true,hover_event:{"action":"show_text","value":""}},{"text":" just complete the ","bold":false},{"text":"Classic Bingo A","color":"#FFDF00"},{"text":"!","bold":false}]
$execute if score #stepa_enabled bhc.data matches $(step) unless score #total_first_completion bhc.data matches 1 run tellraw @a[scores={uhc.player.lang=051407}] [{"selector":"@s","bold":true,hover_event:{"action":"show_text","value":""}},{"text":" just complete the ","bold":false},{"text":"Classic Bingo A","color":"#BFA700"},{"text":"!","bold":false}]

## Bingo Classique B
# Msg FRA
$execute if score #stepb_enabled bhc.data matches $(step) if score #total_first_completion bhc.data matches 1 run tellraw @a[scores={uhc.player.lang=061801}] [{"selector":"@s","bold":true,hover_event:{"action":"show_text","value":""}},{"text":" vient de compléter le ","bold":false},{"text":"Bingo Classique B","color":"#FFDF00"},{"text":" !","bold":false}]
$execute if score #stepb_enabled bhc.data matches $(step) unless score #total_first_completion bhc.data matches 1 run tellraw @a[scores={uhc.player.lang=061801}] [{"selector":"@s","bold":true,hover_event:{"action":"show_text","value":""}},{"text":" vient de compléter le ","bold":false},{"text":"Bingo Classique B","color":"#BFA700"},{"text":" !","bold":false}]

# Msg ENG
$execute if score #stepb_enabled bhc.data matches $(step) if score #total_first_completion bhc.data matches 1 run tellraw @a[scores={uhc.player.lang=051407}] [{"selector":"@s","bold":true,hover_event:{"action":"show_text","value":""}},{"text":" just complete the ","bold":false},{"text":"Classic Bingo B","color":"#FFDF00"},{"text":"!","bold":false}]
$execute if score #stepb_enabled bhc.data matches $(step) unless score #total_first_completion bhc.data matches 1 run tellraw @a[scores={uhc.player.lang=051407}] [{"selector":"@s","bold":true,hover_event:{"action":"show_text","value":""}},{"text":" just complete the ","bold":false},{"text":"Classic Bingo B","color":"#BFA700"},{"text":"!","bold":false}]

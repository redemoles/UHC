
#> uhc:pre_game/menu/load/settings/misc/menu
#
# @within			uhc:pre_game/menu/selected/
#
#
# @description		Menu
#

# Rivières solides
function uhc:translation/menu/load/settings/misc_river_solid

# Affichage des points de vie
function uhc:translation/menu/load/settings/misc_health_display
execute if score @s uhc.menu.settings.misc matches 21..30 run function uhc:pre_game/menu/load/settings/misc/health_display

# Interaction d'équipe
function uhc:translation/menu/load/settings/misc_team_stuff_main
execute if score @s uhc.menu.settings.misc matches 11..20 run function uhc:pre_game/menu/load/settings/misc/team_stuff

# Démarrage dans le ciel
function uhc:translation/menu/load/settings/misc_start_in_the_sky

# Retour en arrière
execute if score @s uhc.menu.settings.misc matches 11.. run function uhc:translation/menu/load/settings/misc_menu

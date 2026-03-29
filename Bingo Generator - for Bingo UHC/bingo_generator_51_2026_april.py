
## Python script that generates a random bingo with advancements
import datetime
import json
import random
import zipfile
import os
import copy

# Stop program if not executed from the root folder
if not os.path.exists("bingo_generator_51_2026_april.py"):
	print("Please execute this program from its folder.")
	exit()

# Define configuration
bingo_size = {"lines": 5, "columns": 5}
bingo_namespace = "bingo_51a"
bingo_name = "A euqissalC ogniB"
step_number = "1"
advancements_folder = "items_all"
configuration_objective = "bhc.data"
max_square_objective = "bhc.stepa.case"
icon_item = "minecraft:paper"
title_color = "#B73FFF"
description = ""
description_color = "green"
background = "minecraft:block/purple_concrete_powder"

# Create the root advancement
root_advancement = dict(json.loads(f"""
{{
	"display": {{
		"icon": {{
			"id": "{icon_item}"
		}},
		"title": {{
			"text": "{bingo_name}",
			"color": "{title_color}",
			"bold": true
		}},
		"description": {{
			"text": "{description}",
			"color": "{description_color}"
		}},
		"background": "{background}",
		"frame": "task",
		"show_toast": false,
		"announce_to_chat": false
	}},
	"criteria": {{
		"requirement": {{
			"trigger": "minecraft:tick",
			"conditions": {{
				"player": [
					{{
						"condition": "minecraft:value_check",
						"value": {{
							"type": "minecraft:score",
							"target": {{
								"type": "minecraft:fixed",
								"name": "#{bingo_namespace}_enabled"
							}},
							"score": "{configuration_objective}"
						}},
						"range": {{
							"min": 1
						}}
					}}
				]
			}}
		}}
	}},
	"requirements": [
		[
			"requirement"
		]
	]
}}
"""))
last_line_advancement = dict(root_advancement)
last_line_advancement.pop("display")

# Get a list of all advancements paths
advancements_paths = []
for root, dirs, files in os.walk(advancements_folder):
	for file in files:
		advancements_paths.append(os.path.join(root, file))

# Function that returns a random advancement from the folder "advancements"
def get_random_advancement() -> dict:

	# Get a random advancement from the folder "advancements"
	i = random.randint(0, len(advancements_paths) - 1)
	advancement_path = advancements_paths[i]
	advancements_paths.pop(i)

	# Interpret the advancement file as a dict
	with open(advancement_path, "r") as advancement_file:
		advancement = dict(json.load(advancement_file))
		return advancement
	
# Create the data pack
with zipfile.ZipFile(f"{bingo_namespace}.zip", "w") as zip_file:

	# Store original advancements and create visual versions
	original_advancements = {}
	for line in range(1, bingo_size["lines"] + 1):
		for column in range(1, bingo_size["columns"] + 1):
			# Get a random advancement from the folder
			original_advancement = get_random_advancement()
			original_advancements[(line, column)] = original_advancement

			# Create visual advancement from the original
			advancement_visual = copy.deepcopy(original_advancement)

			# Add the parent advancement
			if column > 1:
				advancement_visual["parent"] = f"{bingo_namespace}:{line}_{column - 1}"
			else:
				advancement_visual["parent"] = f"{bingo_namespace}:root"

			# Modify the criteria to make it impossible (fake advancement)
			advancement_visual["criteria"]["requirement"]["trigger"] = "minecraft:impossible"
			del advancement_visual["criteria"]["requirement"]["conditions"]

			# Fix display issues
			if advancement_visual["display"] == None:
				advancement_visual["display"] = dict()
			advancement_visual["display"]["frame"] = "task"
			advancement_visual["display"]["show_toast"] = False
			advancement_visual["display"]["announce_to_chat"] = False
			advancement_visual["display"]["hidden"] = False

			# Write visual advancement
			zip_file.writestr(f"data/{bingo_namespace}/advancement/{line}_{column}.json", json.dumps(advancement_visual, indent = "\t"))

		# Write a last advancement for the line with no display
		last_line_advancement["parent"] = f"{bingo_namespace}:{line}_{bingo_size['columns']}"
		zip_file.writestr(f"data/{bingo_namespace}/advancement/last_line_{line}.json", json.dumps(last_line_advancement, indent = "\t"))

	# Generate hidden advancements from original advancements (no parent, no display, original criteria)
	for line in range(1, bingo_size["lines"] + 1):
		for column in range(1, bingo_size["columns"] + 1):
			column_inverted = bingo_size["columns"] - column + 1

			# Copy the original advancement for the hidden version
			advancement_hidden = copy.deepcopy(original_advancements[(line, column)])

			# Remove parent and display from hidden advancement
			if "parent" in advancement_hidden:
				del advancement_hidden["parent"]
			if "display" in advancement_hidden:
				del advancement_hidden["display"]

			# Prepare the reward function
			advancement_hidden["rewards"] = dict()
			advancement_hidden["rewards"]["function"] = f"{bingo_namespace}_hidden:{line}_{column_inverted}"

			zip_file.writestr(f"data/{bingo_namespace}_hidden/advancement/{line}_{column_inverted}.json", json.dumps(advancement_hidden, indent = "\t"))

	# Write reward functions
	for line in range(1, bingo_size["lines"] + 1):
		for column in range(1, bingo_size["columns"] + 1):
			column_inverted = bingo_size["columns"] - column + 1
			advancement = original_advancements[(line, column)]

			# Write the reward function
			zip_file.writestr(f"data/{bingo_namespace}_hidden/function/{line}_{column}.mcfunction", f"""
execute if score #{bingo_namespace}_enabled {configuration_objective} matches 1 run data modify storage {bingo_namespace} {line}_{column} set value {{title:"{advancement["display"]["title"]["text"]}", description:"{advancement["display"]["description"]["text"]}", namespace:"{bingo_namespace}", step:"{step_number}", line:"{line}", column:"{column}"}}
execute if score #{bingo_namespace}_enabled {configuration_objective} matches 1 run function #bhc:advancements with storage {bingo_namespace} {line}_{column}
execute unless score #{bingo_namespace}_enabled {configuration_objective} matches 1 run advancement revoke @s only {bingo_namespace}_hidden:{line}_{column_inverted}
execute unless score #game_progress uhc.game_progress matches 1 run advancement revoke @s only {bingo_namespace}_hidden:{line}_{column_inverted}
""")
			
	# Write the root advancement
	zip_file.writestr(f"data/{bingo_namespace}/advancement/root.json", json.dumps(root_advancement, indent = "\t"))

	# Register the number of lines and columns
	zip_file.writestr(f"data/{bingo_namespace}/function/load.mcfunction", f"""
scoreboard players set #line {configuration_objective} {line}
scoreboard players set #column {configuration_objective} {column}
scoreboard players set #line-1 {configuration_objective} {line}
scoreboard players set #column-1 {configuration_objective} {column}
scoreboard players remove #line-1 {configuration_objective} 1
scoreboard players remove #column-1 {configuration_objective} 1
scoreboard players set #max {max_square_objective} {line}
scoreboard players operation #max {max_square_objective} *= #0{column} uhc.data.numbers
""")

	# Write the pack.mcmeta file
	zip_file.writestr("pack.mcmeta", f"""{{
	"pack": {{
		"min_format": [94, 1],
		"max_format": [94, 1],
		"description": "Generated Bingo on {datetime.date.today().strftime("%Y/%m/%d")}"
	}}
}}""")


## Python script that generates a random bingo with advancements
import datetime
import json
import random
import zipfile
import os

# Stop program if not executed from the root folder
if not os.path.exists("bingo_generator_51_2026_april.py"):
	print("Please execute this program from its folder.")
	exit()

# Define configuration
bingo_size = {"lines": 5, "columns": 5}
bingo_namespace = "bingo_51b"
bingo_name = "Bingo Classique B"
step_number = "2"
advancements_folder = "items_all_51"
configuration_objective = "bhc.data"
max_square_objective = "bhc.stepb.case"
icon_item = "minecraft:paper"
title_color = "#B73FFF"
description = ""
description_color = "green"
background = "minecraft:block/purple_concrete_powder"

# Create the root advancement
root_advancement = dict(json.loads(f"""
{{
	"display": {{
		"icon": {{
			"id": "{icon_item}"
		}},
		"title": {{
			"text": "{bingo_name}",
			"color": "{title_color}",
			"bold": true
		}},
		"description": {{
			"text": "{description}",
			"color": "{description_color}"
		}},
		"background": "{background}",
		"frame": "task",
		"show_toast": false,
		"announce_to_chat": false
	}},
	"criteria": {{
		"requirement": {{
			"trigger": "minecraft:tick",
			"conditions": {{
				"player": [
					{{
						"condition": "minecraft:value_check",
						"value": {{
							"type": "minecraft:score",
							"target": {{
								"type": "minecraft:fixed",
								"name": "#{bingo_namespace}_enabled"
							}},
							"score": "{configuration_objective}"
						}},
						"range": {{
							"min": 1
						}}
					}}
				]
			}}
		}}
	}},
	"requirements": [
		[
			"requirement"
		]
	]
}}
"""))
last_line_advancement = dict(root_advancement)
last_line_advancement.pop("display")

# Get a list of all advancements paths
advancements_paths = []
for root, dirs, files in os.walk(advancements_folder):
	for file in files:
		advancements_paths.append(os.path.join(root, file))

# Function that returns a random advancement from the folder "advancements"
def get_random_advancement(line: int, column: int) -> dict:

	# Get a random advancement from the folder "advancements"
	i = random.randint(0, len(advancements_paths) - 1)
	advancement_path = advancements_paths[i]
	advancements_paths.pop(i)

	# Interpret the advancement file as a dict
	with open(advancement_path, "r") as advancement_file:
		advancement = dict(json.load(advancement_file))

		# Prepare the reward function
		advancement["rewards"] = dict()
		advancement["rewards"]["function"] = f"{bingo_namespace}:{line}_{column}"

		# Add the parent advancement
		if column > 1:
			advancement["parent"] = f"{bingo_namespace}:{line}_{column - 1}"
		else:
			advancement["parent"] = f"{bingo_namespace}:root"

		# Fix some display issues
		if advancement["display"] == None:
			advancement["display"] = dict()
		advancement["display"]["frame"] = "task"
		advancement["display"]["show_toast"] = False
		advancement["display"]["announce_to_chat"] = False
		advancement["display"]["hidden"] = False

		# Return the advancement
		return advancement

# Create the data pack
with zipfile.ZipFile(f"{bingo_namespace}.zip", "w") as zip_file:

	# For each line, for each column,
	for line in range(1, bingo_size["lines"] + 1):
		for column in range(1, bingo_size["columns"] + 1):

			# Get a random advancement from the folder "advancements" and write it to the data pack
			advancement = get_random_advancement(line, column)
			zip_file.writestr(f"data/{bingo_namespace}/advancement/{line}_{column}.json", json.dumps(advancement, indent = "\t"))

			# Write the reward function
			zip_file.writestr(f"data/{bingo_namespace}/function/{line}_{column}.mcfunction", f"""
execute if score #{bingo_namespace}_enabled {configuration_objective} matches 1 run data modify storage {bingo_namespace} {line}_{column} set value {{title:"{advancement["display"]["title"]["text"]}", description:"{advancement["display"]["description"]["text"]}", namespace:"{bingo_namespace}", step:"{step_number}", line:"{line}", column:"{column}"}}
execute if score #{bingo_namespace}_enabled {configuration_objective} matches 1 run function #bhc:advancements with storage {bingo_namespace} {line}_{column}
execute unless score #{bingo_namespace}_enabled {configuration_objective} matches 1 run advancement revoke @s only {bingo_namespace}:{line}_{column}
execute unless score #game_progress uhc.game_progress matches 1 run advancement revoke @s only {bingo_namespace}:{line}_{column}
""")
		# Write a last advancement for the line with no display
		last_line_advancement["parent"] = f"{bingo_namespace}:{line}_{bingo_size['columns']}"
		zip_file.writestr(f"data/{bingo_namespace}/advancement/last_line_{line}.json", json.dumps(last_line_advancement, indent = "\t"))
			
	# Write the root advancement
	zip_file.writestr(f"data/{bingo_namespace}/advancement/root.json", json.dumps(root_advancement, indent = "\t"))

	# Register the number of lines and columns
	zip_file.writestr(f"data/{bingo_namespace}/function/load.mcfunction", f"""
scoreboard players set #line {configuration_objective} {line}
scoreboard players set #column {configuration_objective} {column}
scoreboard players set #line-1 {configuration_objective} {line}
scoreboard players set #column-1 {configuration_objective} {column}
scoreboard players remove #line-1 {configuration_objective} 1
scoreboard players remove #column-1 {configuration_objective} 1
scoreboard players set #max {max_square_objective} {line}
scoreboard players operation #max {max_square_objective} *= #0{column} uhc.data.numbers
""")
	
	# Write the pack.mcmeta file
	zip_file.writestr("pack.mcmeta", f"""{{
	"pack": {{
		"min_format": [94, 1],
		"max_format": [94, 1],
		"description": "Generated Bingo on {datetime.date.today().strftime("%Y/%m/%d")}"
	}}
}}""")


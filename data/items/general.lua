return {

	['badge_deputy'] = {
		type = 'Generic',
		label = 'Deputy Badge',
		weight = 220,
		description = 'If you are not a police officer or official, return it to the nearest department.',
		client = {
			usetime = 2500
		},
		consume = 0
	},
	['badge_officer'] = {
		type = 'Generic',
		label = 'Officer Badge',
		weight = 220,
		description = 'If you are not a police officer or official, return it to the nearest department.',
		client = {
			usetime = 2500
		},
		consume = 0,
	},
	['badge_pinkerton'] = {
		type = 'Generic',
		label = 'Pinkerton Badge',
		weight = 220,
		description = 'If you are not a police officer or official, return it to the nearest department.',
		client = {
			usetime = 2500
		},
		consume = 0
	},
	['badge_sheriff'] = {
		type = 'Generic',
		label = 'Sheriff Badge',
		weight = 220,
		description = 'If you are not a police officer or official, return it to the nearest department.',
		client = {
			usetime = 2500
		},
		consume = 0
	},
	['badge_marshal'] = {
		type = 'Generic',
		label = 'Marshal Badge',
		weight = 220,
		description = 'If you are not a police officer or official, return it to the nearest department.',
		client = {
			usetime = 2500
		},
		consume = 0
	},
	['badge_police'] = {
		type = 'Generic',
		label = 'Police Badge',
		weight = 220,
		description = 'If you are not a police officer or official, return it to the nearest department.',
		client = {
			usetime = 2500
		},
		consume = 0
	},
	['badge_texas_ranger'] = {
		type = 'Generic',
		label = 'Texas Ranger Badge',
		weight = 220,
		description = 'If you are not a police officer or official, return it to the nearest department.',
		client = {
			usetime = 2500
		},
		consume = 0
	},

	['ammo_case'] = {
		type = 'Generic',
		label = 'Ammo Case',
		description = 'Used to store your ammunition.',
		weight = 220,
		stack = false,
		client = {
			usetime = 2500,
			notification = 'Opening the case'
		},
	},

	['aljava'] = {
		type = 'Generic',
		label = 'Quiver',
		weight = 220,
		description = "Used to store arrows",
		consume = 0
	},


	['bucket'] = {
		type = 'Generic',
		label = 'Closed Bucket',
		weight = 220,
		description = "Used to put on a player's head",
		consume = 0
	},


	-- GENERAL ITEMS
	["id_card"] = {
		type = 'Generic',
		label = "Identification Document",
		description = "Official identification card",
		weight = 30,
		consume = 0
	},

	["newspaper"] = {
		type = 'Generic',
		label = "Newspaper",
		description = "Stay up to date with all the city's news.",
		weight = 50,
		-- image = "newspaper"
	},

	["dog_whistle"] = {
		type = 'Generic',
		label = "Dog Whistle",
		description = "Trained dogs recognize the sound and come to you.",
		weight = 50,
		-- image = "apito",
		consume = 0
	},

	["scratch_ticket"] = {
		type = 'Generic',
		label = "Scratch Ticket",
		description = "Get rich or go broke trying",
		weight = 10,
		consume = 0
	},

	["canteen_empty"] = {
		type = 'Generic',
		label = "Empty Canteen",
		description = "Very practical for storing various liquids",
		weight = 300,
		-- image = "cantil",
		consume = 1
	},

	["canteen_full"] = {
		type = 'Generic',
		label = "Full Canteen",
		description = "Very practical for storing various liquids",
		weight = 300,
		-- image = "cantilcheio",
		consume = 1
	},

	["campfire"] = {
		type = 'Generic',
		label = "Campfire",
		description = "A campfire for cooking and warmth",
		weight = 900,
		-- image = "campfiresmall",
		consume = 1
	},

	["notepad"] = {
		type = 'Generic',
		label = "Notepad",
		description = "With this paper you can write notes or a letter.",
		weight = 150,
		-- image = "document_player_journal",
	},

	["bottle_empty"] = {
		type = 'Generic',
		label = "Empty Bottle",
		description = "Simple empty glass bottle",
		weight = 200,
		-- image = "water",
		consume = 1
	},

	["sieve"] = {
		type = 'Generic',
		label = "Sieve",
		description = "A fundamental tool for separating things",
		weight = 1000,
		-- image = "peneira",
		consume = 0
	},

	["buckets"] = {
		type = 'Generic',
		label = "Empty bucket",
		description = "Old bucket with holes",
		weight = 2,
		-- image = "baldes",
		consume = 0
	},

	["brush"] = {
		type = 'Generic',
		label = "Horse Brush",
		description = "Used to clean horses",
		weight = 500,
		-- image = "escova",
		consume = 0
	},

	["ticket"] = {
		type = 'Generic',
		label = "Ticket",
		description = "Used in saloon bathrooms",
		weight = 2,
		-- image = "ticket_generico",
	},

	["flour_sack"] = {
		type = 'Generic',
		label = "Flour Sack",
		description = "Sack full of flour",
		weight = 300,
		-- image = "sacofarinha",
	},

	["barrel"] = {
		type = 'Generic',
		label = "Barrel",
		description = "Barrel for making wort beverages",
		weight = 3500,
		-- image = "barril",
		consume = 0
	},

	["line"] = {
		type = 'Generic',
		label = "Thread",
		description = "Used for sewing",
		weight = 40,
		-- image = "linha",
	},
	["rope"] = {
		type = 'Generic',
		label = "Rope",
		description = "Used for tying",
		weight = 40,
		-- image = "corda",
	},

	-- NEW GENERAL ITEMS
	["bowl"] = {
		type = 'Generic',
		label = "Bowl",
		description = "A perfect bowl for stews",
		weight = 20,
	},

	["sugar_bag"] = {
		type = 'Generic',
		label = "Sugar Bag",
		description = "It's a bag of sugar, heavy and hard to carry",
		weight = 20,
	},

	["sugar_pot"] = {
		type = 'Generic',
		label = "Pot Full of Sugar",
		description = "Pot full of sugar",
		weight = 20,
	},

	["pot"] = {
		type = 'Generic',
		label = "Pot",
		description = "A sturdy pot, good for storing almost anything",
		weight = 20,
	},

	["salt_pot"] = {
		type = 'Generic',
		label = "Pot with Salt",
		description = "Pot with salt, seems imported",
		weight = 20,
	},

	["yeast_pot"] = {
		type = 'Generic',
		label = "Yeast",
		description = "The ideal ingredient for rising dough, bread and cakes",
		weight = 20,
	},

	["flour_pot"] = {
		type = 'Generic',
		label = "Pot Full of Flour",
		description = "Pot full of flour",
		weight = 20,
	},

	["silk"] = {
		type = 'Generic',
		label = "Silk",
		description = "Are you alright?",
		weight = 120,
		consume = 1
	},

	["soap"] = {
		type = 'Generic',
		label = "Soap",
		description = "Used for personal hygiene",
		weight = 50,
		-- image = "sabonete",
	},

	["watering_can"] = {
		type = 'Generic',
		label = "Bucket Full of Water",
		description = "Bucket full of water",
		weight = 1000,
		consume = 0
	},

	["empty_watering_can"] = {
		type = 'Generic',
		label = "Empty Bucket",
		description = "Used to water flowers and plants",
		weight = 500,
		consume = 0
	},

	["pigeon"] = {
		type = 'Generic',
		label = "Carrier Pigeon",
		description = "Used to communicate with other people",
		weight = 500,
		consume = 0
	},

}

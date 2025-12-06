return {
    ["pan"] = {
		type = 'Generic',
		label = "Gold Panning Pan",
		weight = 100,
		description = "Who knows, you might end up finding gold?",
		degrade = 2880, -- two days
	},
    ["photographic_camera"] = {
		type = 'Generic',
		label = "Photographic Camera",
		description = "Allows you to take photos of your surroundings",
		weight = 120,
	},
    ["coffee_percolator"] = {
		type = 'Generic',
		label = "Coffee Percolator",
		description = "Prepare coffee at any campfire",
		weight = 120,
	},
    ["oil_gun"] = {
		type = 'Generic',
		label = "Gun Oil",
		description = "Keeps your gun in good condition.",
		weight = 120,
		degrade = 2880, -- two days
	},
    ["anti_odor_perfume"] = {
		type = 'Generic',
		label = "Anti-Odor Perfume Lotion",
		description = "Used to block human smell and reduce animal detection.",
		weight = 120,
	},
    ["compass"] = {
		type = 'Generic',
		label = "Compass",
		description = "Navigate with precision",
		weight = 120,
		consume = 0,
		degrade = 15000, -- two days
		client = {
			export = 'manager_small_resources.inventoryUsedCompass',

			remove = function(total)
				if total <= 0 then
					TriggerEvent('playerInventoryRemovedAllCompassItem')
				end
			end
		}
	},

    ['handcuffs'] = {
		type = 'Generic',
		label = 'Handcuffs',
		weight = 220,
		description = "Used to handcuff people",
		degrade = 10000, -- 1 Week
		consume = 0,
	},
	['handcuffs_keys'] = {
		type = 'Generic',
		label = 'Handcuff Keys',
		weight = 220,
		description = "Used to unlock handcuffs",
		degrade = 10000,
		consume = 0,
	},
	["pickaxe"] = {
		type = 'Generic',
		label = "Pickaxe",
		description = "Pickaxe normally used to extract ore from rocks",
		weight = 3500,
		degrade = 2880, -- two days
	},

	["shovel"] = {
		type = 'Generic',
		label = "Shovel",
		description = "Normally used for digging holes",
		weight = 3500,
		degrade = 2880, -- two days
	},

    ["axe"] = {
		type = 'Generic',
		label = "Axe",
		description = "Sharp axe ideal for cutting trees",
		weight = 1500,
		degrade = 2880, -- two days
	},
	["lockpickr"] = {
		type = 'Generic',
		label = "Reinforced Lockpick",
		description = "Used to open things, doesn't break easily",
		weight = 40,
		consume = 0,
		degrade = 2880, -- two days
	},
	["lockpick"] = {
		type = 'Generic',
		label = "Lockpick",
		description = "Used to open things",
		weight = 20,
		consume = 0,
		degrade = 2880, -- two days
	},

	-- NEW CRAFTS
	["knife_cordless"] = {
		type = 'Generic',
		label = "Cordless Knife",
		description = "White melee weapon cordless",
		weight = 500,
	},
	["knife_rustic_cordless"] = {
		type = 'Generic',
		label = "Rustic Cordless Knife",
		description = "White melee weapon cordless",
		weight = 500,
	},
	["knife_trader_cordless"] = {
		type = 'Generic',
		label = "Trader's Cordless Knife",
		description = "White melee weapon cordless",
		weight = 500,
	},
	["thrown_knives_cordless"] = {
		type = 'Generic',
		label = "Cordless Throwing Knife",
		description = "White melee weapon cordless",
		weight = 500,
	},
	["thrown_tomahawk_cordless"] = {
		type = 'Generic',
		label = "Cordless Throwing Tomahawk",
		description = "White melee weapon cordless",
		weight = 500,
	},
	["machete_collector_cordless"] = {
		type = 'Generic',
		label = "Collector's Cordless Machete",
		description = "White melee weapon cordless",
		weight = 500,
	},
	["axe_cordless"] = {
		type = 'Generic',
		label = "Cordless Axe",
		description = "White melee weapon cordless",
		weight = 500,
	},
	["pickaxe_cordless"] = {
		type = 'Generic',
		label = "Cordless Pickaxe",
		description = "White melee weapon cordless",
		weight = 500,
	},
	["rake"] = {
		type = 'Generic',
		label = "Rake",
		description = "Manual farming tool used to level the ground",
		weight = 400,
	},
}

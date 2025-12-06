return {
    ['tonic_pirate_rum'] = {
		type = 'Generic',
		label = 'Aged Pirate Rum',
		weight = 150,
		description = "Consuming increases your experience",
	},
    ['cocaine_gum'] = {
		type = 'Generic',
		label = 'Cocaine Gum',
		weight = 150,
		description = "Fully restore stamina and may leave you slightly stronger.",
	},
    ['chewing_tobacco'] = {
		type = 'Generic',
		label = 'Chewing Tobacco',
		weight = 150,
		description = "Fully restore stamina and may leave you slightly stronger.",
	},
    ['ginseng_elixir'] = {
		type = 'Generic',
		label = 'Ginseng Elixir',
		weight = 150,
		description = "Consuming gives health experience",
	},


    ['tonic_health_care'] = {
		type = 'Generic',
		label = 'Health Tonic',
		weight = 150,
		description = "Consuming gives health experience",
	},
    ['tonic_miracle_cure'] = {
		type = 'Generic',
		label = 'Miracle Cure Tonic',
		weight = 150,
		description = "Restores health and stamina",
	},
    ['tonic_miracle'] = {
		type = 'Generic',
		label = 'Miracle Tonic',
		weight = 150,
		description = "Fully restores everything and slightly strengthens",
	},
	['tonic_horse_care'] = {
		type = 'Generic',
		label = 'Horse Tonic',
		weight = 150,
		description = "Restore horse health and slightly fortify it",
	},


    ['tonic_potent_cure'] = {
		type = 'Generic',
		label = 'Weak Cure Tonic',
		description = "Fully restore health and moderately fortify it",
		degrade = 900000,
		["weight"] = 500,
		consume = 0,
		server = { export = 'frp_death_state.itemTonic' },
	},
    ['tonic_potent_miracle'] = {
		type = 'Generic',
		label = 'Potent Cure Tonic',
		description = "Fully restore everything and moderately fortify them",
		degrade = 900000,
		["weight"] = 700,
		consume = 0,
		server = { export = 'frp_death_state.itemTonic' },
	},

    ['tonic_horse_reviver'] = {
		type = 'Generic',
		label = 'Horse Reviver',
		weight = 150,
		description = "Revive horse from serious injury and restore health",
		consume = 1,
		client = { export = 'frp_death_state.reviverItem' },
		server = { export = 'frp_death_state.reviverItem' },
	},

    ['tonic_horse_stimulant'] = {
		type = 'Generic',
		label = 'Horse Stimulant',
		weight = 150,
		consume = 1,
		description = "Fully restore horse stamina and slightly strengthen it",
	},
    ['tonic_horse_potent_cure'] = {
		type = 'Generic',
		label = 'Horse Cure Tonic',
		weight = 150,
		consume = 1,
		description = "Fully restore horse health and moderately fortify it",
	},
    ['tonic_horse_potent_stimulant'] = {
		type = 'Generic',
		label = 'Potent Bitter Tonic',
		weight = 150,
		consume = 1,
		description = "Restore stamina and moderately fortify it",
	},

	['reviver_dog'] = {
		type = 'Generic',
		label = 'Dog Reviver',
		weight = 150,
		consume = 1,
		description = "Revives dogs",
	},

	["reviver"] =
	{
		type = 'Generic',
		["label"] = "Reviver",
		["description"] = "Revive seriously injured people",
		["weight"] = 500,
		consume = 1,
		client = { export = 'frp_death_state.reviverItem' },
		server = { export = 'frp_death_state.reviverItem' },
	},

	["medicine"] =
	{
		type = 'Generic',
		["label"] = "Medicine",
		["description"] = "Heals even the most wounded",
		["weight"] = 700,
		degrade = 15000,
		consume = 1,
		client = { export = 'frp_death_state.itemMedicine' },
		server = { export = 'frp_death_state.itemMedicine' },
	},
}

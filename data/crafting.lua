--[[
╔═══════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
║                                                                                                               ║
║                           🔨 OX INVENTORY - CRAFTING SYSTEM 🔨                                               ║
║                                                                                                               ║
╠═══════════════════════════════════════════════════════════════════════════════════════════════════════════════╣
║                                                                                                               ║
║  🛠️ CRAFTING BENCHES 🛠️                                                                                      ║
║                                                                                                               ║
║  Define crafting stations and recipes                                                                         ║
║  Multi-Framework: RSG, VORP, QRCore, RedEM:RP                                                                 ║
║                                                                                                               ║
║  📋 PROPERTIES 📋                                                                                            ║
║    • name         Station ID                                                                                  ║
║    • items        Array of craftable recipes                                                                  ║
║    • points       Location coordinates (array)                                                                ║
║    • zones        Target zones with size/rotation                                                             ║
║    • blip         Map blip settings (optional)                                                                ║
║                                                                                                               ║
║  📋 RECIPE PROPERTIES 📋                                                                                     ║
║    • name         Output item name                                                                            ║
║    • ingredients  Table of required items {item = am ount}                                                    ║
║    • duration     Crafting time in milliseconds                                                               ║
║    • count        Quantity produced (default: 1)                                                              ║
║                                                                                                               ║
╚═══════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
--]]

return {
	{
        name = 'gunsmith_crafting',
		items = {
			{
				name = 'WEAPON_REVOLVER_CATTLEMAN',
				ingredients = {
					iron_bar = 10,
					woodplank = 2
				},
				duration = 5000,
				count = 1,
			},
		},
		points = {
			vec3(-277.17, 779.14, 119.50),
		},
		zones = {
			{
				coords = vec3(-277.17, 779.14, 119.50),
				size = vec3(3.8, 1.05, 0.15),
				distance = 1.5,
				rotation = 315.0,
			},


		},
		groups = {
			["valgunsmith"] = 1,
		},
	},
}

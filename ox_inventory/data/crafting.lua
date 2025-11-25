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
        name = 'debug_crafting',
		items = {
			{
				name = 'lockpick',
				ingredients = {
					scrapmetal = 5,
					WEAPON_HAMMER = 0.05
				},
				duration = 5000,
				count = 2,
			},
		},
		points = {
			vec3(-1147.083008, -2002.662109, 13.180260),
			vec3(-345.374969, -130.687088, 39.009613)
		},
		zones = {
			{
				coords = vec3(-1146.2, -2002.05, 13.2),
				size = vec3(3.8, 1.05, 0.15),
				distance = 1.5,
				rotation = 315.0,
			},
			{
				coords = vec3(-346.1, -130.45, 39.0),
				size = vec3(3.8, 1.05, 0.15),
				distance = 1.5,
				rotation = 70.0,
			},
		},
		blip = { id = 566, colour = 31, scale = 0.8 },
	},
}

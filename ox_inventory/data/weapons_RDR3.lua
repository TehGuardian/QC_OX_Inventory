--[[
╔═══════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
║                                                                                                               ║
║                           🔫 OX INVENTORY - REDM WEAPONS DATABASE 🔫                                         ║
║                                                                                                               ║
╠═══════════════════════════════════════════════════════════════════════════════════════════════════════════════╣
║                                                                                                               ║
║  RedM (RDR3) weapon definitions                                                                              ║
║  Multi-Framework: RSG, VORP, QRCore, RedEM:RP                                                                ║
║                                                                                                               ║
║  📋 WEAPON PROPERTIES 📋                                                                                     ║
║    • label      Display name                                                                                 ║
║    • weight     Weight in grams                                                                              ║
║    • durability Damage per shot (lower = more durable)                                                       ║
║    • ammoname   Compatible ammo type                                                                         ║
║    • throwable  Throwable weapon flag (knives, tomahawks)                                                    ║
║                                                                                                               ║
║  📋 WEAPON CATEGORIES 📋                                                                                     ║
║    • Revolvers   • Pistols    • Rifles    • Shotguns                                                         ║
║    • Bows        • Throwables  • Melee     • Lassos                                                          ║
║                                                                                                               ║
║  📋 AMMO PROPERTIES 📋                                                                                       ║
║    • label      Display name                                                                                 ║
║    • weight     Weight per round in grams                                                                    ║
║                                                                                                               ║
╚═══════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
--]]

return {
    Weapons = {
        -- REVOLVER
        ['WEAPON_REVOLVER_CATTLEMAN'] = {
            label = 'Cattleman Revolver',
            weight = 1200,
            durability = 0.03,
            ammoname = 'ammo_revolver',
        },
        ['WEAPON_REVOLVER_CATTLEMAN_MEXICAN'] = {
            label = 'Cattleman Revolver Mexican',
            weight = 1200,
            durability = 0.03,
            ammoname = 'ammo_revolver',
        },
        ['WEAPON_REVOLVER_DOUBLEACTION_GAMBLER'] = {
            label = 'Double-action Revolver (GAMBLER)',
            weight = 1200,
            durability = 0.03,
            ammoname = 'ammo_revolver',
        },
        ['WEAPON_REVOLVER_DOUBLEACTION'] = {
            label = 'Double Action Revolver',
            weight = 1200,
            durability = 0.03,
            ammoname = 'ammo_revolver',
        },
        ['WEAPON_REVOLVER_SCHOFIELD'] = {
            label = 'Revolver Schofield Smith & Wesson No. 3',
            weight = 1200,
            durability = 0.03,
            ammoname = 'ammo_revolver',
        },
        ['WEAPON_REVOLVER_LEMAT'] = {
            label = 'Revolver LeMat',
            weight = 1200,
            durability = 0.03,
            ammoname = 'ammo_revolver',
        },
        ['WEAPON_REVOLVER_NAVY'] = {
            label = 'Revolver Navy 1851',
            weight = 1200,
            durability = 0.03,
            ammoname = 'ammo_revolver',
        },
        -- PISTOL
        ['WEAPON_PISTOL_VOLCANIC'] = {
            label = 'Volcanic Pistol',
            weight = 1300,
            durability = 0.03,
            ammoname = 'ammo_pistol',
        },        
        ['WEAPON_PISTOL_M1899'] = {
            label = 'FN Browning M1900 Pistol',
            weight = 1100,
            durability = 0.03,
            ammoname = 'ammo_pistol',
        },
        ['WEAPON_PISTOL_MAUSER'] = {
            label = 'Mauser Pistol C96',
            weight = 1100,
            durability = 0.03,
            ammoname = 'ammo_pistol',
        },
        ['WEAPON_PISTOL_SEMIAUTO'] = {
            label = 'Borchardt C-93 pistol',
            weight = 1100,
            durability = 0.03,
            ammoname = 'ammo_pistol',
        },
        -- CARBINE
        ['WEAPON_REPEATER_CARBINE'] = {
            label = 'Spencer Model 1865 Carbine',
            weight = 3000,
            durability = 0.03,
            ammoname = 'ammo_repeater',
        },
        ['WEAPON_REPEATER_WINCHESTER'] = {
            label = 'Winchester Model 1866 Repeater',
            weight = 3000,
            durability = 0.03,
            ammoname = 'ammo_repeater',
        },
        ['WEAPON_REPEATER_HENRY'] = {
            label = 'Litchfield Repeating Model 1860',
            weight = 3000,
            durability = 0.03,
            ammoname = 'ammo_repeater',
        },
        ['WEAPON_REPEATER_EVANS'] = {
            label = 'Evans Repeating Rifle',
            weight = 3000,
            durability = 0.03,
            ammoname = 'ammo_repeater',
        },
        -- RIFLES
        ['WEAPON_RIFLE_VARMINT'] = {
            label = 'Anti-Prague Rifle Model 1890',
            weight = 2000,
            durability = 0.03,
            ammoname = 'ammo_22',
        },
        ['WEAPON_RIFLE_SPRINGFIELD'] = {
            label = 'Rifle Springfield Model 1873',
            weight = 4000,
            durability = 0.15,
            ammoname = 'ammo_rifle',
        },  
        ['WEAPON_RIFLE_BOLTACTION'] = {
            label = 'Model 1892 Bolt Action Rifle',
            weight = 4500,
            durability = 0.3,
            ammoname = 'ammo_rifle',
        }, 
        ['WEAPON_RIFLE_ELEPHANT'] = {
            label = 'Elephant Rifle ',
            weight = 5000,
            durability = 0.2,
            ammoname = 'ammo_rifle',
        }, 

        -- SHOTGUN
        ['WEAPON_SHOTGUN_DOUBLEBARREL'] = {
            label = 'Hammer 1878 Double Action Shotgun',
            weight = 2300,
            durability = 0.03,
            ammoname = 'ammo_shotgun',
        },
        ['WEAPON_SHOTGUN_DOUBLEBARREL_EXOTIC'] = {
            label = 'Decorated Double Action Shotgun 1878',
            weight = 2300,
            durability = 0.03,
            ammoname = 'ammo_shotgun',
        },
        ['WEAPON_SHOTGUN_SAWEDOFF'] = {
            label = 'Espingarda Closed Hamerless 1883',
            weight = 2300,
            durability = 0.03,
            ammoname = 'ammo_shotgun',
        },
        ['WEAPON_SHOTGUN04'] = {
            label = 'Winchester Model 1887 Shotgun',
            weight = 1900,
            durability = 0.03,
            ammoname = 'ammo_shotgun',
        },
        ['WEAPON_SHOTGUN05'] = {
            label = 'Winchester Model 1897 Shotgun',
            weight = 2000,
            durability = 0.03,
            ammoname = 'ammo_shotgun',
        },
        ['WEAPON_SHOTGUN_SEMIAUTO'] = {
            label = 'Espingarda Browning Semi-Automatic',
            weight = 2000,
            durability = 0.03,
            ammoname = 'ammo_shotgun',
        },
        ['WEAPON_SHOTGUN_PUMP'] = {
            label = 'Pump Shotgun',
            weight = 2300,
            durability = 0.03,
            ammoname = 'ammo_shotgun',
        },
        ['WEAPON_SHOTGUN_REPEATING'] = {
            label = 'Repeating Shotgun',
            weight = 2300,
            durability = 0.03,
            ammoname = 'ammo_shotgun',
        },

        -- sniper
        ['WEAPON_SNIPERRIFLE_ROLLINGBLOCK'] = {
            label = 'Rifle Rolling Block Remington M1867',
            weight = 3200,
            durability = 0.03,
            ammoname = 'ammo_rifle',
        },
        ['WEAPON_SNIPERRIFLE_ROLLINGBLOCK_EXOTIC'] = {
            label = 'Rifle Steel Remington M1867',
            weight = 3200,
            durability = 0.03,
            ammoname = 'ammo_rifle',
        },
        ['WEAPON_SNIPERRIFLE_CARCANO'] = {
            label = 'Rifle Carcano 1891 Short',
            weight = 3500,
            durability = 0.03,
            ammoname = 'ammo_rifle',
        },

        -- MELEE 
        ['WEAPON_BOW'] = {
            label = 'Regular Bow',
            weight = 1000,
            durability = 0.03,
            ammoname = 'ammo_arrow',
        }, 
        ['WEAPON_BOW_IMPROVED'] = {
            label = 'Improved Bow',
            weight = 1400,
            durability = 0.03,
            ammoname = 'ammo_arrow',
        }, 
        ['WEAPON_LASSO'] = {
            label = 'Lasso',
            weight = 100,
            durability = 0.03,
        }, 
        ['WEAPON_LASSO_REINFORCED'] = {
            label = 'Reinforced Lasso',
            weight = 200,
            durability = 0.03,
        },
        ['WEAPON_MELEE_KNIFE'] = {
            label = 'Regular Knife',
            weight = 300,
            durability = 0.03,
        },     
        ['WEAPON_MELEE_KNIFE_JAWBONE'] = {
            label = 'Jawbone Knife',
            weight = 300,
            durability = 0.03,
        }, 
        ['WEAPON_MELEE_HAMMER'] = {
            label = 'Hammer',
            weight = 300,
            durability = 0.03,
        }, 
        ['WEAPON_MELEE_CLEAVER'] = {
            label = 'Cleaver',
            weight = 300,
            durability = 0.03,
        }, 
        ['WEAPON_MELEE_KNIFE_MINER'] = {
            label = 'Mining knife',
            weight = 300,
            durability = 0.03,
        }, 
        ['WEAPON_MELEE_KNIFE_VAMPIRE'] = {
            label = 'Vampire knife',
            weight = 300,
            durability = 0.03,
        }, 
        ['WEAPON_MELEE_TORCH'] = {
            label = 'Torch',
            weight = 300,
            durability = 0.03,
        }, 
        ['WEAPON_MELEE_HATCHET'] = {
            label = 'Hatchet',
            weight = 300,
            durability = 0.03,
        }, 
        ['WEAPON_MELEE_MACHETE'] = {
            label = 'Machete',
            weight = 300,
            durability = 0.03,
        }, 
        ['WEAPON_MELEE_LANTERN'] = {
            label = 'Silver Lantern',
            weight = 200,
            durability = 0.03,
            buttons = 
            {
                {
                    label = "Change position",
                    action = function(slot)
                        TriggerEvent('Inventory:Weapon:ReplaceCurrentAttachPoint', slot)
                    end
                }
            }

        }, 
        ['WEAPON_MELEE_DAVY_LANTERN'] = {
            label = 'Golden Latern',
            weight = 200,
            durability = 0.03,
            buttons = 
            {
                {
                    label = "Change position",
                    action = function(slot)
                        TriggerEvent('Inventory:Weapon:ReplaceCurrentAttachPoint', slot)
                    end
                }
            }

        }, 
        ['WEAPON_MELEE_LANTERN_ELECTRIC'] = {
            label = 'Electric lamp',
            weight = 200,
            durability = 0.03,
                        buttons = 
            {
                {
                    label = "Change position",
                    action = function(slot)
                        TriggerEvent('Inventory:Weapon:ReplaceCurrentAttachPoint', slot)
                    end
                }
            }

        },
        ['WEAPON_MELEE_MACHETE_COLLECTOR'] = {
            label = 'Collectors Machete',
            weight = 200,
            durability = 0.03,
        }, 
        ['WEAPON_MELEE_KNIFE_TRADER'] = {
            label = 'Traders Knife',
            weight = 200,
            durability = 0.03,
        }, 
        ['WEAPON_MELEE_KNIFE_HORROR'] = {
            label = 'Horror Knife',
            weight = 200,
            durability = 0.03,
        }, 
        ['WEAPON_MELEE_KNIFE_RUSTIC'] = {
            label = 'Rustic Knife',
            weight = 200,
            durability = 0.03,
        }, 
        ['WEAPON_MELEE_LANTERN_HALLOWEEN'] = {
            label = 'Halloween Lantern',
            weight = 200,
            durability = 0.03,
            buttons = 
            {
                {
                    label = "Change position",
                    action = function(slot)
                        TriggerEvent('Inventory:Weapon:ReplaceCurrentAttachPoint', slot)
                    end
                }
            }
        }, 
        ['WEAPON_MELEE_MACHETE_HORROR'] = {
            label = 'Pirates Machete',
            weight = 200,
            durability = 0.03,
        }, 
        ['WEAPON_MOONSHINEJUG_MP'] = {
            label = 'Gallon of Moonshine',
            weight = 200,
            durability = 0.03,
        },
        
        ['WEAPON_THROWN_DYNAMITE'] = {
            label = 'Dynamite',
            weight = 300,
            durability = 0.03,
			throwable = true,
        }, 
        ['WEAPON_THROWN_MOLOTOV'] = {
            label = 'Molotov',
            weight = 300,
            durability = 0.03,
			throwable = true,
        }, 
        ['WEAPON_THROWN_THROWING_KNIVES'] = {
            label = 'Throwing knives',
            weight = 300,
            durability = 0.03,
			throwable = true,
        }, 
        ['WEAPON_THROWN_TOMAHAWK'] = {
            label = 'Tomahawk',
            weight = 300,
            durability = 0.03,
			throwable = true,
        }, 
        ['WEAPON_THROWN_TOMAHAWK_ANCIENT'] = {
            label = 'Ancient Hatchet (Throwable)',
            weight = 300,
            durability = 0.03,
			throwable = true,
        }, 
        ['WEAPON_THROWN_BOLAS'] = {
            label = 'Throwable Bolas',
            weight = 300,
            durability = 0.03,
			throwable = true,
        },

        ['WEAPON_THROWN_POISONBOTTLE'] = {
            label = 'Poison Bottle (Throwable)',
            weight = 300,
            durability = 0.03,
			throwable = true,
        },     
        ['WEAPON_THROWN_BOLAS_HAWKMOTH'] = {
            label = 'Butterfly Bola (Throwable)',
            weight = 300,
            durability = 0.03,
			throwable = true,
        },     
        ['WEAPON_THROWN_BOLAS_IRONSPIKED'] = {
            label = 'Spine Bola (Throwable)',
            weight = 300,
            durability = 0.03,
			throwable = true,
        },    
        ['WEAPON_THROWN_BOLAS_INTERTWINED'] = {
            label = 'Anchor Bola (Throwable)',
            weight = 300,
            durability = 0.03,
			throwable = true,
        },       
        ['WEAPON_KIT_BINOCULARS_IMPROVED'] = {
            label = 'Improved Binoculars',
            weight = 300,
            durability = 0.03
        },

        ['WEAPON_KIT_BINOCULARS'] = {
            label = 'Binoculars',
            weight = 300,
            durability = 0.03,
        },    
        ['WEAPON_FISHINGROD'] = {
            label = 'Fishing Rod',
            weight = 300,
            durability = 0.03,
        },    
        ['WEAPON_KIT_CAMERA'] = {
            label = 'Camera',
            weight = 300,
            durability = 0.03,
        },    
        ['WEAPON_KIT_CAMERA_ADVANCED'] = {
            label = 'Advanced Camera',
            weight = 300,
            durability = 0.03,
        },    
        ['WEAPON_KIT_METAL_DETECTOR'] = {
            label = 'Metal Detector Kit',
            weight = 300,
            durability = 0.03,
        },    
        ['WEAPON_REVOLVER_NAVY_CROSSOVER'] = {
            label = 'Navy Revolver Crossing',
            weight = 300,
            durability = 0.03,
        }
    },
    Components = {
        ["grip"] = {
            label = "Tactical Flashlight",
            weight = 120,
            stack = false, -- Components are typically not stackable
            close = true, -- Close inventory when used
            description = "Attachable flashlight for weapons",
            component = true, -- Mark as a component
            client = {
                component = {"COMPONENT_PISTOL_VOLCANIC_GRIP", "COMPONENT_AT_AR_FLSH"},
                usetime = 2500,
                image = "flashlight.png", -- Assuming you have an image for it
            }
        },
    },
--[[     Components = {
    
    ["WEAPON_PISTOL_VOLCANIC"] =
    {
        ["grip"] = {
        "COMPONENT_PISTOL_VOLCANIC_GRIP",
        "COMPONENT_PISTOL_VOLCANIC_GRIP_PEARL",
        "COMPONENT_PISTOL_VOLCANIC_GRIP_EBONY",
        "COMPONENT_PISTOL_VOLCANIC_GRIP_IRONWOOD",
        "COMPONENT_PISTOL_VOLCANIC_GRIP_COLLECTOR",
        "COMPONENT_PISTOL_VOLCANIC_GRIP_BURLED",
        },
        ["sight"] = {
        "COMPONENT_PISTOL_VOLCANIC_SIGHT_NARROW",
        "COMPONENT_PISTOL_VOLCANIC_SIGHT_WIDE",
        "COMPONENT_PISTOL_VOLCANIC_SIGHT_COLLECTOR",
        },
        ["barrel"] = { "COMPONENT_PISTOL_VOLCANIC_BARREL_COLLECTOR", "COMPONENT_PISTOL_VOLCANIC_BARREL_LONG", "COMPONENT_PISTOL_VOLCANIC_BARREL_SHORT" },
    },

    ["WEAPON_PISTOL_M1899"]    =
    {
        ["grip"] = { "COMPONENT_PISTOL_M1899_GRIP", "COMPONENT_PISTOL_M1899_GRIP_EBONY", "COMPONENT_PISTOL_M1899_GRIP_IRONWOOD", "COMPONENT_PISTOL_M1899_GRIP_PEARL" },
        ["sight"] = { "COMPONENT_PISTOL_M1899_SIGHT_NARROW", "COMPONENT_PISTOL_M1899_SIGHT_WIDE" },
        ["barrel"] = { "COMPONENT_PISTOL_M1899_BARREL_LONG", "COMPONENT_PISTOL_M1899_BARREL_SHORT" },
        ["clip"] = {
        "COMPONENT_PISTOL_M1899_CLIP",
        },
    },

    ["WEAPON_PISTOL_MAUSER"]   =
    {
        ["grip"] = {
        "COMPONENT_PISTOL_MAUSER_GRIP",
        "COMPONENT_PISTOL_MAUSER_GRIP_PEARL",
        "COMPONENT_PISTOL_MAUSER_GRIP_EBONY",
        "COMPONENT_PISTOL_MAUSER_GRIP_IRONWOOD",
        "COMPONENT_PISTOL_MAUSER_GRIP_BURLED",
        "COMPONENT_PISTOL_MAUSER_GRIP_AZTEC",
        },
        ["sight"] = { "COMPONENT_PISTOL_MAUSER_SIGHT_NARROW", "COMPONENT_PISTOL_MAUSER_SIGHT_WIDE" },
        ["barrel"] = {
        "COMPONENT_PISTOL_MAUSER_BARREL_SHORT",
        "COMPONENT_PISTOL_MAUSER_BARREL_LONG",
        "COMPONENT_PISTOL_MAUSER_BARREL_AZTEC",
        },
        ["clip"] = {
        "COMPONENT_PISTOL_MAUSER_CLIP",
        "COMPONENT_PISTOL_MAUSER_CLIP_EMPTY",
        },
    },

    ["WEAPON_PISTOL_SEMIAUTO"] =
    {
        ["grip"] = {
        "COMPONENT_PISTOL_SEMIAUTO_GRIP",
        "COMPONENT_PISTOL_SEMIAUTO_GRIP_PEARL",
        "COMPONENT_PISTOL_SEMIAUTO_GRIP_IRONWOOD",
        "COMPONENT_PISTOL_SEMIAUTO_GRIP_EBONY",
        "COMPONENT_PISTOL_SEMIAUTO_GRIP_BURLED",
        },
        ["sight"] = { "COMPONENT_PISTOL_SEMIAUTO_SIGHT_NARROW", "COMPONENT_PISTOL_SEMIAUTO_SIGHT_WIDE" },
        ["barrel"] = { "COMPONENT_PISTOL_SEMIAUTO_BARREL_LONG", "COMPONENT_PISTOL_SEMIAUTO_BARREL_SHORT" },
        ["clip"] = {
        "COMPONENT_PISTOL_SEMIAUTO_CLIP",
        },
    },



    ["WEAPON_REPEATER_CARBINE"]             =
    {
        ["grip"] = {
        "COMPONENT_REPEATER_CARBINE_GRIP",
        "COMPONENT_REPEATER_CARBINE_GRIP_IRONWOOD",
        "COMPONENT_REPEATER_CARBINE_GRIP_ENGRAVED",
        "COMPONENT_REPEATER_CARBINE_GRIP_BURLED",
        },
        ["sight"] = {
        "COMPONENT_REPEATER_CARBINE_SIGHT_NARROW",
        "COMPONENT_REPEATER_CARBINE_SIGHT_WIDE",
        },
        ["clip"] = {
        "COMPONENT_REPEATER_CARBINE_CLIP",
        },
        ["tube"] = {
        "COMPONENT_REPEATER_CARBINE_TUBE",
        },
        ["wrap"] = {
        "COMPONENT_REPEATER_CARBINE_WRAP1",
        "COMPONENT_REPEATER_CARBINE_WRAP2",
        "COMPONENT_REPEATER_CARBINE_WRAP3",
        "COMPONENT_REPEATER_CARBINE_WRAP4",
        "COMPONENT_REPEATER_CARBINE_WRAP5",
        "COMPONENT_REPEATER_CARBINE_WRAP6",
        },
    },

    ["WEAPON_REPEATER_EVANS"]               =
    {
        ["grip"] = {
        "COMPONENT_REPEATER_EVANS_GRIP",
        "COMPONENT_REPEATER_EVANS_GRIP_IRONWOOD",
        "COMPONENT_REPEATER_EVANS_GRIP_ENGRAVED",
        "COMPONENT_REPEATER_EVANS_GRIP_BURLED",
        "COMPONENT_REPEATER_EVANS_GRIP_WINTER",
        },
        ["sight"] = { "COMPONENT_REPEATER_EVANS_SIGHT_NARROW", "COMPONENT_REPEATER_EVANS_SIGHT_WIDE" },
        ["wrap"] = {
        "COMPONENT_REPEATER_EVANS_WRAP",
        "COMPONENT_REPEATER_EVANS_WRAP2",
        "COMPONENT_REPEATER_EVANS_WRAP3",
        "COMPONENT_REPEATER_EVANS_WRAP4",
        "COMPONENT_REPEATER_EVANS_WRAP5",
        "COMPONENT_REPEATER_EVANS_WRAP6",
        "COMPONENT_REPEATER_EVANS_WRAP_WINTER",
        },
    },

    ["WEAPON_REPEATER_HENRY"]               =
    {
        ["grip"] = {
        "COMPONENT_REPEATER_HENRY_GRIP",
        "COMPONENT_REPEATER_HENRY_GRIP_IRONWOOD",
        "COMPONENT_REPEATER_HENRY_GRIP_ENGRAVED",
        "COMPONENT_REPEATER_HENRY_GRIP_BURLED",
        },
        ["sight"] = { "COMPONENT_REPEATER_HENRY_SIGHT_NARROW", "COMPONENT_REPEATER_HENRY_SIGHT_WIDE" },
        ["wrap"] = {
        "COMPONENT_REPEATER_HENRY_WRAP1",
        "COMPONENT_REPEATER_HENRY_WRAP2",
        "COMPONENT_REPEATER_HENRY_WRAP3",
        "COMPONENT_REPEATER_HENRY_WRAP4",
        "COMPONENT_REPEATER_HENRY_WRAP5",
        "COMPONENT_REPEATER_HENRY_WRAP6",
        },
    },

    ["WEAPON_REPEATER_PUMPACTION"]          =
    {
        ["sight"] = { "COMPONENT_REPEATER_PUMPACTION_SIGHT_NARROW", "COMPONENT_REPEATER_PUMPACTION_SIGHT_WIDE" },
    },

    ["WEAPON_REPEATER_WINCHESTER"]          =
    {
        ["grip"] = {
        "COMPONENT_REPEATER_WINCHESTER_GRIP",
        "COMPONENT_REPEATER_WINCHESTER_GRIP_IRONWOOD",
        "COMPONENT_REPEATER_WINCHESTER_GRIP_ENGRAVED",
        "COMPONENT_REPEATER_WINCHESTER_GRIP_COLLECTOR",
        "COMPONENT_REPEATER_WINCHESTER_GRIP_BURLED",
        },
        ["sight"] = { "COMPONENT_REPEATER_WINCHESTER_SIGHT_NARROW", "COMPONENT_REPEATER_WINCHESTER_SIGHT_WIDE" },
        ["wrap"] = {
        "COMPONENT_REPEATER_WINCHESTER_WRAP1",
        "COMPONENT_REPEATER_WINCHESTER_WRAP2",
        "COMPONENT_REPEATER_WINCHESTER_WRAP3",
        "COMPONENT_REPEATER_WINCHESTER_WRAP4",
        "COMPONENT_REPEATER_WINCHESTER_WRAP5",
        "COMPONENT_REPEATER_WINCHESTER_WRAP6",
        "COMPONENT_REPEATER_WINCHESTER_WRAP_COLLECTOR",
        },
    },

    ["WEAPON_REVOLVER_CATTLEMAN"]           =
    {
        ["grip"] = {
        "COMPONENT_REVOLVER_CATTLEMAN_GRIP",
        "COMPONENT_REVOLVER_CATTLEMAN_GRIP_PEARL",
        "COMPONENT_REVOLVER_CATTLEMAN_GRIP_EBONY",
        "COMPONENT_REVOLVER_CATTLEMAN_GRIP_IRONWOOD",
        "COMPONENT_REVOLVER_CATTLEMAN_GRIP_GOOD_HONOR",
        "COMPONENT_REVOLVER_CATTLEMAN_GRIP_BURLED",
        "COMPONENT_REVOLVER_CATTLEMAN_GRIP_LEGENDARY",
        },
        ["sight"] = { "COMPONENT_REVOLVER_CATTLEMAN_SIGHT_NARROW", "COMPONENT_REVOLVER_CATTLEMAN_SIGHT_WIDE" },
        ["barrel"] = {
        "COMPONENT_REVOLVER_CATTLEMAN_BARREL_SHORT",
        "COMPONENT_REVOLVER_CATTLEMAN_BARREL_LONG",
        "COMPONENT_REVOLVER_CATTLEMAN_BARREL_LEGENDARY",
        },
    },

    ["WEAPON_REVOLVER_DOUBLEACTION"]        =
    {
        ["grip"] = {
        "COMPONENT_REVOLVER_DOUBLEACTION_GRIP",
        "COMPONENT_REVOLVER_DOUBLEACTION_GRIP_EBONY",
        "COMPONENT_REVOLVER_DOUBLEACTION_GRIP_IRONWOOD",
        "COMPONENT_REVOLVER_DOUBLEACTION_GRIP_PEARL",
        "COMPONENT_REVOLVER_DOUBLEACTION_GRIP_BAD_HONOR",
        "COMPONENT_REVOLVER_DOUBLEACTION_GRIP_BURLED",
        },
        ["sight"] = { "COMPONENT_REVOLVER_DOUBLEACTION_SIGHT_NARROW", "COMPONENT_REVOLVER_DOUBLEACTION_SIGHT_WIDE" },
        ["barrel"] = { "COMPONENT_REVOLVER_DOUBLEACTION_BARREL_LONG", "COMPONENT_REVOLVER_DOUBLEACTION_BARREL_SHORT" },
    },

    ["WEAPON_REVOLVER_DOUBLEACTION_EXOTIC"] = {
        ["grip"] = {
        "COMPONENT_REVOLVER_DOUBLEACTION_GRIP_EXOTIC",
        },
    },

    ["WEAPON_REVOLVER_LEMAT"]               =
    {
        ["grip"] = { "COMPONENT_REVOLVER_LEMAT_GRIP", "COMPONENT_REVOLVER_LEMAT_GRIP_EBONY", "COMPONENT_REVOLVER_LEMAT_GRIP_IRONWOOD", "COMPONENT_REVOLVER_LEMAT_GRIP_PEARL" },
        ["sight"] = { "COMPONENT_REVOLVER_LEMAT_SIGHT_NARROW", "COMPONENT_REVOLVER_LEMAT_SIGHT_WIDE" },
        ["barrel"] = { "COMPONENT_REVOLVER_LEMAT_BARREL_LONG", "COMPONENT_REVOLVER_LEMAT_BARREL_SHORT" },
    },

    ["WEAPON_REVOLVER_NAVY"]                =
    {
        ["grip"] = { "COMPONENT_REVOLVER_NAVY_GRIP_PEARL", "COMPONENT_REVOLVER_NAVY_GRIP_IRONWOOD", "COMPONENT_REVOLVER_NAVY_GRIP_EBONY", "COMPONENT_REVOLVER_NAVY_GRIP_CROSSOVER", "COMPONENT_REVOLVER_NAVY_GRIP" },
        ["sight"] = { "COMPONENT_REVOLVER_NAVY_SIGHT_WIDE", "COMPONENT_REVOLVER_NAVY_SIGHT_CROSSOVER", "COMPONENT_REVOLVER_NAVY_SIGHT_NARROW" },
        ["barrel"] = { "COMPONENT_REVOLVER_NAVY_BARREL_SHORT", "COMPONENT_REVOLVER_NAVY_BARREL_CROSSOVER", "COMPONENT_REVOLVER_NAVY_BARREL_LONG" },
    },

    ["WEAPON_REVOLVER_SCHOFIELD"]           =
    {
        ["grip"] = {
        "COMPONENT_REVOLVER_SCHOFIELD_GRIP",
        "COMPONENT_REVOLVER_SCHOFIELD_GRIP_PEARL",
        "COMPONENT_REVOLVER_SCHOFIELD_GRIP_IRONWOOD",
        "COMPONENT_REVOLVER_SCHOFIELD_GRIP_EBONY",
        "COMPONENT_REVOLVER_SCHOFIELD_GRIP_BOUNTY",
        "COMPONENT_REVOLVER_SCHOFIELD_GRIP_BURLED",
        },
        ["sight"] = { "COMPONENT_REVOLVER_SCHOFIELD_SIGHT_BOUNTY", "COMPONENT_REVOLVER_SCHOFIELD_SIGHT_WIDE", "COMPONENT_REVOLVER_SCHOFIELD_SIGHT_NARROW" },
        ["barrel"] = { "COMPONENT_REVOLVER_SCHOFIELD_BARREL_BOUNTY", "COMPONENT_REVOLVER_SCHOFIELD_BARREL_SHORT", "COMPONENT_REVOLVER_SCHOFIELD_BARREL_LONG" },
    },

    ["WEAPON_RIFLE_BOLTACTION"]             =
    {
        ["grip"] = {
        "COMPONENT_RIFLE_BOLTACTION_GRIP",
        "COMPONENT_RIFLE_BOLTACTION_GRIP_IRONWOOD",
        "COMPONENT_RIFLE_BOLTACTION_GRIP_ENGRAVED",
        "COMPONENT_RIFLE_BOLTACTION_GRIP_BOUNTY",
        "COMPONENT_RIFLE_BOLTACTION_GRIP_BURLED",
        },
        ["sight"] = { "COMPONENT_RIFLE_BOLTACTION_SIGHT_NARROW", "COMPONENT_RIFLE_BOLTACTION_SIGHT_WIDE" },
        ["wrap"] = {
        "COMPONENT_RIFLE_BOLTACTION_WRAP",
        "COMPONENT_RIFLE_BOLTACTION_WRAP2",
        "COMPONENT_RIFLE_BOLTACTION_WRAP3",
        "COMPONENT_RIFLE_BOLTACTION_WRAP4",
        "COMPONENT_RIFLE_BOLTACTION_WRAP5",
        "COMPONENT_RIFLE_BOLTACTION_WRAP6",
        },
    },

    ["WEAPON_RIFLE_ELEPHANT"]               = {
        ["barrel"] = {
        "COMPONENT_RIFLE_ELEPHANT_BARREL_SHORT",
        "COMPONENT_RIFLE_ELEPHANT_BARREL_LONG",
        },
        ["grip"] = {
        "COMPONENT_RIFLE_ELEPHANT_GRIP",
        "COMPONENT_RIFLE_ELEPHANT_GRIP_IRONWOOD",
        "COMPONENT_RIFLE_ELEPHANT_GRIP_ENGRAVED",
        "COMPONENT_RIFLE_ELEPHANT_GRIP_BURLED",
        },
        ["mag"] = {
        "COMPONENT_RIFLE_ELEPHANT_MAG",
        "COMPONENT_RIFLE_ELEPHANT_MAG_IRONWOOD",
        "COMPONENT_RIFLE_ELEPHANT_MAG_ENGRAVED",
        "COMPONENT_RIFLE_ELEPHANT_MAG_BURLED",
        },
        ["sight"] = {
        "COMPONENT_RIFLE_ELEPHANT_SIGHT_NARROW",
        "COMPONENT_RIFLE_ELEPHANT_SIGHT_WIDE",
        },
        ["wrap"] = {
        "COMPONENT_RIFLE_ELEPHANT_WRAP1",
        "COMPONENT_RIFLE_ELEPHANT_WRAP2",
        },
    },

    ["WEAPON_RIFLE_CARCANO"]                =
    {
        ["grip"] = { "COMPONENT_RIFLE_CARCANO_GRIP", "COMPONENT_RIFLE_CARCANO_GRIP_ENGRAVED", "COMPONENT_RIFLE_CARCANO_GRIP_IRONWOOD" },
        ["sight"] = { "COMPONENT_RIFLE_CARCANO_SIGHT_NARROW", "COMPONENT_RIFLE_CARCANO_SIGHT_WIDE" },
        ["wrap"] = { "COMPONENT_RIFLE_CARCANO_WRAP1", "COMPONENT_RIFLE_CARCANO_WRAP2" }
    },

    ["WEAPON_RIFLE_ROLLINGBLOCK"]           =
    {
        ["sight"] = { "COMPONENT_RIFLE_ROLLINGBLOCK_SIGHT_NARROW", "COMPONENT_RIFLE_ROLLINGBLOCK_SIGHT_WIDE" },
        ["wrap"] = { "COMPONENT_RIFLE_ROLLINGBLOCK_WRAP1", "COMPONENT_RIFLE_ROLLINGBLOCK_WRAP2" }
    },

    ["WEAPON_RIFLE_SPRINGFIELD"]            =
    {
        ["grip"] = {
        "COMPONENT_RIFLE_SPRINGFIELD_GRIP",
        "COMPONENT_RIFLE_SPRINGFIELD_GRIP_IRONWOOD",
        "COMPONENT_RIFLE_SPRINGFIELD_GRIP_ENGRAVED",
        "COMPONENT_RIFLE_SPRINGFIELD_GRIP_BURLED",
        },
        ["sight"] = {
        "COMPONENT_RIFLE_SPRINGFIELD_SIGHT_NARROW",
        "COMPONENT_RIFLE_SPRINGFIELD_SIGHT_WIDE",
        },
        ["wrap"] = {
        "COMPONENT_RIFLE_SPRINGFIELD_WRAP1",
        "COMPONENT_RIFLE_SPRINGFIELD_WRAP2",
        "COMPONENT_RIFLE_SPRINGFIELD_WRAP3",
        "COMPONENT_RIFLE_SPRINGFIELD_WRAP4",
        "COMPONENT_RIFLE_SPRINGFIELD_WRAP5",
        "COMPONENT_RIFLE_SPRINGFIELD_WRAP6",
        },
    },

    ["WEAPON_SNIPERRIFLE_CARCANO"]          = {
        ["grip"] = {
        "COMPONENT_RIFLE_CARCANO_GRIP",
        "COMPONENT_RIFLE_CARCANO_GRIP_ENGRAVED",
        "COMPONENT_RIFLE_CARCANO_GRIP_IRONWOOD",
        "COMPONENT_RIFLE_CARCANO_GRIP_BURLED",
        },
        ["sight"] = {
        "COMPONENT_RIFLE_CARCANO_SIGHT_NARROW",
        "COMPONENT_RIFLE_CARCANO_SIGHT_WIDE",
        },
        ["clip"] = {
        "COMPONENT_RIFLE_CARCANO_CLIP",
        "COMPONENT_RIFLE_CARCANO_CLIP_EMPTY",
        },
        ["wrap"] = {
        "COMPONENT_RIFLE_CARCANO_WRAP1",
        "COMPONENT_RIFLE_CARCANO_WRAP2",
        "COMPONENT_RIFLE_CARCANO_WRAP3",
        "COMPONENT_RIFLE_CARCANO_WRAP4",
        "COMPONENT_RIFLE_CARCANO_WRAP5",
        "COMPONENT_RIFLE_CARCANO_WRAP6",
        },
    },

    ["WEAPON_RIFLE_VARMINT"]                =
    {
        ["grip"] = {
        "COMPONENT_RIFLE_VARMINT_GRIP",
        "COMPONENT_RIFLE_VARMINT_GRIP_ENGRAVED",
        "COMPONENT_RIFLE_VARMINT_GRIP_IRONWOOD",
        "COMPONENT_RIFLE_VARMINT_GRIP_NATURALIST",
        "COMPONENT_RIFLE_VARMINT_GRIP_BURLED",
        },
        ["wrap"] = { "COMPONENT_RIFLE_VARMINT_WRAP1", "COMPONENT_RIFLE_VARMINT_WRAP2" },
        ["clip"] = {
        "COMPONENT_RIFLE_VARMINT_CLIP",
        "COMPONENT_RIFLE_VARMINT_CLIP_ENGRAVED",
        "COMPONENT_RIFLE_VARMINT_CLIP_IRONWOOD",
        "COMPONENT_RIFLE_VARMINT_CLIP_NATURALIST",
        "COMPONENT_RIFLE_VARMINT_CLIP_BURLED",
        },
        ["sight"] = {
        "COMPONENT_REPEATER_PUMPACTION_SIGHT_NARROW",
        "COMPONENT_REPEATER_PUMPACTION_SIGHT_WIDE",
        "COMPONENT_RIFLE_VARMINT_SIGHT_NATURALIST",
        },
    },

    ["WEAPON_SHOTGUN_DOUBLEBARREL"]         =
    {
        ["barrel"] = {
        "COMPONENT_SHOTGUN_DOUBLEBARREL_BARREL_SHORT",
        "COMPONENT_SHOTGUN_DOUBLEBARREL_BARREL_LONG",
        "COMPONENT_SHOTGUN_DOUBLEBARREL_BARREL_KRAMPUS",
        },
        ["grip"] = {
        "COMPONENT_SHOTGUN_DOUBLEBARREL_GRIP",
        "COMPONENT_SHOTGUN_DOUBLEBARREL_GRIP_EXOTIC",
        "COMPONENT_SHOTGUN_DOUBLEBARREL_GRIP_IRONWOOD",
        "COMPONENT_SHOTGUN_DOUBLEBARREL_GRIP_ENGRAVED",
        "COMPONENT_SHOTGUN_DOUBLEBARREL_GRIP_KRAMPUS",
        "COMPONENT_SHOTGUN_DOUBLEBARREL_GRIP_BURLED",
        },
        ["sight"] = {
        "COMPONENT_SHOTGUN_DOUBLEBARREL_SIGHT_NARROW",
        "COMPONENT_SHOTGUN_DOUBLEBARREL_SIGHT_WIDE",
        },
        ["wrap"] = {
        "COMPONENT_SHOTGUN_DOUBLEBARREL_WRAP1",
        "COMPONENT_SHOTGUN_DOUBLEBARREL_WRAP2",
        "COMPONENT_SHOTGUN_DOUBLEBARREL_WRAP3",
        "COMPONENT_SHOTGUN_DOUBLEBARREL_WRAP4",
        "COMPONENT_SHOTGUN_DOUBLEBARREL_WRAP5",
        "COMPONENT_SHOTGUN_DOUBLEBARREL_WRAP6",
        },
        ["mag"] = {
        "COMPONENT_SHOTGUN_DOUBLEBARREL_MAG",
        "COMPONENT_SHOTGUN_DOUBLEBARREL_MAG_IRONWOOD",
        "COMPONENT_SHOTGUN_DOUBLEBARREL_MAG_ENGRAVED",
        "COMPONENT_SHOTGUN_DOUBLEBARREL_MAG_EXOTIC",
        "COMPONENT_SHOTGUN_DOUBLEBARREL_MAG_KRAMPUS",
        "COMPONENT_SHOTGUN_DOUBLEBARREL_MAG_BURLED",
        },
    },

    ["WEAPON_SHOTGUN_PUMP"]                 =
    {
        ["barrel"] = {
        "COMPONENT_SHOTGUN_PUMP_BARREL_SHORT",
        "COMPONENT_SHOTGUN_PUMP_BARREL_LONG",
        "COMPONENT_SHOTGUN_PUMP_BARREL_HALLOWEEN",
        },
        ["grip"] = {
        "COMPONENT_SHOTGUN_PUMP_GRIP",
        "COMPONENT_SHOTGUN_PUMP_GRIP_IRONWOOD",
        "COMPONENT_SHOTGUN_PUMP_GRIP_ENGRAVED",
        "COMPONENT_SHOTGUN_PUMP_GRIP_TRADER",
        "COMPONENT_SHOTGUN_PUMP_GRIP_BURLED",
        "COMPONENT_SHOTGUN_PUMP_GRIP_HALLOWEEN",
        },
        ["sight"] = {
        "COMPONENT_SHOTGUN_PUMP_SIGHT_NARROW",
        "COMPONENT_SHOTGUN_PUMP_SIGHT_WIDE",
        },
        ["clip"] = {
        "COMPONENT_SHOTGUN_PUMP_CLIP",
        "COMPONENT_SHOTGUN_PUMP_CLIP_IRONWOOD",
        "COMPONENT_SHOTGUN_PUMP_CLIP_ENGRAVED",
        "COMPONENT_SHOTGUN_PUMP_CLIP_TRADER",
        "COMPONENT_SHOTGUN_PUMP_CLIP_BURLED",
        "COMPONENT_SHOTGUN_PUMP_CLIP_HALLOWEEN",
        },
        ["wrap"] = {
        "COMPONENT_SHOTGUN_PUMP_WRAP1",
        "COMPONENT_SHOTGUN_PUMP_WRAP2",
        "COMPONENT_SHOTGUN_PUMP_WRAP3",
        "COMPONENT_SHOTGUN_PUMP_WRAP4",
        "COMPONENT_SHOTGUN_PUMP_WRAP5",
        "COMPONENT_SHOTGUN_PUMP_WRAP6",
        },
    },

    ["WEAPON_SHOTGUN_REPEATING"]            =
    {
        ["barrel"] = {
        "COMPONENT_SHOTGUN_REPEATING_BARREL_SHORT",
        "COMPONENT_SHOTGUN_REPEATING_BARREL_LONG",
        },
        ["grip"] = {
        "COMPONENT_SHOTGUN_REPEATING01_GRIP",
        "COMPONENT_SHOTGUN_REPEATING01_GRIP_IRONWOOD",
        "COMPONENT_SHOTGUN_REPEATING01_GRIP_ENGRAVED",
        "COMPONENT_SHOTGUN_REPEATING_GRIP_BURLED",
        },
        ["sight"] = {
        "COMPONENT_SHOTGUN_REPEATING_SIGHT_NARROW",
        "COMPONENT_SHOTGUN_REPEATING_SIGHT_WIDE",
        },
        ["wrap"] = {
        "COMPONENT_SHOTGUN_REPEATING01_WRAP1",
        "COMPONENT_SHOTGUN_REPEATING01_WRAP2",
        "COMPONENT_SHOTGUN_REPEATING_WRAP3",
        "COMPONENT_SHOTGUN_REPEATING_WRAP4",
        "COMPONENT_SHOTGUN_REPEATING_WRAP5",
        "COMPONENT_SHOTGUN_REPEATING_WRAP6",
        },
    },


    -- ["WEAPON_SHOTGUN_SAWED"]  =
    -- {
    -- ["sight"] = {"COMPONENT_SHOTGUN_SAWED_SIGHT_MOONSHINER","COMPONENT_SHOTGUN_SAWED_SIGHT_NARROW","COMPONENT_SHOTGUN_SAWED_SIGHT_WIDE"},
    -- },


    ["WEAPON_SHOTGUN_SAWEDOFF"] = {
        ["grip"] = {
        "COMPONENT_SHOTGUN_SAWEDOFF_GRIP",
        "COMPONENT_SHOTGUN_SAWEDOFF_GRIP_IRONWOOD",
        "COMPONENT_SHOTGUN_SAWEDOFF_GRIP_EBONY",
        "COMPONENT_SHOTGUN_SAWEDOFF_GRIP_MOONSHINER",
        "COMPONENT_SHOTGUN_SAWEDOFF_GRIP_BURLED",
        },
        ["sight"] = {
        "COMPONENT_SHOTGUN_SAWED_SIGHT_NARROW",
        "COMPONENT_SHOTGUN_SAWED_SIGHT_WIDE",
        "COMPONENT_SHOTGUN_SAWED_SIGHT_MOONSHINER",
        },
        ["wrap"] = {
        "COMPONENT_SHOTGUN_SAWEDOFF_WRAP1",
        "COMPONENT_SHOTGUN_SAWEDOFF_WRAP2",
        "COMPONENT_SHOTGUN_SAWEDOFF_WRAP3",
        "COMPONENT_SHOTGUN_SAWEDOFF_WRAP4",
        "COMPONENT_SHOTGUN_SAWEDOFF_WRAP5",
        },
        ["stock"] = {
        "COMPONENT_SHOTGUN_SAWEDOFF_STOCK",
        "COMPONENT_SHOTGUN_SAWEDOFF_STOCK_IRONWOOD",
        "COMPONENT_SHOTGUN_SAWEDOFF_STOCK_EBONY",
        "COMPONENT_SHOTGUN_SAWEDOFF_STOCK_MOONSHINER",
        "COMPONENT_SHOTGUN_SAWEDOFF_STOCK_BURLED",
        },
    },


    ["WEAPON_SHOTGUN_SEMIAUTO"]         =
    {
        ["barrel"] = {
        "COMPONENT_SHOTGUN_SEMIAUTO_BARREL_SHORT",
        "COMPONENT_SHOTGUN_SEMIAUTO_BARREL_LONG",
        },
        ["grip"] = {
        "COMPONENT_SHOTGUN_SEMIAUTO_GRIP",
        "COMPONENT_SHOTGUN_SEMIAUTO_GRIP_IRONWOOD",
        "COMPONENT_SHOTGUN_SEMIAUTO_GRIP_ENGRAVED",
        "COMPONENT_SHOTGUN_SEMIAUTO_GRIP_BURLED",
        },
        ["sight"] = {
        "COMPONENT_SHOTGUN_SEMIAUTO_SIGHT_NARROW",
        "COMPONENT_SHOTGUN_SEMIAUTO_SIGHT_WIDE",
        },
        ["wrap"] = {
        "COMPONENT_SHOTGUN_SEMIAUTO_WRAP1",
        "COMPONENT_SHOTGUN_SEMIAUTO_WRAP2",
        "COMPONENT_SHOTGUN_SEMIAUTO_WRAP3",
        "COMPONENT_SHOTGUN_SEMIAUTO_WRAP4",
        "COMPONENT_SHOTGUN_SEMIAUTO_WRAP5",
        "COMPONENT_SHOTGUN_SEMIAUTO_WRAP6",
        },
    },

    ["WEAPON_SNIPERRIFLE_ROLLINGBLOCK"] =
    {
        ["grip"] = {
        "COMPONENT_SNIPERRIFLE_ROLLINGBLOCK_GRIP",
        "COMPONENT_SNIPERRIFLE_ROLLINGBLOCK_GRIP_EXOTIC",
        "COMPONENT_SNIPERRIFLE_ROLLINGBLOCK_GRIP_IRONWOOD",
        "COMPONENT_SNIPERRIFLE_ROLLINGBLOCK_GRIP_ENGRAVED",
        "COMPONENT_SNIPERRIFLE_ROLLINGBLOCK_GRIP_REAPER",
        "COMPONENT_SNIPERRIFLE_ROLLINGBLOCK_GRIP_BURLED",
        },
        ["sight"] = {
        "COMPONENT_RIFLE_ROLLINGBLOCK_SIGHT_NARROW",
        "COMPONENT_RIFLE_ROLLINGBLOCK_SIGHT_WIDE",
        },
        ["wrap"] = {
        "COMPONENT_RIFLE_ROLLINGBLOCK_WRAP1",
        "COMPONENT_RIFLE_ROLLINGBLOCK_WRAP2",
        "COMPONENT_RIFLE_ROLLINGBLOCK_WRAP3",
        "COMPONENT_RIFLE_ROLLINGBLOCK_WRAP4",
        "COMPONENT_RIFLE_ROLLINGBLOCK_WRAP5",
        "COMPONENT_RIFLE_ROLLINGBLOCK_WRAP6",
        },
    },
    ["WEAPON_BOW_IMPROVED"]             = {
        ["grip"] = {
        "COMPONENT_BOW_IMPROVED_GRIP",
        "COMPONENT_BOW_IMPROVED_GRIP_ALLIGATOR",
        "COMPONENT_BOW_IMPROVED_GRIP_HORNED",
        "COMPONENT_BOW_IMPROVED_GRIP_JAGUAR",
        "COMPONENT_BOW_IMPROVED_GRIP_WOODEN_INLAY",
        },
        ["cylinder_tint"] = { -- FRAME WOOD COLOR
        "COMPONENT_BOW_FRAME_TINT_A_1",
        "COMPONENT_BOW_FRAME_TINT_A_2",
        "COMPONENT_BOW_FRAME_TINT_A_3",
        "COMPONENT_BOW_FRAME_TINT_A_4",
        "COMPONENT_BOW_FRAME_TINT_A_5",
        "COMPONENT_BOW_FRAME_TINT_A_6",
        "COMPONENT_BOW_FRAME_TINT_A_7",
        "COMPONENT_BOW_FRAME_TINT_A_8",
        },
        ["barrel_tint"] = { -- GRIP LEATHER COLOR
        "COMPONENT_BOW_GRIPSTOCK_TINT_A_1",
        "COMPONENT_BOW_GRIPSTOCK_TINT_A_2",
        "COMPONENT_BOW_GRIPSTOCK_TINT_A_3",
        "COMPONENT_BOW_GRIPSTOCK_TINT_A_4",
        "COMPONENT_BOW_GRIPSTOCK_TINT_A_5",
        "COMPONENT_BOW_GRIPSTOCK_TINT_A_6",
        "COMPONENT_BOW_GRIPSTOCK_TINT_A_7",
        "COMPONENT_BOW_GRIPSTOCK_TINT_A_8",
        },
        ["trigger_tint"] = { -- STRING COLOR
        "COMPONENT_BOW_TRIGGER_TINT_A_1",
        "COMPONENT_BOW_TRIGGER_TINT_A_2",
        "COMPONENT_BOW_TRIGGER_TINT_A_3",
        "COMPONENT_BOW_TRIGGER_TINT_A_4",
        "COMPONENT_BOW_TRIGGER_TINT_A_5",
        "COMPONENT_BOW_TRIGGER_TINT_A_6",
        "COMPONENT_BOW_TRIGGER_TINT_A_7",
        "COMPONENT_BOW_TRIGGER_TINT_A_8",
        },
        -- ["FRAME_VERTDATA"] = {
        --   "COMPONENT_BOW_ROLE_ENGRAVING_IMPROVED_ALLIGATOR",
        --   "COMPONENT_BOW_ROLE_ENGRAVING_IMPROVED_HORNED",
        --   "COMPONENT_BOW_ROLE_ENGRAVING_IMPROVED_JAGUAR",
        --   "COMPONENT_BOW_ROLE_ENGRAVING_IMPROVED_WOODEN_INLAY",
        -- },
    },

    ["WEAPON_MELEE_KNIFE"]              = {
        ["grip"] = {
        "COMPONENT_MELEE_KNIFE02_GRIP",
        "COMPONENT_MELEE_KNIFE13_GRIP",
        },

    },

    ["WEAPON_FISHINGROD"]               = {
        ["grip"] = {
        "COMPONENT_FISHING_LINE",
        },
    },

    ["WEAPON_KIT_BINOCULARS"]           = {
        ["grip"] = {
        "COMPONENT_BINOCULARS_SCOPE01",
        },
    },

    ["MELEE"]                           =
    {
        ["blade"] = {

        ["engraving"] = { "COMPONENT_MELEE_BLADE_ENGRAVING_1", "COMPONENT_MELEE_BLADE_ENGRAVING_2", "COMPONENT_MELEE_BLADE_ENGRAVING_3" },
        ["engraving_material"] = { "COMPONENT_MELEE_BLADE_ENGRAVING_MATERIAL_1",
            "COMPONENT_MELEE_BLADE_ENGRAVING_MATERIAL_2", "COMPONENT_MELEE_BLADE_ENGRAVING_MATERIAL_3",
            "COMPONENT_MELEE_BLADE_ENGRAVING_MATERIAL_4", "COMPONENT_MELEE_BLADE_ENGRAVING_MATERIAL_5",
            "COMPONENT_MELEE_BLADE_ENGRAVING_MATERIAL_6", "COMPONENT_MELEE_BLADE_ENGRAVING_MATERIAL_7",
            "COMPONENT_MELEE_BLADE_ENGRAVING_MATERIAL_8", "COMPONENT_MELEE_BLADE_ENGRAVING_MATERIAL_9",
            "COMPONENT_MELEE_BLADE_ENGRAVING_MATERIAL_10", "COMPONENT_MELEE_BLADE_ENGRAVING_MATERIAL_11",
            "COMPONENT_MELEE_BLADE_ENGRAVING_MATERIAL_12",
            "COMPONENT_MELEE_BLADE_ENGRAVING_MATERIAL_13",
            "COMPONENT_MELEE_BLADE_ENGRAVING_MATERIAL_14", },
        ["material"] = { "COMPONENT_MELEE_BLADE_MATERIAL_1", "COMPONENT_MELEE_BLADE_MATERIAL_2", "COMPONENT_MELEE_BLADE_MATERIAL_3", "COMPONENT_MELEE_BLADE_MATERIAL_4", "COMPONENT_MELEE_BLADE_MATERIAL_5", "COMPONENT_MELEE_BLADE_MATERIAL_6", "COMPONENT_MELEE_BLADE_MATERIAL_7", "COMPONENT_MELEE_BLADE_MATERIAL_8", "COMPONENT_MELEE_BLADE_MATERIAL_9" },

        },
        ["grip"] = {

        ["tint"] = { "COMPONENT_MELEE_GRIP_TINT_A_1", "COMPONENT_MELEE_GRIP_TINT_A_2", "COMPONENT_MELEE_GRIP_TINT_A_3", "COMPONENT_MELEE_GRIP_TINT_A_4", "COMPONENT_MELEE_GRIP_TINT_A_5", "COMPONENT_MELEE_GRIP_TINT_A_6", "COMPONENT_MELEE_GRIP_TINT_A_7", "COMPONENT_MELEE_GRIP_TINT_A_8", "COMPONENT_MELEE_GRIP_TINT_B_1", "COMPONENT_MELEE_GRIP_TINT_B_2", "COMPONENT_MELEE_GRIP_TINT_B_3", "COMPONENT_MELEE_GRIP_TINT_B_4", "COMPONENT_MELEE_GRIP_TINT_B_5", "COMPONENT_MELEE_GRIP_TINT_B_6", "COMPONENT_MELEE_GRIP_TINT_B_7", "COMPONENT_MELEE_GRIP_TINT_B_8", "COMPONENT_MELEE_GRIP_TINT_GRAY_BIRCH" },
        },
    },



    ["SHORTARM"] =
    {
        ["barrel"] = {
        ["material"] = { "COMPONENT_SHORTARM_BARREL_MATERIAL_1", "COMPONENT_SHORTARM_BARREL_MATERIAL_2", "COMPONENT_SHORTARM_BARREL_MATERIAL_3", "COMPONENT_SHORTARM_BARREL_MATERIAL_4", "COMPONENT_SHORTARM_BARREL_MATERIAL_5", "COMPONENT_SHORTARM_BARREL_MATERIAL_6", "COMPONENT_SHORTARM_BARREL_MATERIAL_7", "COMPONENT_SHORTARM_BARREL_MATERIAL_8", "COMPONENT_SHORTARM_BARREL_MATERIAL_9", "COMPONENT_SHORTARM_BARREL_MATERIAL_10", },
        ["engraving"] = { "COMPONENT_SHORTARM_BARREL_ENGRAVING_1", "COMPONENT_SHORTARM_BARREL_ENGRAVING_2", "COMPONENT_SHORTARM_BARREL_ENGRAVING_3", "COMPONENT_SHORTARM_BARREL_ENGRAVING_4" },
        ["engraving_material"] = { "COMPONENT_SHORTARM_BARREL_ENGRAVING_MATERIAL_1", "COMPONENT_SHORTARM_BARREL_ENGRAVING_MATERIAL_2", "COMPONENT_SHORTARM_BARREL_ENGRAVING_MATERIAL_3", "COMPONENT_SHORTARM_BARREL_ENGRAVING_MATERIAL_4", "COMPONENT_SHORTARM_BARREL_ENGRAVING_MATERIAL_5", "COMPONENT_SHORTARM_BARREL_ENGRAVING_MATERIAL_6", "COMPONENT_SHORTARM_BARREL_ENGRAVING_MATERIAL_7", "COMPONENT_SHORTARM_BARREL_ENGRAVING_MATERIAL_8", "COMPONENT_SHORTARM_BARREL_ENGRAVING_MATERIAL_9", "COMPONENT_SHORTARM_BARREL_ENGRAVING_MATERIAL_10", "COMPONENT_SHORTARM_BARREL_ENGRAVING_MATERIAL_11", "COMPONENT_SHORTARM_BARREL_ENGRAVING_MATERIAL_12", "COMPONENT_SHORTARM_BARREL_ENGRAVING_MATERIAL_13", "COMPONENT_SHORTARM_BARREL_ENGRAVING_MATERIAL_14" },

        },
        ["cylinder"] = {

        ["engraving"] = { "COMPONENT_SHORTARM_CYLINDER_ENGRAVING_1", "COMPONENT_SHORTARM_CYLINDER_ENGRAVING_2", "COMPONENT_SHORTARM_CYLINDER_ENGRAVING_3", "COMPONENT_SHORTARM_CYLINDER_ENGRAVING_4" },
        ["engraving_material"] = {
            "COMPONENT_SHORTARM_CYLINDER_ENGRAVING_MATERIAL_1",
            "COMPONENT_SHORTARM_CYLINDER_ENGRAVING_MATERIAL_2",
            "COMPONENT_SHORTARM_CYLINDER_ENGRAVING_MATERIAL_3",
            "COMPONENT_SHORTARM_CYLINDER_ENGRAVING_MATERIAL_4",
            "COMPONENT_SHORTARM_CYLINDER_ENGRAVING_MATERIAL_5",
            "COMPONENT_SHORTARM_CYLINDER_ENGRAVING_MATERIAL_6",
            "COMPONENT_SHORTARM_CYLINDER_ENGRAVING_MATERIAL_7",
            "COMPONENT_SHORTARM_CYLINDER_ENGRAVING_MATERIAL_8",
            "COMPONENT_SHORTARM_CYLINDER_ENGRAVING_MATERIAL_9",
            "COMPONENT_SHORTARM_CYLINDER_ENGRAVING_MATERIAL_10",
            "COMPONENT_SHORTARM_CYLINDER_ENGRAVING_MATERIAL_11",
            "COMPONENT_SHORTARM_CYLINDER_ENGRAVING_MATERIAL_12",
            "COMPONENT_SHORTARM_CYLINDER_ENGRAVING_MATERIAL_13",
            "COMPONENT_SHORTARM_CYLINDER_ENGRAVING_MATERIAL_14",
        },
        ["material"] = { "COMPONENT_SHORTARM_CYLINDER_MATERIAL_1", "COMPONENT_SHORTARM_CYLINDER_MATERIAL_2", "COMPONENT_SHORTARM_CYLINDER_MATERIAL_3", "COMPONENT_SHORTARM_CYLINDER_MATERIAL_4", "COMPONENT_SHORTARM_CYLINDER_MATERIAL_5", "COMPONENT_SHORTARM_CYLINDER_MATERIAL_6", "COMPONENT_SHORTARM_CYLINDER_MATERIAL_7", "COMPONENT_SHORTARM_CYLINDER_MATERIAL_8", "COMPONENT_SHORTARM_CYLINDER_MATERIAL_9", "COMPONENT_SHORTARM_CYLINDER_MATERIAL_10" },

        },
        ["frame"] = {

        ["engraving"] = { "COMPONENT_SHORTARM_FRAME_ENGRAVING_1", "COMPONENT_SHORTARM_FRAME_ENGRAVING_2", "COMPONENT_SHORTARM_FRAME_ENGRAVING_3", "COMPONENT_SHORTARM_FRAME_ENGRAVING_4" },
        ["engraving_material"] = {
            "COMPONENT_SHORTARM_FRAME_ENGRAVING_MATERIAL_1",
            "COMPONENT_SHORTARM_FRAME_ENGRAVING_MATERIAL_2",
            "COMPONENT_SHORTARM_FRAME_ENGRAVING_MATERIAL_3",
            "COMPONENT_SHORTARM_FRAME_ENGRAVING_MATERIAL_4",
            "COMPONENT_SHORTARM_FRAME_ENGRAVING_MATERIAL_5",
            "COMPONENT_SHORTARM_FRAME_ENGRAVING_MATERIAL_6",
            "COMPONENT_SHORTARM_FRAME_ENGRAVING_MATERIAL_7",
            "COMPONENT_SHORTARM_FRAME_ENGRAVING_MATERIAL_8",
            "COMPONENT_SHORTARM_FRAME_ENGRAVING_MATERIAL_9",
            "COMPONENT_SHORTARM_FRAME_ENGRAVING_MATERIAL_10",
            "COMPONENT_SHORTARM_FRAME_ENGRAVING_MATERIAL_11",
            "COMPONENT_SHORTARM_FRAME_ENGRAVING_MATERIAL_12",
            "COMPONENT_SHORTARM_FRAME_ENGRAVING_MATERIAL_13",
            "COMPONENT_SHORTARM_FRAME_ENGRAVING_MATERIAL_14",
        },
        ["material"] = {
            "COMPONENT_SHORTARM_FRAME_MATERIAL_1",
            "COMPONENT_SHORTARM_FRAME_MATERIAL_2",
            "COMPONENT_SHORTARM_FRAME_MATERIAL_3",
            "COMPONENT_SHORTARM_FRAME_MATERIAL_4",
            "COMPONENT_SHORTARM_FRAME_MATERIAL_5",
            "COMPONENT_SHORTARM_FRAME_MATERIAL_6",
            "COMPONENT_SHORTARM_FRAME_MATERIAL_7",
            "COMPONENT_SHORTARM_FRAME_MATERIAL_8",
            "COMPONENT_SHORTARM_FRAME_MATERIAL_9",
            "COMPONENT_SHORTARM_FRAME_MATERIAL_10",
        },

        },
        ["grip"] = {
        ["material"] = {
            "COMPONENT_SHORTARM_GRIP_MATERIAL_PEARL",
            "COMPONENT_SHORTARM_GRIP_MATERIAL_BURLED",
        },
        ["engraving"] = { "COMPONENT_SHORTARM_GRIPSTOCK_ENGRAVING_1", "COMPONENT_SHORTARM_GRIPSTOCK_ENGRAVING_2", "COMPONENT_SHORTARM_GRIPSTOCK_ENGRAVING_3", "COMPONENT_SHORTARM_GRIPSTOCK_ENGRAVING_4", "COMPONENT_SHORTARM_GRIPSTOCK_ENGRAVING_5", "COMPONENT_SHORTARM_GRIPSTOCK_ENGRAVING_6" },
        ["tint"] = {
            "COMPONENT_SHORTARM_GRIPSTOCK_TINT_A_1",
            "COMPONENT_SHORTARM_GRIPSTOCK_TINT_A_2",
            "COMPONENT_SHORTARM_GRIPSTOCK_TINT_A_3",
            "COMPONENT_SHORTARM_GRIPSTOCK_TINT_A_4",
            "COMPONENT_SHORTARM_GRIPSTOCK_TINT_A_5",
            "COMPONENT_SHORTARM_GRIPSTOCK_TINT_A_6",
            "COMPONENT_SHORTARM_GRIPSTOCK_TINT_A_7",
            "COMPONENT_SHORTARM_GRIPSTOCK_TINT_A_8",
            "COMPONENT_SHORTARM_GRIPSTOCK_TINT_B_1",
            "COMPONENT_SHORTARM_GRIPSTOCK_TINT_B_2",
            "COMPONENT_SHORTARM_GRIPSTOCK_TINT_B_3",
            "COMPONENT_SHORTARM_GRIPSTOCK_TINT_B_4",
            "COMPONENT_SHORTARM_GRIPSTOCK_TINT_B_5",
            "COMPONENT_SHORTARM_GRIPSTOCK_TINT_B_6",
            "COMPONENT_SHORTARM_GRIPSTOCK_TINT_B_7",
            "COMPONENT_SHORTARM_GRIPSTOCK_TINT_B_8",
            "COMPONENT_SHORTARM_GRIPSTOCK_TINT_GUTTAPERCHA",
            "COMPONENT_SHORTARM_GRIPSTOCK_TINT_PEARL",
            "COMPONENT_SHORTARM_GRIPSTOCK_TINT_GRAY_BIRCH",
            "COMPONENT_SHORTARM_GRIPSTOCK_TINT_BURLED",
        },
        },
        ["hammer"] = {

        ["material"] = { "COMPONENT_SHORTARM_HAMMER_MATERIAL_1", "COMPONENT_SHORTARM_HAMMER_MATERIAL_2", "COMPONENT_SHORTARM_HAMMER_MATERIAL_3", "COMPONENT_SHORTARM_HAMMER_MATERIAL_4", "COMPONENT_SHORTARM_HAMMER_MATERIAL_5", "COMPONENT_SHORTARM_HAMMER_MATERIAL_6", "COMPONENT_SHORTARM_HAMMER_MATERIAL_7", "COMPONENT_SHORTARM_HAMMER_MATERIAL_8", "COMPONENT_SHORTARM_HAMMER_MATERIAL_9", "COMPONENT_SHORTARM_HAMMER_MATERIAL_10" },

        },
        ["sight"] = {

        ["material"] = { "COMPONENT_SHORTARM_SIGHT_MATERIAL_1", "COMPONENT_SHORTARM_SIGHT_MATERIAL_2", "COMPONENT_SHORTARM_SIGHT_MATERIAL_3", "COMPONENT_SHORTARM_SIGHT_MATERIAL_4", "COMPONENT_SHORTARM_SIGHT_MATERIAL_5", "COMPONENT_SHORTARM_SIGHT_MATERIAL_6", "COMPONENT_SHORTARM_SIGHT_MATERIAL_7", "COMPONENT_SHORTARM_SIGHT_MATERIAL_8", "COMPONENT_SHORTARM_SIGHT_MATERIAL_9", "COMPONENT_SHORTARM_SIGHT_MATERIAL_10" },

        },
        ["trigger"] = {

        ["material"] = { "COMPONENT_SHORTARM_TRIGGER_MATERIAL_1", "COMPONENT_SHORTARM_TRIGGER_MATERIAL_2", "COMPONENT_SHORTARM_TRIGGER_MATERIAL_3", "COMPONENT_SHORTARM_TRIGGER_MATERIAL_4", "COMPONENT_SHORTARM_TRIGGER_MATERIAL_5", "COMPONENT_SHORTARM_TRIGGER_MATERIAL_6", "COMPONENT_SHORTARM_TRIGGER_MATERIAL_7", "COMPONENT_SHORTARM_TRIGGER_MATERIAL_8", "COMPONENT_SHORTARM_TRIGGER_MATERIAL_9", "COMPONENT_SHORTARM_TRIGGER_MATERIAL_10" },

        },

    },
    ["LONGARM"]  = {
        ["barrel"] = {

        ["engraving"] = { "COMPONENT_LONGARM_BARREL_ENGRAVING_1", "COMPONENT_LONGARM_BARREL_ENGRAVING_2",
            "COMPONENT_LONGARM_BARREL_ENGRAVING_3", "COMPONENT_LONGARM_BARREL_ENGRAVING_4" },
        ["engraving_material"] = { "COMPONENT_LONGARM_BARREL_ENGRAVING_MATERIAL_1",
            "COMPONENT_LONGARM_BARREL_ENGRAVING_MATERIAL_2",
            "COMPONENT_LONGARM_BARREL_ENGRAVING_MATERIAL_3",
            "COMPONENT_LONGARM_BARREL_ENGRAVING_MATERIAL_4",
            "COMPONENT_LONGARM_BARREL_ENGRAVING_MATERIAL_5",
            "COMPONENT_LONGARM_BARREL_ENGRAVING_MATERIAL_6",
            "COMPONENT_LONGARM_BARREL_ENGRAVING_MATERIAL_7",
            "COMPONENT_LONGARM_BARREL_ENGRAVING_MATERIAL_8",
            "COMPONENT_LONGARM_BARREL_ENGRAVING_MATERIAL_9",
            "COMPONENT_LONGARM_BARREL_ENGRAVING_MATERIAL_10",
            "COMPONENT_LONGARM_BARREL_ENGRAVING_MATERIAL_11",
            "COMPONENT_LONGARM_BARREL_ENGRAVING_MATERIAL_12",
            "COMPONENT_LONGARM_BARREL_ENGRAVING_MATERIAL_13",
            "COMPONENT_LONGARM_BARREL_ENGRAVING_MATERIAL_14" },
        ["material"] = { "COMPONENT_LONGARM_BARREL_MATERIAL_1", "COMPONENT_LONGARM_BARREL_MATERIAL_2",
            "COMPONENT_LONGARM_BARREL_MATERIAL_3", "COMPONENT_LONGARM_BARREL_MATERIAL_4",
            "COMPONENT_LONGARM_BARREL_MATERIAL_5", "COMPONENT_LONGARM_BARREL_MATERIAL_6",
            "COMPONENT_LONGARM_BARREL_MATERIAL_7", "COMPONENT_LONGARM_BARREL_MATERIAL_8",
            "COMPONENT_LONGARM_BARREL_MATERIAL_9", "COMPONENT_LONGARM_BARREL_MATERIAL_10" }
        },
        ["cylinder"] = {

        ["engraving"] = { "COMPONENT_LONGARM_CYLINDER_ENGRAVING_1", "COMPONENT_LONGARM_CYLINDER_ENGRAVING_2",
            "COMPONENT_LONGARM_CYLINDER_ENGRAVING_3", "COMPONENT_LONGARM_CYLINDER_ENGRAVING_4" },
        ["engraving_material"] = { "COMPONENT_LONGARM_CYLINDER_ENGRAVING_MATERIAL_1",
            "COMPONENT_LONGARM_CYLINDER_ENGRAVING_MATERIAL_2",
            "COMPONENT_LONGARM_CYLINDER_ENGRAVING_MATERIAL_3",
            "COMPONENT_LONGARM_CYLINDER_ENGRAVING_MATERIAL_4",
            "COMPONENT_LONGARM_CYLINDER_ENGRAVING_MATERIAL_5",
            "COMPONENT_LONGARM_CYLINDER_ENGRAVING_MATERIAL_6",
            "COMPONENT_LONGARM_CYLINDER_ENGRAVING_MATERIAL_7",
            "COMPONENT_LONGARM_CYLINDER_ENGRAVING_MATERIAL_8",
            "COMPONENT_LONGARM_CYLINDER_ENGRAVING_MATERIAL_9",
            "COMPONENT_LONGARM_CYLINDER_ENGRAVING_MATERIAL_10",
            "COMPONENT_LONGARM_CYLINDER_ENGRAVING_MATERIAL_11",
            "COMPONENT_LONGARM_CYLINDER_ENGRAVING_MATERIAL_12",
            "COMPONENT_LONGARM_CYLINDER_ENGRAVING_MATERIAL_13",
            "COMPONENT_LONGARM_CYLINDER_ENGRAVING_MATERIAL_14" },
        ["material"] = { "COMPONENT_LONGARM_CYLINDER_MATERIAL_1", "COMPONENT_LONGARM_CYLINDER_MATERIAL_2",
            "COMPONENT_LONGARM_CYLINDER_MATERIAL_3", "COMPONENT_LONGARM_CYLINDER_MATERIAL_4",
            "COMPONENT_LONGARM_CYLINDER_MATERIAL_5", "COMPONENT_LONGARM_CYLINDER_MATERIAL_6",
            "COMPONENT_LONGARM_CYLINDER_MATERIAL_7", "COMPONENT_LONGARM_CYLINDER_MATERIAL_8",
            "COMPONENT_LONGARM_CYLINDER_MATERIAL_9", "COMPONENT_LONGARM_CYLINDER_MATERIAL_10" }

        },
        ["frame"] = {

        ["engraving"] = { "COMPONENT_LONGARM_FRAME_ENGRAVING_1", "COMPONENT_LONGARM_FRAME_ENGRAVING_2",
            "COMPONENT_LONGARM_FRAME_ENGRAVING_3", "COMPONENT_LONGARM_FRAME_ENGRAVING_4" },
        ["engraving_material"] = { "COMPONENT_LONGARM_FRAME_ENGRAVING_MATERIAL_1",
            "COMPONENT_LONGARM_FRAME_ENGRAVING_MATERIAL_2",
            "COMPONENT_LONGARM_FRAME_ENGRAVING_MATERIAL_3",
            "COMPONENT_LONGARM_FRAME_ENGRAVING_MATERIAL_4",
            "COMPONENT_LONGARM_FRAME_ENGRAVING_MATERIAL_5",
            "COMPONENT_LONGARM_FRAME_ENGRAVING_MATERIAL_6",
            "COMPONENT_LONGARM_FRAME_ENGRAVING_MATERIAL_7",
            "COMPONENT_LONGARM_FRAME_ENGRAVING_MATERIAL_8",
            "COMPONENT_LONGARM_FRAME_ENGRAVING_MATERIAL_9",
            "COMPONENT_LONGARM_FRAME_ENGRAVING_MATERIAL_10",
            "COMPONENT_LONGARM_FRAME_ENGRAVING_MATERIAL_11",
            "COMPONENT_LONGARM_FRAME_ENGRAVING_MATERIAL_12",
            "COMPONENT_LONGARM_FRAME_ENGRAVING_MATERIAL_13",
            "COMPONENT_LONGARM_FRAME_ENGRAVING_MATERIAL_14" },
        ["material"] = { "COMPONENT_LONGARM_FRAME_MATERIAL_1", "COMPONENT_LONGARM_FRAME_MATERIAL_2",
            "COMPONENT_LONGARM_FRAME_MATERIAL_3", "COMPONENT_LONGARM_FRAME_MATERIAL_4",
            "COMPONENT_LONGARM_FRAME_MATERIAL_5", "COMPONENT_LONGARM_FRAME_MATERIAL_6",
            "COMPONENT_LONGARM_FRAME_MATERIAL_7", "COMPONENT_LONGARM_FRAME_MATERIAL_8",
            "COMPONENT_LONGARM_FRAME_MATERIAL_9", "COMPONENT_LONGARM_FRAME_MATERIAL_10" }

        },
        ["grip"] = {

        ["engraving"] = { "COMPONENT_LONGARM_GRIPSTOCK_ENGRAVING_1", "COMPONENT_LONGARM_GRIPSTOCK_ENGRAVING_2",
            "COMPONENT_LONGARM_GRIPSTOCK_ENGRAVING_3", "COMPONENT_LONGARM_GRIPSTOCK_ENGRAVING_4",
            "COMPONENT_LONGARM_GRIPSTOCK_ENGRAVING_5", "COMPONENT_LONGARM_GRIPSTOCK_ENGRAVING_6" },
        ["tint"] = {
            "COMPONENT_LONGARM_GRIPSTOCK_TINT_A_1",
            "COMPONENT_LONGARM_GRIPSTOCK_TINT_A_2",
            "COMPONENT_LONGARM_GRIPSTOCK_TINT_A_3",
            "COMPONENT_LONGARM_GRIPSTOCK_TINT_A_4",
            "COMPONENT_LONGARM_GRIPSTOCK_TINT_A_5",
            "COMPONENT_LONGARM_GRIPSTOCK_TINT_A_6",
            "COMPONENT_LONGARM_GRIPSTOCK_TINT_A_7",
            "COMPONENT_LONGARM_GRIPSTOCK_TINT_A_8",
            "COMPONENT_LONGARM_GRIPSTOCK_TINT_B_1",
            "COMPONENT_LONGARM_GRIPSTOCK_TINT_B_2",
            "COMPONENT_LONGARM_GRIPSTOCK_TINT_B_3",
            "COMPONENT_LONGARM_GRIPSTOCK_TINT_B_4",
            "COMPONENT_LONGARM_GRIPSTOCK_TINT_B_5",
            "COMPONENT_LONGARM_GRIPSTOCK_TINT_B_6",
            "COMPONENT_LONGARM_GRIPSTOCK_TINT_B_7",
            "COMPONENT_LONGARM_GRIPSTOCK_TINT_B_8",
            "COMPONENT_LONGARM_GRIPSTOCK_TINT_GUTTAPERCHA",
            "COMPONENT_LONGARM_GRIPSTOCK_TINT_PEARL",
            "COMPONENT_LONGARM_GRIPSTOCK_TINT_GRAY_BIRCH",
            "COMPONENT_LONGARM_GRIPSTOCK_TINT_BURLED",
        }
        },
        ["wrap"] = {

        ["material"] = { "COMPONENT_LONGARM_WRAP_MATERIAL_CLOTH", "COMPONENT_LONGARM_WRAP_MATERIAL_LEATHER" },
        ["tint"] = {
            "COMPONENT_LONGARM_WRAP_TINT_WHITE",
            "COMPONENT_LONGARM_WRAP_TINT_BLACK",
            "COMPONENT_LONGARM_WRAP_TINT_A_1",
            "COMPONENT_LONGARM_WRAP_TINT_A_2",
            "COMPONENT_LONGARM_WRAP_TINT_A_3",
            "COMPONENT_LONGARM_WRAP_TINT_A_4",
            "COMPONENT_LONGARM_WRAP_TINT_A_5",
            "COMPONENT_LONGARM_WRAP_TINT_A_6",
            "COMPONENT_LONGARM_WRAP_TINT_A_7",
            "COMPONENT_LONGARM_WRAP_TINT_A_8",
            "COMPONENT_LONGARM_WRAP_TINT_B_1",
            "COMPONENT_LONGARM_WRAP_TINT_B_2",
            "COMPONENT_LONGARM_WRAP_TINT_B_3",
            "COMPONENT_LONGARM_WRAP_TINT_B_4",
            "COMPONENT_LONGARM_WRAP_TINT_B_5",
            "COMPONENT_LONGARM_WRAP_TINT_B_6",
            "COMPONENT_LONGARM_WRAP_TINT_B_7",
            "COMPONENT_LONGARM_WRAP_TINT_B_8",
            "COMPONENT_LONGARM_WRAP_TINT_C_1",
            "COMPONENT_LONGARM_WRAP_TINT_C_2",
            "COMPONENT_LONGARM_WRAP_TINT_C_3",
            "COMPONENT_LONGARM_WRAP_TINT_C_4",
            "COMPONENT_LONGARM_WRAP_TINT_C_5",
            "COMPONENT_LONGARM_WRAP_TINT_C_6",
            "COMPONENT_LONGARM_WRAP_TINT_C_7",
            "COMPONENT_LONGARM_WRAP_TINT_C_8",
            "COMPONENT_LONGARM_WRAP_TINT_C_9",
            "COMPONENT_LONGARM_WRAP_TINT_D_1",
            "COMPONENT_LONGARM_WRAP_TINT_D_2",
            "COMPONENT_LONGARM_WRAP_TINT_D_3",
            "COMPONENT_LONGARM_WRAP_TINT_D_4",
            "COMPONENT_LONGARM_WRAP_TINT_D_5",
            "COMPONENT_LONGARM_WRAP_TINT_D_6",
            "COMPONENT_LONGARM_WRAP_TINT_D_7",
            "COMPONENT_LONGARM_WRAP_TINT_D_8",
            "COMPONENT_LONGARM_WRAP_TINT_POLKADOT_DEFAULT",
            "COMPONENT_LONGARM_WRAP_TINT_POLKADOT_1",
            "COMPONENT_LONGARM_WRAP_TINT_POLKADOT_2",
            "COMPONENT_LONGARM_WRAP_TINT_POLKADOT_3",
            "COMPONENT_LONGARM_WRAP_TINT_POLKADOT_4",
            "COMPONENT_LONGARM_WRAP_TINT_POLKADOT_5",
            "COMPONENT_LONGARM_WRAP_TINT_NATIVE_DEFAULT",
            "COMPONENT_LONGARM_WRAP_TINT_NATIVE_1",
            "COMPONENT_LONGARM_WRAP_TINT_NATIVE_2",
            "COMPONENT_LONGARM_WRAP_TINT_NATIVE_3",
            "COMPONENT_LONGARM_WRAP_TINT_NATIVE_4",
            "COMPONENT_LONGARM_WRAP_TINT_NATIVE_5",
            "COMPONENT_LONGARM_WRAP_TINT_TARTAN_DEFAULT",
            "COMPONENT_LONGARM_WRAP_TINT_TARTAN_1",
            "COMPONENT_LONGARM_WRAP_TINT_TARTAN_2",
            "COMPONENT_LONGARM_WRAP_TINT_TARTAN_3",
            "COMPONENT_LONGARM_WRAP_TINT_TARTAN_4",
            "COMPONENT_LONGARM_WRAP_TINT_TARTAN_5",
            "COMPONENT_LONGARM_WRAP_TINT_E_1",
            "COMPONENT_LONGARM_WRAP_TINT_E_2",
            "COMPONENT_LONGARM_WRAP_TINT_E_3",
            "COMPONENT_LONGARM_WRAP_TINT_E_4",
            "COMPONENT_LONGARM_WRAP_TINT_E_5",
            "COMPONENT_LONGARM_WRAP_TINT_E_6",
            "COMPONENT_LONGARM_WRAP_TINT_E_7",
            "COMPONENT_LONGARM_WRAP_TINT_E_8",
            "COMPONENT_LONGARM_WRAP_TINT_E_9",
            "COMPONENT_LONGARM_WRAP_TINT_E_10",
        }
        },
        ["hammer"] = {

        ["material"] = { "COMPONENT_LONGARM_HAMMER_MATERIAL_1", "COMPONENT_LONGARM_HAMMER_MATERIAL_2",
            "COMPONENT_LONGARM_HAMMER_MATERIAL_3", "COMPONENT_LONGARM_HAMMER_MATERIAL_4",
            "COMPONENT_LONGARM_HAMMER_MATERIAL_5", "COMPONENT_LONGARM_HAMMER_MATERIAL_6",
            "COMPONENT_LONGARM_HAMMER_MATERIAL_7", "COMPONENT_LONGARM_HAMMER_MATERIAL_8",
            "COMPONENT_LONGARM_HAMMER_MATERIAL_9", "COMPONENT_LONGARM_HAMMER_MATERIAL_10" }

        },
        ["sight"] = {

        ["material"] = { "COMPONENT_LONGARM_SIGHT_MATERIAL_1", "COMPONENT_LONGARM_SIGHT_MATERIAL_2",
            "COMPONENT_LONGARM_SIGHT_MATERIAL_3", "COMPONENT_LONGARM_SIGHT_MATERIAL_4",
            "COMPONENT_LONGARM_SIGHT_MATERIAL_5", "COMPONENT_LONGARM_SIGHT_MATERIAL_6",
            "COMPONENT_LONGARM_SIGHT_MATERIAL_7", "COMPONENT_LONGARM_SIGHT_MATERIAL_8",
            "COMPONENT_LONGARM_SIGHT_MATERIAL_9", "COMPONENT_LONGARM_SIGHT_MATERIAL_10" }

        },
        ["trigger"] = {

        ["material"] = { "COMPONENT_LONGARM_TRIGGER_MATERIAL_1", "COMPONENT_LONGARM_TRIGGER_MATERIAL_2",
            "COMPONENT_LONGARM_TRIGGER_MATERIAL_3", "COMPONENT_LONGARM_TRIGGER_MATERIAL_4",
            "COMPONENT_LONGARM_TRIGGER_MATERIAL_5", "COMPONENT_LONGARM_TRIGGER_MATERIAL_6",
            "COMPONENT_LONGARM_TRIGGER_MATERIAL_7", "COMPONENT_LONGARM_TRIGGER_MATERIAL_8",
            "COMPONENT_LONGARM_TRIGGER_MATERIAL_9", "COMPONENT_LONGARM_TRIGGER_MATERIAL_10" }

        },
        ["strap"] = {
        ["material"] = {
            "COMPONENT_REPEATER_STRAP01",
            "COMPONENT_RIFLE_CS_STRAP01",
            "COMPONENT_REPEATER_CLOTH_STRAP01",
            "COMPONENT_LEFTSHOULDER_STRAP01",
        },
        ["tint"] = {
            "COMPONENT_LONGARM_STRAP_TINT_A_1",
            "COMPONENT_LONGARM_STRAP_TINT_A_2",
            "COMPONENT_LONGARM_STRAP_TINT_A_3",
            "COMPONENT_LONGARM_STRAP_TINT_A_4",
            "COMPONENT_LONGARM_STRAP_TINT_A_5",
            "COMPONENT_LONGARM_STRAP_TINT_A_6",
            "COMPONENT_LONGARM_STRAP_TINT_A_7",
            "COMPONENT_LONGARM_STRAP_TINT_A_8",
        },
        },
        ["scope"] = {
        ["material"] = {
            "COMPONENT_RIFLE_SCOPE02",
            "COMPONENT_RIFLE_SCOPE03",
            "COMPONENT_RIFLE_SCOPE04",
        },
        }

    },


    ["SHOTGUN"] =
    {
        ["barrel"] = {

        ["engraving"] = { "COMPONENT_SHOTGUN_BARREL_ENGRAVING_1", "COMPONENT_SHOTGUN_BARREL_ENGRAVING_2", "COMPONENT_SHOTGUN_BARREL_ENGRAVING_3", "COMPONENT_SHOTGUN_BARREL_ENGRAVING_4" },
        ["material"] = { "COMPONENT_LONGARM_BARREL_MATERIAL_1", "COMPONENT_LONGARM_BARREL_MATERIAL_2", "COMPONENT_LONGARM_BARREL_MATERIAL_3", "COMPONENT_LONGARM_BARREL_MATERIAL_4", "COMPONENT_LONGARM_BARREL_MATERIAL_5", "COMPONENT_LONGARM_BARREL_MATERIAL_6", "COMPONENT_LONGARM_BARREL_MATERIAL_7", "COMPONENT_LONGARM_BARREL_MATERIAL_8", "COMPONENT_LONGARM_BARREL_MATERIAL_9", "COMPONENT_LONGARM_BARREL_MATERIAL_10" },
        ["engraving_material"] = { "COMPONENT_LONGARM_BARREL_ENGRAVING_MATERIAL_1",
            "COMPONENT_LONGARM_BARREL_ENGRAVING_MATERIAL_2", "COMPONENT_LONGARM_BARREL_ENGRAVING_MATERIAL_3",
            "COMPONENT_LONGARM_BARREL_ENGRAVING_MATERIAL_4", "COMPONENT_LONGARM_BARREL_ENGRAVING_MATERIAL_5",
            "COMPONENT_LONGARM_BARREL_ENGRAVING_MATERIAL_6", "COMPONENT_LONGARM_BARREL_ENGRAVING_MATERIAL_7",
            "COMPONENT_LONGARM_BARREL_ENGRAVING_MATERIAL_8", "COMPONENT_LONGARM_BARREL_ENGRAVING_MATERIAL_9",
            "COMPONENT_LONGARM_BARREL_ENGRAVING_MATERIAL_10",
            "COMPONENT_LONGARM_BARREL_ENGRAVING_MATERIAL_11",
            "COMPONENT_LONGARM_BARREL_ENGRAVING_MATERIAL_12",
            "COMPONENT_LONGARM_BARREL_ENGRAVING_MATERIAL_13",
            "COMPONENT_LONGARM_BARREL_ENGRAVING_MATERIAL_14" },

        },
        ["cylinder"] = {

        ["engraving"] = { "COMPONENT_SHOTGUN_CYLINDER_ENGRAVING_1", "COMPONENT_SHOTGUN_CYLINDER_ENGRAVING_2", "COMPONENT_SHOTGUN_CYLINDER_ENGRAVING_3", "COMPONENT_SHOTGUN_CYLINDER_ENGRAVING_4" },
        ["material"] = { "COMPONENT_LONGARM_CYLINDER_MATERIAL_1", "COMPONENT_LONGARM_CYLINDER_MATERIAL_2", "COMPONENT_LONGARM_CYLINDER_MATERIAL_3", "COMPONENT_LONGARM_CYLINDER_MATERIAL_4", "COMPONENT_LONGARM_CYLINDER_MATERIAL_5", "COMPONENT_LONGARM_CYLINDER_MATERIAL_6", "COMPONENT_LONGARM_CYLINDER_MATERIAL_7", "COMPONENT_LONGARM_CYLINDER_MATERIAL_8", "COMPONENT_LONGARM_CYLINDER_MATERIAL_9", "COMPONENT_LONGARM_CYLINDER_MATERIAL_10" },
        ["engraving_material"] = { "COMPONENT_LONGARM_CYLINDER_ENGRAVING_MATERIAL_1",
            "COMPONENT_LONGARM_CYLINDER_ENGRAVING_MATERIAL_2", "COMPONENT_LONGARM_CYLINDER_ENGRAVING_MATERIAL_3",
            "COMPONENT_LONGARM_CYLINDER_ENGRAVING_MATERIAL_4", "COMPONENT_LONGARM_CYLINDER_ENGRAVING_MATERIAL_5",
            "COMPONENT_LONGARM_CYLINDER_ENGRAVING_MATERIAL_6", "COMPONENT_LONGARM_CYLINDER_ENGRAVING_MATERIAL_7",
            "COMPONENT_LONGARM_CYLINDER_ENGRAVING_MATERIAL_8", "COMPONENT_LONGARM_CYLINDER_ENGRAVING_MATERIAL_9",
            "COMPONENT_LONGARM_CYLINDER_ENGRAVING_MATERIAL_10",
            "COMPONENT_LONGARM_CYLINDER_ENGRAVING_MATERIAL_11",
            "COMPONENT_LONGARM_CYLINDER_ENGRAVING_MATERIAL_12",
            "COMPONENT_LONGARM_CYLINDER_ENGRAVING_MATERIAL_13",
            "COMPONENT_LONGARM_CYLINDER_ENGRAVING_MATERIAL_14"
        },

        },
        ["frame"] = {

        ["engraving"] = { "COMPONENT_SHOTGUN_FRAME_ENGRAVING_1", "COMPONENT_SHOTGUN_FRAME_ENGRAVING_2", "COMPONENT_SHOTGUN_FRAME_ENGRAVING_3", "COMPONENT_SHOTGUN_FRAME_ENGRAVING_4" },
        ["material"] = { "COMPONENT_LONGARM_FRAME_MATERIAL_1", "COMPONENT_LONGARM_FRAME_MATERIAL_2", "COMPONENT_LONGARM_FRAME_MATERIAL_3", "COMPONENT_LONGARM_FRAME_MATERIAL_4", "COMPONENT_LONGARM_FRAME_MATERIAL_5", "COMPONENT_LONGARM_FRAME_MATERIAL_6", "COMPONENT_LONGARM_FRAME_MATERIAL_7", "COMPONENT_LONGARM_FRAME_MATERIAL_8", "COMPONENT_LONGARM_FRAME_MATERIAL_9", "COMPONENT_LONGARM_FRAME_MATERIAL_10" },
        ["engraving_material"] = { "COMPONENT_LONGARM_FRAME_ENGRAVING_MATERIAL_1",
            "COMPONENT_LONGARM_FRAME_ENGRAVING_MATERIAL_2", "COMPONENT_LONGARM_FRAME_ENGRAVING_MATERIAL_3",
            "COMPONENT_LONGARM_FRAME_ENGRAVING_MATERIAL_4", "COMPONENT_LONGARM_FRAME_ENGRAVING_MATERIAL_5",
            "COMPONENT_LONGARM_FRAME_ENGRAVING_MATERIAL_6", "COMPONENT_LONGARM_FRAME_ENGRAVING_MATERIAL_7",
            "COMPONENT_LONGARM_FRAME_ENGRAVING_MATERIAL_8", "COMPONENT_LONGARM_FRAME_ENGRAVING_MATERIAL_9",
            "COMPONENT_LONGARM_FRAME_ENGRAVING_MATERIAL_10",
            "COMPONENT_LONGARM_FRAME_ENGRAVING_MATERIAL_11",
            "COMPONENT_LONGARM_FRAME_ENGRAVING_MATERIAL_12",
            "COMPONENT_LONGARM_FRAME_ENGRAVING_MATERIAL_13",
            "COMPONENT_LONGARM_FRAME_ENGRAVING_MATERIAL_14", },

        },
        ["hammer"] = {

        ["material"] = { "COMPONENT_LONGARM_HAMMER_MATERIAL_1", "COMPONENT_LONGARM_HAMMER_MATERIAL_2", "COMPONENT_LONGARM_HAMMER_MATERIAL_3", "COMPONENT_LONGARM_HAMMER_MATERIAL_4", "COMPONENT_LONGARM_HAMMER_MATERIAL_5", "COMPONENT_LONGARM_HAMMER_MATERIAL_6", "COMPONENT_LONGARM_HAMMER_MATERIAL_7", "COMPONENT_LONGARM_HAMMER_MATERIAL_8", "COMPONENT_LONGARM_HAMMER_MATERIAL_9" },

        },
        ["sight"] = {

        ["material"] = { "COMPONENT_LONGARM_SIGHT_MATERIAL_1", "COMPONENT_LONGARM_SIGHT_MATERIAL_2", "COMPONENT_LONGARM_SIGHT_MATERIAL_3", "COMPONENT_LONGARM_SIGHT_MATERIAL_4", "COMPONENT_LONGARM_SIGHT_MATERIAL_5", "COMPONENT_LONGARM_SIGHT_MATERIAL_6", "COMPONENT_LONGARM_SIGHT_MATERIAL_7", "COMPONENT_LONGARM_SIGHT_MATERIAL_8", "COMPONENT_LONGARM_SIGHT_MATERIAL_9" },

        },
        ["trigger"] = {

        ["material"] = { "COMPONENT_LONGARM_TRIGGER_MATERIAL_1", "COMPONENT_LONGARM_TRIGGER_MATERIAL_2", "COMPONENT_LONGARM_TRIGGER_MATERIAL_3", "COMPONENT_LONGARM_TRIGGER_MATERIAL_4", "COMPONENT_LONGARM_TRIGGER_MATERIAL_5", "COMPONENT_LONGARM_TRIGGER_MATERIAL_6", "COMPONENT_LONGARM_TRIGGER_MATERIAL_7", "COMPONENT_LONGARM_TRIGGER_MATERIAL_8", "COMPONENT_LONGARM_TRIGGER_MATERIAL_9" },

        },

        ["wrap"] = {

        ["material"] = { "COMPONENT_LONGARM_WRAP_MATERIAL_CLOTH", "COMPONENT_LONGARM_WRAP_MATERIAL_LEATHER" },
        ["tint"] = {
            "COMPONENT_LONGARM_WRAP_TINT_WHITE",
            "COMPONENT_LONGARM_WRAP_TINT_BLACK",
            "COMPONENT_LONGARM_WRAP_TINT_A_1",
            "COMPONENT_LONGARM_WRAP_TINT_A_2",
            "COMPONENT_LONGARM_WRAP_TINT_A_3",
            "COMPONENT_LONGARM_WRAP_TINT_A_4",
            "COMPONENT_LONGARM_WRAP_TINT_A_5",
            "COMPONENT_LONGARM_WRAP_TINT_A_6",
            "COMPONENT_LONGARM_WRAP_TINT_A_7",
            "COMPONENT_LONGARM_WRAP_TINT_A_8",
            "COMPONENT_LONGARM_WRAP_TINT_B_1",
            "COMPONENT_LONGARM_WRAP_TINT_B_2",
            "COMPONENT_LONGARM_WRAP_TINT_B_3",
            "COMPONENT_LONGARM_WRAP_TINT_B_4",
            "COMPONENT_LONGARM_WRAP_TINT_B_5",
            "COMPONENT_LONGARM_WRAP_TINT_B_6",
            "COMPONENT_LONGARM_WRAP_TINT_B_7",
            "COMPONENT_LONGARM_WRAP_TINT_B_8",
            "COMPONENT_LONGARM_WRAP_TINT_C_1",
            "COMPONENT_LONGARM_WRAP_TINT_C_2",
            "COMPONENT_LONGARM_WRAP_TINT_C_3",
            "COMPONENT_LONGARM_WRAP_TINT_C_4",
            "COMPONENT_LONGARM_WRAP_TINT_C_5",
            "COMPONENT_LONGARM_WRAP_TINT_C_6",
            "COMPONENT_LONGARM_WRAP_TINT_C_7",
            "COMPONENT_LONGARM_WRAP_TINT_C_8",
            "COMPONENT_LONGARM_WRAP_TINT_C_9",
            "COMPONENT_LONGARM_WRAP_TINT_D_1",
            "COMPONENT_LONGARM_WRAP_TINT_D_2",
            "COMPONENT_LONGARM_WRAP_TINT_D_3",
            "COMPONENT_LONGARM_WRAP_TINT_D_4",
            "COMPONENT_LONGARM_WRAP_TINT_D_5",
            "COMPONENT_LONGARM_WRAP_TINT_D_6",
            "COMPONENT_LONGARM_WRAP_TINT_D_7",
            "COMPONENT_LONGARM_WRAP_TINT_D_8",
            "COMPONENT_LONGARM_WRAP_TINT_POLKADOT_DEFAULT",
            "COMPONENT_LONGARM_WRAP_TINT_POLKADOT_1",
            "COMPONENT_LONGARM_WRAP_TINT_POLKADOT_2",
            "COMPONENT_LONGARM_WRAP_TINT_POLKADOT_3",
            "COMPONENT_LONGARM_WRAP_TINT_POLKADOT_4",
            "COMPONENT_LONGARM_WRAP_TINT_POLKADOT_5",
            "COMPONENT_LONGARM_WRAP_TINT_NATIVE_DEFAULT",
            "COMPONENT_LONGARM_WRAP_TINT_NATIVE_1",
            "COMPONENT_LONGARM_WRAP_TINT_NATIVE_2",
            "COMPONENT_LONGARM_WRAP_TINT_NATIVE_3",
            "COMPONENT_LONGARM_WRAP_TINT_NATIVE_4",
            "COMPONENT_LONGARM_WRAP_TINT_NATIVE_5",
            "COMPONENT_LONGARM_WRAP_TINT_TARTAN_DEFAULT",
            "COMPONENT_LONGARM_WRAP_TINT_TARTAN_1",
            "COMPONENT_LONGARM_WRAP_TINT_TARTAN_2",
            "COMPONENT_LONGARM_WRAP_TINT_TARTAN_3",
            "COMPONENT_LONGARM_WRAP_TINT_TARTAN_4",
            "COMPONENT_LONGARM_WRAP_TINT_TARTAN_5",
            "COMPONENT_LONGARM_WRAP_TINT_E_1",
            "COMPONENT_LONGARM_WRAP_TINT_E_2",
            "COMPONENT_LONGARM_WRAP_TINT_E_3",
            "COMPONENT_LONGARM_WRAP_TINT_E_4",
            "COMPONENT_LONGARM_WRAP_TINT_E_5",
            "COMPONENT_LONGARM_WRAP_TINT_E_6",
            "COMPONENT_LONGARM_WRAP_TINT_E_7",
            "COMPONENT_LONGARM_WRAP_TINT_E_8",
            "COMPONENT_LONGARM_WRAP_TINT_E_9",
            "COMPONENT_LONGARM_WRAP_TINT_E_10",
        },

        },

        ["grip"] = {

        ["engraving"] = { "COMPONENT_LONGARM_GRIPSTOCK_ENGRAVING_1", "COMPONENT_LONGARM_GRIPSTOCK_ENGRAVING_2", "COMPONENT_LONGARM_GRIPSTOCK_ENGRAVING_3", "COMPONENT_LONGARM_GRIPSTOCK_ENGRAVING_4", "COMPONENT_LONGARM_GRIPSTOCK_ENGRAVING_5", "COMPONENT_LONGARM_GRIPSTOCK_ENGRAVING_6" },
        ["tint"] = {
            "COMPONENT_LONGARM_GRIPSTOCK_TINT_A_1",
            "COMPONENT_LONGARM_GRIPSTOCK_TINT_A_2",
            "COMPONENT_LONGARM_GRIPSTOCK_TINT_A_3",
            "COMPONENT_LONGARM_GRIPSTOCK_TINT_A_4",
            "COMPONENT_LONGARM_GRIPSTOCK_TINT_A_5",
            "COMPONENT_LONGARM_GRIPSTOCK_TINT_A_6",
            "COMPONENT_LONGARM_GRIPSTOCK_TINT_A_7",
            "COMPONENT_LONGARM_GRIPSTOCK_TINT_A_8",
            "COMPONENT_LONGARM_GRIPSTOCK_TINT_B_1",
            "COMPONENT_LONGARM_GRIPSTOCK_TINT_B_2",
            "COMPONENT_LONGARM_GRIPSTOCK_TINT_B_3",
            "COMPONENT_LONGARM_GRIPSTOCK_TINT_B_4",
            "COMPONENT_LONGARM_GRIPSTOCK_TINT_B_5",
            "COMPONENT_LONGARM_GRIPSTOCK_TINT_B_6",
            "COMPONENT_LONGARM_GRIPSTOCK_TINT_B_7",
            "COMPONENT_LONGARM_GRIPSTOCK_TINT_B_8",
            "COMPONENT_LONGARM_GRIPSTOCK_TINT_GUTTAPERCHA",
            "COMPONENT_LONGARM_GRIPSTOCK_TINT_PEARL",
            "COMPONENT_LONGARM_GRIPSTOCK_TINT_GRAY_BIRCH",
            "COMPONENT_LONGARM_GRIPSTOCK_TINT_BURLED",
        },
        },
    },
    }, ]]

    Ammo = {
        ['ammo_22'] = {
            label = 'Anti-pest ammunition',
            weight = 3,
        },    

        ['ammo_arrow'] = {
            label = 'Arrow',
            weight = 3,
        },
        ['ammo_arrow_fire'] = {
            label = 'Fire Ammo',
            weight = 3,
        },

        ['ammo_bolas'] = {
            label = 'Bolas (Ammo)',
            weight = 3,
        },

        ['ammo_revolver'] = {
            label = 'Revolver Ammo',
            weight = 3,
        },

        ['ammo_revolver_express_explosive'] = {
            label = 'Explosive Revolver Ammo',
            weight = 3,
        },
        ['ammo_pistol'] = {
            label = 'Pistol Ammo',
            weight = 3,
        },

        ['ammo_shotgun'] = {
            label = 'Shotgun Ammo',
            weight = 3,
        },

        ['ammo_repeater'] = {
            label = 'Repeater Ammo',
            weight = 3,
        },

        ['ammo_rifle'] = {
            label = 'Rifle Ammo',
            weight = 3,
        }
    }
}
--[[
╔═══════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
║                                                                                                               ║
║                              📦 OX INVENTORY - CONTAINER SYSTEM 📦                                           ║
║                                                                                                               ║
╠═══════════════════════════════════════════════════════════════════════════════════════════════════════════════╣
║                                                                                                               ║
║  🎒 PORTABLE CONTAINERS 🎒                                                                                   ║
║                                                                                                               ║
║  Define containers that can be carried as items (backpacks, bags, satchels, etc.)                             ║
║  Multi-Framework: RSG, VORP, QRCore, RedEM:RP                                                                 ║
║                                                                                                               ║
║  ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━      ║
║                                                                                                               ║
║   📋 PROPERTIES 📋                                                                                           ║
║    • slots       How many item slots                                                                          ║
║    • maxWeight   Maximum weight in grams (1000g = 1kg)                                                        ║
║    • blacklist   Items that CANNOT be stored (optional)                                                       ║
║    • whitelist   Only these items allowed (optional, overrides blacklist)                                     ║
║                                                                                                               ║
║  💡 WEIGHT GUIDE 💡                                                                                          ║
║    • 5,000g  = Small pouch     • 20,000g = Large satchel                                                      ║
║    • 10,000g = Medium bag      • 50,000g = Hunting pack                                                       ║
║                                                                                                               ║
╚═══════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
--]]

return {
    -- Medical Bag
    medicalbag = {
        slots = 8,
        maxWeight = 5000,
        whitelist = { 'bandage', 'medikit', 'water', 'bread' }
    },

    -- Leather Satchel
    satchel = {
        slots = 12,
        maxWeight = 15000,
        blacklist = { 'WEAPON_RIFLE_SPRINGFIELD', 'WEAPON_RIFLE_BOLTACTION', 'WEAPON_SHOTGUN_DOUBLEBARREL' }
    },

    -- Standard Backpack
    backpack = {
        slots = 20,
        maxWeight = 25000,
    },

    -- Hunting Pack
    huntingpack = {
        slots = 30,
        maxWeight = 50000,
    },

}

# 📦 QC_OX_Inventory

A complete inventory system for RedM, implementing items, weapons, shops, stashes, and advanced features with multi-framework support.

> ⚠️ **Work In Progress**: This is an active development fork of ox_inventory adapted for RedM. Features are being added and refined.

---

## 📋 Features

### Core System
- **Server-side Security**: All interactions with items, shops, and stashes are validated server-side
- **Multi-Framework Support**: Compatible with RSG, VORP, QRCore, and RedEM:RP frameworks
- **Fully Synchronized**: Multiple players can access the same inventory simultaneously
- **Logging System**: Comprehensive event logging for purchases, item movement, creation, and removal
- **ox_target Integration**: Full support for ox_target interaction system
- **Native Prompts**: Standalone mode uses native RedM prompts for interactions

### Items & Weapons
- **Slot-Based Storage**: Items stored per-slot with customizable metadata for uniqueness
- **RedM Weapon System**: Complete RDR3 weapon implementation with dual-wield support
- **Weapon Attachments**: Full attachment and component system
- **Ammunition Types**: Support for various ammo types including special ammunition
- **Durability System**: Items can degrade or be depleted over time
- **Item Effects**: Secure internal item system for use effects
- **Framework Compatibility**: Works with 3rd party framework item registration

### Shops
- **Access Control**: Group and license-based restrictions
- **Multi-Currency**: Support for different currencies (cash, black money, gold, etc.)
- **Dynamic Pricing**: Per-item pricing and stock management
- **Interaction Modes**: ox_target zones or native RedM prompts

### Storage
- **Personal Stashes**: Player-specific storage with identifier linking
- **Group Restrictions**: Job/gang-based access control
- **Dynamic Registration**: Create new stashes from any resource
- **Container Items**: Access stashes through items like paperbags or backpacks
- **Vehicle Storage**: Glovebox and trunk access for vehicles (horses, wagons, etc.)
- **Random Loot**: Item generation in dumpsters and unowned vehicles

### RedM-Specific Features
- **Dual-Wield System**: Support for dual-wielding pistols and revolvers (WIP)
- **Weapon Wheel Toggle**: Optional disable/enable of native weapon wheel
- **Horse & Wagon Inventory**: UUID-based storage for mounts and vehicles
- **RDR3 Natives**: Optimized for Red Dead Redemption 3 (RedM)
- **Western UI Theme**: Custom RedM-styled interface with period-appropriate fonts

## 🎨 UI Features

- **React 18 + TypeScript**: Modern frontend stack
- **Custom RedM Theme**: Western-styled UI with authentic fonts
- **Responsive Design**: Adaptive layout for different screen sizes
- **Item Notifications**: Visual feedback for item actions
- **Drag & Drop**: Intuitive item movement
- **Hotbar System**: Quick access weapon/item slots

---

## ⚙️ Installation

### Prerequisites
- RedM server
- One of the supported frameworks (RSG, VORP, QRCore, or RedEM:RP)
- MySQL database
- ox_lib
- ox_target (optional, but recommended)

### Steps

1. **Download & Extract**
   ```
   Download the latest release and extract to your resources folder
   ```
2. **Rename Script**
   ```
    Rename QC_OX_Inventory to be ox_inventory
   ```

3. **Database Setup**
   ```sql
   -- Import the provided SQL file (see INSTALLATION folder)
   ```

4. **RSG Core Money Items Fix** (RSG Framework Only)

   ⚠️ **CRITICAL**: If using RSG Core, you MUST replace the `moneyitems.lua` file for proper functionality.

   ```
   Copy: ox_inventory/INSTALLATION/moneyitems.lua
   To: rsg-core/server/moneyitems.lua
   ```

   This fixes:
   - AddItem nil errors
   - Circular dependency issues
   - Money synchronization problems
   - Player initialization timing issues

5. **Configure**
   ```lua
   -- Edit data/items.lua, data/shops.lua, etc. to match your server needs
   -- Configure fxmanifest.lua if needed
   ```

6. **Build UI** (if modifying web files)
   ```bash
   cd web
   npm install
   npm run build
   ```

7. **Add to server.cfg**
   ```
   ensure ox_lib
   ensure ox_target  # Optional
   ensure ox_inventory
   ```

8. **Restart Server** (Complete server restart, not just resource restart)

---

## 🔧 Configuration

### Shared Config (init.lua)
- `weaponWheel`: Toggle weapon wheel (RedM only)
- `dropmodel`: Default drop bag model
- `target`: Enable/disable ox_target integration

### Framework Setup
The script auto-detects your framework. Ensure your bridge files are properly configured in `modules/bridge/`.

### Shop System
- **With ox_target**: Uses zones and models defined in `data/shops.lua`
- **Standalone**: Uses native RedM prompts at location coordinates

---

## 📚 Data Files

All configuration is done through Lua data files in the `data/` folder:

- **items.lua**: Item definitions and properties
- **weapons.lua**: FiveM weapon data (legacy)
- **weapons_RDR3.lua**: RedM weapon definitions
- **shops.lua**: Shop locations and inventory
- **stashes.lua**: Static storage locations
- **vehicles.lua**: Vehicle storage capacity
- **containers.lua**: Portable container definitions
- **crafting.lua**: Crafting bench and recipe data
- **evidence.lua**: Police evidence locker locations
- **licenses.lua**: License purchase locations

Each file contains detailed inline documentation.


## 🌐 Multi-Framework Support

Currently supported frameworks within RedM:

| Framework | Status | Notes |
|-----------|--------|-------|
| RSG | ✅ Full Support | Primary development framework |
| VORP | 🚧 Planned | Bridge structure in place |
| QRCore | 🚧 Planned | Bridge structure in place |
| RedEM:RP | 🚧 Planned | Bridge structure in place |

---

## 🔄 Differences from Original ox_inventory

This is a RedM-focused fork with the following changes:

1. **RedM Focus**: A fully optimized ox_inventory for RedM
2. **Dual-Wield Weapons**: Implementation for revolvers/pistols (Work in Progress)
3. **Native Prompts**: Standalone mode uses RedM's native prompt system
4. **Western UI**: Completely redesigned theme with RedM aesthetics
5. **Horse/Wagon Storage**: UUID-based vehicle inventory system
6. **Multi-Framework**: Support for multiple RedM frameworks (in progress)

---

## 📝 Development Status

- ✅ Core inventory system
- ✅ RedM weapon system
- 🚧 Dual-wield weapon support (in progress)
- ✅ Shop system (ox_target + native prompts)
- ✅ Vehicle storage (horses, wagons)
- ✅ Container system
- ✅ Crafting system
- ✅ Western UI theme
- 🚧 Additional framework bridges (VORP, QRCore, RedEM:RP)
- 🚧 Advanced features and optimizations
- 🚧 Documentation expansion

---

## 🤝 Credits

**Original ox_inventory**:
- Copyright © 2024 Overextended <https://github.com/overextended>
- Original repository: https://github.com/communityox/ox_inventory
- Documentation: https://coxdocs.dev/ox_inventory

**RedM Adaptation**:
- Quantum Projects Development Team
- Community contributors

---

## 📄 License

This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program. If not, see <https://www.gnu.org/licenses/>.

---

## 🐛 Support

This is an unofficial RedM adaptation. For support:
- **Quantum Projects Discord**: https://discord.gg/kJ8ZrGM8TS
- Check inline code documentation
- Review data file examples
- Understand that this is work-in-progress

For original ox_inventory documentation:
- https://coxdocs.dev/ox_inventory
- https://github.com/communityox/ox_inventory

---

**Made with ❤️ for the RedM community**

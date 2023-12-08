local AddonName, MPL = ...
local L = MPL.L or {}

MPL_tables = {}

local function get_slots()
    local gearSlots = {
        [1] = L["Head"],
        [2] = L["Neck"],
        [3] = L["Shoulder"],
        [4] = L["Cloak"],
        [5] = L["Chest"],
        [6] = L["Wrist"],
        [7] = L["Hand"],
        [8] = L["Waist"],
        [9] = L["Legs"],
        [10] = L["Feet"],
        [11] = L["Main-Hand"],
        [12] = L["Off-Hand"],
        [13] = L["Finger"],
        [14] = L["Trinket"],
        [15] = L["Favorites"],
    }

    return gearSlots
end
MPL_tables.get_slots = get_slots

local function get_mythic_labels()
    local mythicLabels = {
        [1] = L["M+2/Valor 1"],
        [2] = L["M+3/Valor 1"],
        [3] = L["M+4/Valor 2"],
        [4] = L["M+5/Valor 2"],
        [5] = L["M+6/Valor 3"],
        [6] = L["M+7/Valor 4"],
        [7] = L["M+8/Valor 4"],
        [8] = L["M+9/Valor 5"],
        [9] = L["M+10/Valor 6"],
        [10] = L["M+11/Valor 6"],
        [11] = L["M+12/Valor 6"],
        [12] = L["M+13/Valor 6"],
        [13] = L["M+14/Valor 7"],
        [14] = L["M+15/Valor 8"],
        [15] = L["M+16/Valor 8"],
        [16] = L["M+17/Valor 9"],
        [17] = L["M+18/Valor 9"],
        [18] = L["M+19/Valor 10"],
        [19] = L["M+20/Valor 10"],
        [20] = L["M+21/Valor 10"],
    }

    return mythicLabels
end
MPL_tables.get_mythic_labels = get_mythic_labels

local function get_dungeons()
    local dungeonTable = {
        -- [L["Dawn of the Infinite: Galakrond's Fall"]] = 1,
        -- [L["Dawn of the Infinite: Murozond's Rise"]] = 2,
        [L["Dawn of the Infinite"]] = 2,
        [L["Atal'Dazar"]] = 3,
        [L["Waycrest Manor"]] = 4,
        [L["Black Rook Hold"]] = 5,
        [L["Darkheart Thicket"]] = 6,
        [L["The Everbloom"]] = 7,
        [L["Throne of the Tides"]] = 8,
    }

    return dungeonTable
end
MPL_tables.get_dungeons = get_dungeons

local function dungeon_ids()
    local dungeonIDs = {
        -- [L["Dawn of the Infinite: Galakrond's Fall"]] = 1209,
        -- [L["Dawn of the Infinite: Murozond's Rise"]] = 1209,
        [L["Dawn of the Infinite"]] = 1209,
        [L["Atal'Dazar"]] = 968,
        [L["Waycrest Manor"]] = 1021,
        [L["Black Rook Hold"]] = 740,
        [L["Darkheart Thicket"]] = 762,
        [L["The Everbloom"]] = 556,
        [L["Throne of the Tides"]] = 65,
    }

    return dungeonIDs
end
MPL_tables.dungeon_ids = dungeon_ids

local function class_ids()
    local classIDs = {
        [L["Warrior"]] = 1,
        [L["Paladin"]] = 2,
        [L["Hunter"]] = 3,
        [L["Rogue"]] = 4,
        [L["Priest"]] = 5,
        [L["Death Knight"]] = 6,
        [L["Shaman"]] = 7,
        [L["Mage"]] = 8,
        [L["Warlock"]] = 9,
        [L["Monk"]] = 10,
        [L["Druid"]] = 11,
        [L["Demon Hunter"]] = 12,
        [L["Evoker"]] = 13,
    }

    return classIDs
end
MPL_tables.class_ids = class_ids

local function spec_ids()
    local specIds = {
        [L["Warrior"]] = {
            [L["Arms"]] = 71,
            [L["Fury"]] = 72,
            [L["Protection"]] = 73
        },
        [L["Paladin"]] = {
            [L["Holy"]] = 65,
            [L["Protection"]] = 66,
            [L["Retribution"]] = 70
        },
        [L["Hunter"]] = {
            [L["Beast Mastery"]] = 253,
            [L["Marksmanship"]] = 254,
            [L["Survival"]] = 255
        },
        [L["Rogue"]] = {
            [L["Assassination"]] = 259,
            [L["Outlaw"]] = 260,
            [L["Subtlety"]] = 261
        },
        [L["Priest"]] = {
            [L["Discipline"]] = 256,
            [L["Holy"]] = 257,
            [L["Shadow"]] = 258
        },
        [L["Death Knight"]] = {
            [L["Blood"]] = 250,
            [L["Frost"]] = 251,
            [L["Unholy"]] = 252
        },
        [L["Shaman"]] = {
            [L["Elemental"]] = 262,
            [L["Enhancement"]] = 263,
            [L["Restoration"]] = 264
        },
        [L["Mage"]] = {
            [L["Arcane"]] = 62,
            [L["Fire"]] = 63,
            [L["Frost"]] = 64
        },
        [L["Warlock"]] = {
            [L["Affliction"]] = 265,
            [L["Demonology"]] = 266,
            [L["Destruction"]] = 267
        },
        [L["Monk"]] = {
            [L["Brewmaster"]] = 268,
            [L["Mistweaver"]] = 270,
            [L["Windwalker"]] = 269
        },
        [L["Druid"]] = {
            [L["Balance"]] = 102,
            [L["Feral"]] = 103,
            [L["Guardian"]] = 104,
            [L["Restoration"]] = 105
        },
        [L["Demon Hunter"]] = {
            [L["Havoc"]] = 577,
            [L["Vengeance"]] = 581
        },
        [L["Evoker"]] = {
            [L["Devastation"]] = 1467,
            [L["Preservation"]] = 1468,
            [L["Augmentation"]] = 1473
        }
    }

    return specIds
end
MPL_tables.spec_ids = spec_ids

local function get_classes()
    local classTable = {
        [1] = L["All Classes"],
        [2] = L["Warrior"],
        [3] = L["Paladin"],
        [4] = L["Hunter"],
        [5] = L["Rogue"],
        [6] = L["Priest"],
        [7] = L["Death Knight"],
        [8] = L["Shaman"],
        [9] = L["Mage"],
        [10] = L["Warlock"],
        [11] = L["Monk"],
        [12] = L["Druid"],
        [13] = L["Demon Hunter"],
        [14] = L["Evoker"],
    }

    return classTable
end
MPL_tables.get_classes = get_classes

local function get_specs()
    local specTable = {
        [L["Warrior"]] = {
            [1] = L["Arms"],
            [2] = L["Fury"],
            [3] = L["Protection"]
        },
        [L["Paladin"]] = {
            [1] = L["Holy"],
            [2] = L["Protection"],
            [3] = L["Retribution"]
        },
        [L["Hunter"]] = {
            [1] = L["Beast Mastery"],
            [2] = L["Marksmanship"],
            [3] = L["Survival"]
        },
        [L["Rogue"]] = {
            [1] = L["Assassination"],
            [2] = L["Outlaw"],
            [3] = L["Subtlety"]
        },
        [L["Priest"]] = {
            [1] = L["Discipline"],
            [2] = L["Holy"],
            [3] = L["Shadow"]
        },
        [L["Death Knight"]] = {
            [1] = L["Blood"],
            [2] = L["Frost"],
            [3] = L["Unholy"]
        },
        [L["Shaman"]] = {
            [1] = L["Elemental"],
            [2] = L["Enhancement"],
            [3] = L["Restoration"]
        },
        [L["Mage"]] = {
            [1] = L["Arcane"],
            [2] = L["Fire"],
            [3] = L["Frost"]
        },
        [L["Warlock"]] = {
            [1] = L["Affliction"],
            [2] = L["Demonology"],
            [3] = L["Destruction"]
        },
        [L["Monk"]] = {
            [1] = L["Brewmaster"],
            [2] = L["Mistweaver"],
            [3] = L["Windwalker"]
        },
        [L["Druid"]] = {
            [1] = L["Balance"],
            [2] = L["Feral"],
            [3] = L["Guardian"],
            [4] = L["Restoration"]
        },
        [L["Demon Hunter"]] = {
            [1] = L["Havoc"],
            [2] = L["Vengeance"]
        },
        [L["Evoker"]] = {
            [1] = L["Devastation"],
            [2] = L["Preservation"],
            [3] = L["Augmentation"]
        }
    }

    return specTable
end
MPL_tables.get_specs = get_specs

local AddonName, MPL = ...
local L = MPL.L or {}

MPL_tables = {}

local function get_ilvls()
    local ilvls = {
        [1] = 372,
        [2] = 376,
        [3] = 376,
        [4] = 379,
        [5] = 379,
        [6] = 382,
        [7] = 385,
        [8] = 385,
        [9] = 389,
        [10] = 392,
        [11] = 392,
        [12] = 392,
        [13] = 392,
        [14] = 395,
        [15] = 398,
        [16] = 398,
        [17] = 402,
        [18] = 402,
        [19] = 405,
        [20] = 405,
        [21] = 408,
        [22] = 408,
        [23] = 411,
        [24] = 415,
        [25] = 415,
        [26] = 418,
        [27] = 418,
        [28] = 421
    }

    return ilvls
end
MPL_tables.get_ilvls = get_ilvls

local function get_slots()
    local gearSlots = {
        [1] = L["Head"],
        [2] = L["Neck"],
        [3] = L["Shoulder"],
        [4] = L["Back"],
        [5] = L["Chest"],
        [6] = L["Wrist"],
        [7] = L["Hands"],
        [8] = L["Waist"],
        [9] = L["Legs"],
        [10] = L["Feet"],
        [11] = L["Finger"],
        [12] = L["Trinket"],
        [13] = L["One-Hand"],
        [14] = L["Off-Hand"],
        [15] = L["Two-Hand"],
        [16] = L["Ranged"],
        [17] = L["Favorites"],
    }

    return gearSlots
end
MPL_tables.get_slots = get_slots

local function get_mythic_labels()
    local mythicLabels = {
        [1] = L["M0"],
        [2] = L["M+2/Valor 1"],
        [3] = L["M+3/Valor 1"],
        [4] = L["M+4/Valor 2"],
        [5] = L["M+5/Valor 2"],
        [6] = L["M+6/Valor 3"],
        [7] = L["M+7/Valor 4"],
        [8] = L["M+8/Valor 4"],
        [9] = L["M+9/Valor 5"],
        [10] = L["M+10/Valor 6"],
        [11] = L["M+11/Valor 6"],
        [12] = L["M+12/Valor 6"],
        [13] = L["M+13/Valor 6"],
        [14] = L["M+14/Valor 7"],
        [15] = L["M+15/Valor 8"],
        [16] = L["M+16/Valor 8"],
        [17] = L["M+17/Valor 9"],
        [18] = L["M+18/Valor 9"],
        [19] = L["M+19/Valor 10"],
        [20] = L["M+20/Valor 10"],
        [21] = L["Great Vault +13/Valor 11"],
        [22] = L["Great Vault +14/Valor 11"],
        [23] = L["Great Vault +15/Valor 12"],
        [24] = L["Great Vault +16/Valor 13"],
        [25] = L["Great Vault +17/Valor 13"],
        [26] = L["Great Vault +18"],
        [27] = L["Great Vault +19"],
        [28] = L["Great Vault +20"]
    }

    return mythicLabels
end
MPL_tables.get_mythic_labels = get_mythic_labels

local function get_mythic_levels()
    local mythicLevels = {
        [1] = "0",
        [2] = "+2",
        [3] = "+3",
        [4] = "+4",
        [5] = "+5",
        [6] = "+6",
        [7] = "+7",
        [8] = "+8",
        [9] = "+9",
        [10] = "+10",
        [11] = "+11",
        [12] = "+12",
        [13] = "+13",
        [14] = "+14",
        [15] = "+15",
        [16] = "+16",
        [17] = "+17",
        [18] = "+18",
        [19] = "+19",
        [20] = "+20",
        [21] = "+21"
    }

    return mythicLevels
end
MPL_tables.get_mythic_levels = get_mythic_levels

local function get_dungeons()
    local dungeonTable = {
        ["Ruby Life Pools"] = 1,
        ["The Nokhud Offensive"] = 2,
        ["The Azure Vault"] = 3,
        ["Algeth'ar Academy"] = 4,
        ["Halls of Valor"] = 5,
        ["Court of Stars"] = 6,
        ["Temple of the Jade Serpent"] = 7,
        ["Shadowmoon Burial Grounds"] = 8
    }

    return dungeonTable
end
MPL_tables.get_dungeons = get_dungeons

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
        [14] = L["Evoker"]
    }

    return classTable
end
MPL_tables.get_classes = get_classes

local function get_specs()
    local specTable = {
        ["Warrior"] = {
            [1] = "Arms", 
            [2] = "Fury", 
            [3] = "Protection"
        },
        ["Paladin"] = {
            [1] = "Holy",
            [2] = "Protection",
            [3] = "Retribution"
        },
        ["Hunter"] = {
            [1] = "Beast Mastery",
            [2] = "Marksmanship",
            [3] = "Survival"
        },
        ["Rogue"] = {
            [1] = "Assassination",
            [2] = "Outlaw",
            [3] = "Subtlety"
        },
        ["Priest"] = {
            [1] = "Discipline",
            [2] = "Holy",
            [3] = "Shadow"
        },
        ["Death Knight"] = {
            [1] = "Blood",
            [2] = "Frost",
            [3] = "Unholy"
        },
        ["Shaman"] = {
            [1] = "Elemental",
            [2] = "Enhancement",
            [3] = "Restoration"
        },
        ["Mage"] = {
            [1] = "Arcane",
            [2] = "Fire",
            [3] = "Frost"
        },
        ["Warlock"] = {
            [1] = "Affliction",
            [2] = "Demonology",
            [3] = "Destruction"
        },
        ["Monk"] = {
            [1] = "Brewmaster",
            [2] = "Mistweaver",
            [3] = "Windwalker"
        },
        ["Druid"] = {
            [1] = "Balance",
            [2] = "Feral",
            [3] = "Guardian",
            [4] = "Restoration"
        },
        ["Demon Hunter"] = {
            [1] = "Havoc",
            [2] = "Vengeance"
        },
        ["Evoker"] = {
            [1] = "Devastation",
            [2] = "Preservation"
        }
    }

    return specTable
end
MPL_tables.get_specs = get_specs

function get_items()
    local dungeonItems = {
        ["Mage"] = {
            ["Arcane"] = {
                [193691] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193748] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193750] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193755] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193757] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193761] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193762] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193763] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193766] = {
                    ["armor"] = "None",
                    ["slot"] = "Off-Hand",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193676] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193677] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193678] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193683] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193687] = {
                    ["armor"] = "None",
                    ["slot"] = "One-Hand",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193690] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193696] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193697] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193699] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193628] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Azure Vault",
                },
                [193629] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "The Azure Vault",
                },
                [193632] = {
                    ["armor"] = "None",
                    ["slot"] = "One-Hand",
                    ["dungeon"] = "The Azure Vault",
                },
                [193633] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "The Azure Vault",
                },
                [193635] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "The Azure Vault",
                },
                [193639] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Azure Vault",
                },
                [193641] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "The Azure Vault",
                },
                [193647] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "The Azure Vault",
                },
                [193648] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "The Azure Vault",
                },
                [193703] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193707] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193708] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193709] = {
                    ["armor"] = "None",
                    ["slot"] = "Off-Hand",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193710] = {
                    ["armor"] = "None",
                    ["slot"] = "One-Hand",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193712] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193713] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193718] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193720] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [133609] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Halls of Valor",
                },
                [133610] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Halls of Valor",
                },
                [133613] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Halls of Valor",
                },
                [133633] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Halls of Valor",
                },
                [133638] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Halls of Valor",
                },
                [133639] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Halls of Valor",
                },
                [133641] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133642] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133646] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133679] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Halls of Valor",
                },
                [133765] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Halls of Valor",
                },
                [133767] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Halls of Valor",
                },
                [134216] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "Halls of Valor",
                },
                [134217] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Halls of Valor",
                },
                [134219] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Halls of Valor",
                },
                [134222] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Halls of Valor",
                },
                [136774] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Halls of Valor",
                },
                [136775] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Halls of Valor",
                },
                [139280] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Halls of Valor",
                },
                [134308] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Court of Stars",
                },
                [134310] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Court of Stars",
                },
                [134392] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "Court of Stars",
                },
                [134415] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Court of Stars",
                },
                [134432] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Court of Stars",
                },
                [134529] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Court of Stars",
                },
                [134542] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Court of Stars",
                },
                [137483] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Court of Stars",
                },
                [137484] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Court of Stars",
                },
                [137485] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Court of Stars",
                },
                [137486] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Court of Stars",
                },
                [137487] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Court of Stars",
                },
                [137488] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Court of Stars",
                },
                [137496] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Court of Stars",
                },
                [139299] = {
                    ["armor"] = "None",
                    ["slot"] = "Head",
                    ["dungeon"] = "Court of Stars",
                },
                [109763] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109764] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109765] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109766] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109767] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109768] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109769] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109770] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109780] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109781] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109784] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109785] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109786] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109796] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109797] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109824] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109825] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109826] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109827] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109828] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109844] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109845] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109846] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109847] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109861] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109864] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109865] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109866] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109867] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109881] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109899] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109900] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109901] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109902] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109903] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109907] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109908] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109909] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109910] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109911] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109925] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109926] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109927] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109954] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109955] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109956] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109957] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109958] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109959] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109960] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109961] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109970] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109971] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109972] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109973] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109974] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [110007] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [110035] = {
                    ["armor"] = "None",
                    ["slot"] = "Off-Hand",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [110039] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [122240] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [80864] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80866] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80874] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81123] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81124] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81127] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81128] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81129] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81131] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81132] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
            },
            ["Fire"] = {
                [193691] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193748] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193750] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193755] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193757] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193761] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193762] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193763] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193766] = {
                    ["armor"] = "None",
                    ["slot"] = "Off-Hand",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193676] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193677] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193678] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193683] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193687] = {
                    ["armor"] = "None",
                    ["slot"] = "One-Hand",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193690] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193696] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193697] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193699] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193628] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Azure Vault",
                },
                [193629] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "The Azure Vault",
                },
                [193632] = {
                    ["armor"] = "None",
                    ["slot"] = "One-Hand",
                    ["dungeon"] = "The Azure Vault",
                },
                [193633] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "The Azure Vault",
                },
                [193635] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "The Azure Vault",
                },
                [193639] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Azure Vault",
                },
                [193641] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "The Azure Vault",
                },
                [193647] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "The Azure Vault",
                },
                [193648] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "The Azure Vault",
                },
                [193703] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193707] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193708] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193709] = {
                    ["armor"] = "None",
                    ["slot"] = "Off-Hand",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193710] = {
                    ["armor"] = "None",
                    ["slot"] = "One-Hand",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193712] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193713] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193718] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193720] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [133609] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Halls of Valor",
                },
                [133610] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Halls of Valor",
                },
                [133613] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Halls of Valor",
                },
                [133633] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Halls of Valor",
                },
                [133638] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Halls of Valor",
                },
                [133639] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Halls of Valor",
                },
                [133641] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133642] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133646] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133679] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Halls of Valor",
                },
                [133765] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Halls of Valor",
                },
                [133767] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Halls of Valor",
                },
                [134216] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "Halls of Valor",
                },
                [134217] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Halls of Valor",
                },
                [134219] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Halls of Valor",
                },
                [134222] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Halls of Valor",
                },
                [136774] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Halls of Valor",
                },
                [136775] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Halls of Valor",
                },
                [139280] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Halls of Valor",
                },
                [134308] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Court of Stars",
                },
                [134310] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Court of Stars",
                },
                [134392] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "Court of Stars",
                },
                [134415] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Court of Stars",
                },
                [134432] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Court of Stars",
                },
                [134529] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Court of Stars",
                },
                [134542] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Court of Stars",
                },
                [137483] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Court of Stars",
                },
                [137484] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Court of Stars",
                },
                [137485] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Court of Stars",
                },
                [137486] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Court of Stars",
                },
                [137487] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Court of Stars",
                },
                [137488] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Court of Stars",
                },
                [137496] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Court of Stars",
                },
                [139299] = {
                    ["armor"] = "None",
                    ["slot"] = "Head",
                    ["dungeon"] = "Court of Stars",
                },
                [109763] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109764] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109765] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109766] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109767] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109768] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109769] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109770] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109780] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109781] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109784] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109785] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109786] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109796] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109797] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109824] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109825] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109826] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109827] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109828] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109844] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109845] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109846] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109847] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109861] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109864] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109865] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109866] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109867] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109881] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109899] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109900] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109901] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109902] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109903] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109907] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109908] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109909] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109910] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109911] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109925] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109926] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109927] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109954] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109955] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109956] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109957] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109958] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109959] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109960] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109961] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109970] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109971] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109972] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109973] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109974] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [110007] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [110035] = {
                    ["armor"] = "None",
                    ["slot"] = "Off-Hand",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [110039] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [122240] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [80864] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80866] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80874] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81123] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81124] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81127] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81128] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81129] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81131] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81132] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
            },
            ["Frost"] = {
                [193691] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193748] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193750] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193755] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193757] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193761] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193762] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193763] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193766] = {
                    ["armor"] = "None",
                    ["slot"] = "Off-Hand",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193676] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193677] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193678] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193683] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193687] = {
                    ["armor"] = "None",
                    ["slot"] = "One-Hand",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193690] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193696] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193697] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193699] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193628] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Azure Vault",
                },
                [193629] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "The Azure Vault",
                },
                [193632] = {
                    ["armor"] = "None",
                    ["slot"] = "One-Hand",
                    ["dungeon"] = "The Azure Vault",
                },
                [193633] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "The Azure Vault",
                },
                [193635] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "The Azure Vault",
                },
                [193639] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Azure Vault",
                },
                [193641] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "The Azure Vault",
                },
                [193647] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "The Azure Vault",
                },
                [193648] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "The Azure Vault",
                },
                [193703] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193707] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193708] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193709] = {
                    ["armor"] = "None",
                    ["slot"] = "Off-Hand",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193710] = {
                    ["armor"] = "None",
                    ["slot"] = "One-Hand",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193712] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193713] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193718] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193720] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [133609] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Halls of Valor",
                },
                [133610] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Halls of Valor",
                },
                [133613] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Halls of Valor",
                },
                [133633] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Halls of Valor",
                },
                [133638] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Halls of Valor",
                },
                [133639] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Halls of Valor",
                },
                [133641] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133642] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133646] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133679] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Halls of Valor",
                },
                [133765] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Halls of Valor",
                },
                [133767] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Halls of Valor",
                },
                [134216] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "Halls of Valor",
                },
                [134217] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Halls of Valor",
                },
                [134219] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Halls of Valor",
                },
                [134222] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Halls of Valor",
                },
                [136774] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Halls of Valor",
                },
                [136775] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Halls of Valor",
                },
                [139280] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Halls of Valor",
                },
                [134308] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Court of Stars",
                },
                [134310] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Court of Stars",
                },
                [134392] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "Court of Stars",
                },
                [134415] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Court of Stars",
                },
                [134432] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Court of Stars",
                },
                [134529] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Court of Stars",
                },
                [134542] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Court of Stars",
                },
                [137483] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Court of Stars",
                },
                [137484] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Court of Stars",
                },
                [137485] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Court of Stars",
                },
                [137486] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Court of Stars",
                },
                [137487] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Court of Stars",
                },
                [137488] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Court of Stars",
                },
                [137496] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Court of Stars",
                },
                [139299] = {
                    ["armor"] = "None",
                    ["slot"] = "Head",
                    ["dungeon"] = "Court of Stars",
                },
                [109763] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109764] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109765] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109766] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109767] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109768] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109769] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109770] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109780] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109781] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109784] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109785] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109786] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109796] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109797] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109824] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109825] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109826] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109827] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109828] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109844] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109845] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109846] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109847] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109861] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109864] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109865] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109866] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109867] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109881] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109899] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109900] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109901] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109902] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109903] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109907] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109908] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109909] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109910] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109911] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109925] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109926] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109927] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109954] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109955] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109956] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109957] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109958] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109959] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109960] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109961] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109970] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109971] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109972] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109973] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109974] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [110007] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [110035] = {
                    ["armor"] = "None",
                    ["slot"] = "Off-Hand",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [110039] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [122240] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [80864] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80866] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80874] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81123] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81124] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81127] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81128] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81129] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81131] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81132] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
            },
        },
        ["Warlock"] = {
            ["Affliction"] = {
                [193691] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193748] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193750] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193755] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193757] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193761] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193762] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193763] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193766] = {
                    ["armor"] = "None",
                    ["slot"] = "Off-Hand",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193676] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193677] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193678] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193683] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193687] = {
                    ["armor"] = "None",
                    ["slot"] = "One-Hand",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193690] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193696] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193697] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193699] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193628] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Azure Vault",
                },
                [193629] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "The Azure Vault",
                },
                [193632] = {
                    ["armor"] = "None",
                    ["slot"] = "One-Hand",
                    ["dungeon"] = "The Azure Vault",
                },
                [193633] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "The Azure Vault",
                },
                [193635] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "The Azure Vault",
                },
                [193639] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Azure Vault",
                },
                [193641] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "The Azure Vault",
                },
                [193647] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "The Azure Vault",
                },
                [193648] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "The Azure Vault",
                },
                [193703] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193707] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193708] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193709] = {
                    ["armor"] = "None",
                    ["slot"] = "Off-Hand",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193710] = {
                    ["armor"] = "None",
                    ["slot"] = "One-Hand",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193712] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193713] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193718] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193720] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [133609] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Halls of Valor",
                },
                [133610] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Halls of Valor",
                },
                [133613] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Halls of Valor",
                },
                [133633] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Halls of Valor",
                },
                [133638] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Halls of Valor",
                },
                [133639] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Halls of Valor",
                },
                [133641] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133642] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133646] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133679] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Halls of Valor",
                },
                [133765] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Halls of Valor",
                },
                [133767] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Halls of Valor",
                },
                [134216] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "Halls of Valor",
                },
                [134217] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Halls of Valor",
                },
                [134219] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Halls of Valor",
                },
                [134222] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Halls of Valor",
                },
                [136774] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Halls of Valor",
                },
                [136775] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Halls of Valor",
                },
                [139280] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Halls of Valor",
                },
                [134308] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Court of Stars",
                },
                [134310] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Court of Stars",
                },
                [134392] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "Court of Stars",
                },
                [134415] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Court of Stars",
                },
                [134432] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Court of Stars",
                },
                [134529] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Court of Stars",
                },
                [134542] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Court of Stars",
                },
                [137483] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Court of Stars",
                },
                [137484] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Court of Stars",
                },
                [137485] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Court of Stars",
                },
                [137486] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Court of Stars",
                },
                [137487] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Court of Stars",
                },
                [137488] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Court of Stars",
                },
                [137496] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Court of Stars",
                },
                [139299] = {
                    ["armor"] = "None",
                    ["slot"] = "Head",
                    ["dungeon"] = "Court of Stars",
                },
                [109763] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109764] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109765] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109766] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109767] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109768] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109769] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109770] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109780] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109781] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109784] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109785] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109786] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109796] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109797] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109824] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109825] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109826] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109827] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109828] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109844] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109845] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109846] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109847] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109861] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109864] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109865] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109866] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109867] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109881] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109899] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109900] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109901] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109902] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109903] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109907] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109908] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109909] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109910] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109911] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109925] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109926] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109927] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109954] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109955] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109956] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109957] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109958] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109959] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109960] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109961] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109970] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109971] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109972] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109973] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109974] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [110007] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [110035] = {
                    ["armor"] = "None",
                    ["slot"] = "Off-Hand",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [110039] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [122240] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [80864] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80866] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80874] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81123] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81124] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81127] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81128] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81129] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81131] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81132] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
            },
            ["Demonology"] = {
                [193691] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193748] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193750] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193755] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193757] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193761] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193762] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193763] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193766] = {
                    ["armor"] = "None",
                    ["slot"] = "Off-Hand",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193676] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193677] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193678] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193683] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193687] = {
                    ["armor"] = "None",
                    ["slot"] = "One-Hand",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193690] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193696] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193697] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193699] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193628] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Azure Vault",
                },
                [193629] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "The Azure Vault",
                },
                [193632] = {
                    ["armor"] = "None",
                    ["slot"] = "One-Hand",
                    ["dungeon"] = "The Azure Vault",
                },
                [193633] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "The Azure Vault",
                },
                [193635] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "The Azure Vault",
                },
                [193639] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Azure Vault",
                },
                [193641] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "The Azure Vault",
                },
                [193647] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "The Azure Vault",
                },
                [193648] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "The Azure Vault",
                },
                [193703] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193707] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193708] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193709] = {
                    ["armor"] = "None",
                    ["slot"] = "Off-Hand",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193710] = {
                    ["armor"] = "None",
                    ["slot"] = "One-Hand",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193712] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193713] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193718] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193720] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [133609] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Halls of Valor",
                },
                [133610] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Halls of Valor",
                },
                [133613] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Halls of Valor",
                },
                [133633] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Halls of Valor",
                },
                [133638] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Halls of Valor",
                },
                [133639] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Halls of Valor",
                },
                [133641] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133642] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133646] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133679] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Halls of Valor",
                },
                [133765] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Halls of Valor",
                },
                [133767] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Halls of Valor",
                },
                [134216] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "Halls of Valor",
                },
                [134217] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Halls of Valor",
                },
                [134219] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Halls of Valor",
                },
                [134222] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Halls of Valor",
                },
                [136774] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Halls of Valor",
                },
                [136775] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Halls of Valor",
                },
                [139280] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Halls of Valor",
                },
                [134308] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Court of Stars",
                },
                [134310] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Court of Stars",
                },
                [134392] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "Court of Stars",
                },
                [134415] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Court of Stars",
                },
                [134432] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Court of Stars",
                },
                [134529] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Court of Stars",
                },
                [134542] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Court of Stars",
                },
                [137483] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Court of Stars",
                },
                [137484] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Court of Stars",
                },
                [137485] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Court of Stars",
                },
                [137486] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Court of Stars",
                },
                [137487] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Court of Stars",
                },
                [137488] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Court of Stars",
                },
                [137496] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Court of Stars",
                },
                [139299] = {
                    ["armor"] = "None",
                    ["slot"] = "Head",
                    ["dungeon"] = "Court of Stars",
                },
                [109763] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109764] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109765] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109766] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109767] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109768] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109769] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109770] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109780] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109781] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109784] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109785] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109786] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109796] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109797] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109824] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109825] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109826] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109827] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109828] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109844] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109845] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109846] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109847] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109861] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109864] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109865] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109866] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109867] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109881] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109899] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109900] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109901] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109902] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109903] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109907] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109908] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109909] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109910] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109911] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109925] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109926] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109927] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109954] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109955] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109956] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109957] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109958] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109959] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109960] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109961] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109970] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109971] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109972] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109973] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109974] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [110007] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [110035] = {
                    ["armor"] = "None",
                    ["slot"] = "Off-Hand",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [110039] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [122240] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [80864] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80866] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80874] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81123] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81124] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81127] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81128] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81129] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81131] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81132] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
            },
            ["Destruction"] = {
                [193691] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193748] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193750] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193755] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193757] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193761] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193762] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193763] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193766] = {
                    ["armor"] = "None",
                    ["slot"] = "Off-Hand",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193676] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193677] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193678] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193683] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193687] = {
                    ["armor"] = "None",
                    ["slot"] = "One-Hand",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193690] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193696] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193697] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193699] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193628] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Azure Vault",
                },
                [193629] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "The Azure Vault",
                },
                [193632] = {
                    ["armor"] = "None",
                    ["slot"] = "One-Hand",
                    ["dungeon"] = "The Azure Vault",
                },
                [193633] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "The Azure Vault",
                },
                [193635] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "The Azure Vault",
                },
                [193639] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Azure Vault",
                },
                [193641] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "The Azure Vault",
                },
                [193647] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "The Azure Vault",
                },
                [193648] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "The Azure Vault",
                },
                [193703] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193707] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193708] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193709] = {
                    ["armor"] = "None",
                    ["slot"] = "Off-Hand",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193710] = {
                    ["armor"] = "None",
                    ["slot"] = "One-Hand",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193712] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193713] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193718] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193720] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [133609] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Halls of Valor",
                },
                [133610] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Halls of Valor",
                },
                [133613] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Halls of Valor",
                },
                [133633] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Halls of Valor",
                },
                [133638] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Halls of Valor",
                },
                [133639] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Halls of Valor",
                },
                [133641] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133642] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133646] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133679] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Halls of Valor",
                },
                [133765] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Halls of Valor",
                },
                [133767] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Halls of Valor",
                },
                [134216] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "Halls of Valor",
                },
                [134217] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Halls of Valor",
                },
                [134219] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Halls of Valor",
                },
                [134222] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Halls of Valor",
                },
                [136774] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Halls of Valor",
                },
                [136775] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Halls of Valor",
                },
                [139280] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Halls of Valor",
                },
                [134308] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Court of Stars",
                },
                [134310] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Court of Stars",
                },
                [134392] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "Court of Stars",
                },
                [134415] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Court of Stars",
                },
                [134432] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Court of Stars",
                },
                [134529] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Court of Stars",
                },
                [134542] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Court of Stars",
                },
                [137483] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Court of Stars",
                },
                [137484] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Court of Stars",
                },
                [137485] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Court of Stars",
                },
                [137486] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Court of Stars",
                },
                [137487] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Court of Stars",
                },
                [137488] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Court of Stars",
                },
                [137496] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Court of Stars",
                },
                [139299] = {
                    ["armor"] = "None",
                    ["slot"] = "Head",
                    ["dungeon"] = "Court of Stars",
                },
                [109763] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109764] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109765] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109766] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109767] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109768] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109769] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109770] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109780] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109781] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109784] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109785] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109786] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109796] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109797] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109824] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109825] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109826] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109827] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109828] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109844] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109845] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109846] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109847] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109861] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109864] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109865] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109866] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109867] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109881] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109899] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109900] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109901] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109902] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109903] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109907] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109908] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109909] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109910] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109911] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109925] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109926] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109927] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109954] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109955] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109956] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109957] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109958] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109959] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109960] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109961] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109970] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109971] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109972] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109973] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109974] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [110007] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [110035] = {
                    ["armor"] = "None",
                    ["slot"] = "Off-Hand",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [110039] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [122240] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [80864] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80866] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80874] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81123] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81124] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81127] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81128] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81129] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81131] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81132] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
            },
        },
        ["Priest"] = {
            ["Discipline"] = {
                [193691] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193748] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193750] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193755] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193757] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193761] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193762] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193763] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193766] = {
                    ["armor"] = "None",
                    ["slot"] = "Off-Hand",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193676] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193677] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193678] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193683] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193687] = {
                    ["armor"] = "None",
                    ["slot"] = "One-Hand",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193690] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193696] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193697] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193699] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193628] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Azure Vault",
                },
                [193629] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "The Azure Vault",
                },
                [193633] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "The Azure Vault",
                },
                [193635] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "The Azure Vault",
                },
                [193639] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Azure Vault",
                },
                [193641] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "The Azure Vault",
                },
                [193647] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "The Azure Vault",
                },
                [193648] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "The Azure Vault",
                },
                [193703] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193707] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193708] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193709] = {
                    ["armor"] = "None",
                    ["slot"] = "Off-Hand",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193712] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193713] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193718] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193720] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [133609] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Halls of Valor",
                },
                [133610] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Halls of Valor",
                },
                [133613] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Halls of Valor",
                },
                [133633] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Halls of Valor",
                },
                [133638] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Halls of Valor",
                },
                [133639] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Halls of Valor",
                },
                [133641] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133642] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133646] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133679] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Halls of Valor",
                },
                [133765] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Halls of Valor",
                },
                [133767] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Halls of Valor",
                },
                [134216] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "Halls of Valor",
                },
                [134217] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Halls of Valor",
                },
                [134219] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Halls of Valor",
                },
                [134222] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Halls of Valor",
                },
                [136774] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Halls of Valor",
                },
                [136775] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Halls of Valor",
                },
                [139280] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Halls of Valor",
                },
                [134308] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Court of Stars",
                },
                [134310] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Court of Stars",
                },
                [134392] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "Court of Stars",
                },
                [134415] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Court of Stars",
                },
                [134432] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Court of Stars",
                },
                [134529] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Court of Stars",
                },
                [134542] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Court of Stars",
                },
                [137483] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Court of Stars",
                },
                [137484] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Court of Stars",
                },
                [137485] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Court of Stars",
                },
                [137486] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Court of Stars",
                },
                [137487] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Court of Stars",
                },
                [137488] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Court of Stars",
                },
                [137496] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Court of Stars",
                },
                [139299] = {
                    ["armor"] = "None",
                    ["slot"] = "Head",
                    ["dungeon"] = "Court of Stars",
                },
                [109763] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109764] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109765] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109766] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109767] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109768] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109769] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109770] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109780] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109781] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109784] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109785] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109786] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109796] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109797] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109824] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109825] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109826] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109827] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109828] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109844] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109845] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109846] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109847] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109861] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109864] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109865] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109866] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109867] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109881] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109899] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109900] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109901] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109902] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109903] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109907] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109908] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109909] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109910] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109911] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109925] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109926] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109927] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109954] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109955] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109956] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109957] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109958] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109959] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109960] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109961] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109970] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109971] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109972] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109973] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109974] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [110007] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [110035] = {
                    ["armor"] = "None",
                    ["slot"] = "Off-Hand",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [110039] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [122240] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [80864] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80866] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80874] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81123] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81124] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81127] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81128] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81129] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81131] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81132] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [87544] = {
                    ["armor"] = "Plate",
                    ["slot"] = "One-Hand",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
            },
            ["Holy"] = {
                [193691] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193748] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193750] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193755] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193757] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193761] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193762] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193763] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193766] = {
                    ["armor"] = "None",
                    ["slot"] = "Off-Hand",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193676] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193677] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193678] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193683] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193687] = {
                    ["armor"] = "None",
                    ["slot"] = "One-Hand",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193690] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193696] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193697] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193699] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193628] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Azure Vault",
                },
                [193629] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "The Azure Vault",
                },
                [193633] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "The Azure Vault",
                },
                [193635] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "The Azure Vault",
                },
                [193639] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Azure Vault",
                },
                [193641] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "The Azure Vault",
                },
                [193647] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "The Azure Vault",
                },
                [193648] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "The Azure Vault",
                },
                [193703] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193707] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193708] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193709] = {
                    ["armor"] = "None",
                    ["slot"] = "Off-Hand",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193712] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193713] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193718] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193720] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [133609] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Halls of Valor",
                },
                [133610] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Halls of Valor",
                },
                [133613] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Halls of Valor",
                },
                [133633] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Halls of Valor",
                },
                [133638] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Halls of Valor",
                },
                [133639] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Halls of Valor",
                },
                [133641] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133642] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133646] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133679] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Halls of Valor",
                },
                [133765] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Halls of Valor",
                },
                [133767] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Halls of Valor",
                },
                [134216] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "Halls of Valor",
                },
                [134217] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Halls of Valor",
                },
                [134219] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Halls of Valor",
                },
                [134222] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Halls of Valor",
                },
                [136774] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Halls of Valor",
                },
                [136775] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Halls of Valor",
                },
                [139280] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Halls of Valor",
                },
                [134308] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Court of Stars",
                },
                [134310] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Court of Stars",
                },
                [134392] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "Court of Stars",
                },
                [134415] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Court of Stars",
                },
                [134432] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Court of Stars",
                },
                [134529] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Court of Stars",
                },
                [134542] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Court of Stars",
                },
                [137483] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Court of Stars",
                },
                [137484] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Court of Stars",
                },
                [137485] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Court of Stars",
                },
                [137486] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Court of Stars",
                },
                [137487] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Court of Stars",
                },
                [137488] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Court of Stars",
                },
                [137496] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Court of Stars",
                },
                [139299] = {
                    ["armor"] = "None",
                    ["slot"] = "Head",
                    ["dungeon"] = "Court of Stars",
                },
                [109763] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109764] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109765] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109766] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109767] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109768] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109769] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109770] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109780] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109781] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109784] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109785] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109786] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109796] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109797] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109824] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109825] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109826] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109827] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109828] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109844] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109845] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109846] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109847] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109861] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109864] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109865] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109866] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109867] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109881] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109899] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109900] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109901] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109902] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109903] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109907] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109908] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109909] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109910] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109911] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109925] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109926] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109927] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109954] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109955] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109956] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109957] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109958] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109959] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109960] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109961] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109970] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109971] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109972] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109973] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109974] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [110007] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [110035] = {
                    ["armor"] = "None",
                    ["slot"] = "Off-Hand",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [110039] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [122240] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [80864] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80866] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80874] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81123] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81124] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81127] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81128] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81129] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81131] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81132] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [87544] = {
                    ["armor"] = "Plate",
                    ["slot"] = "One-Hand",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
            },
            ["Shadow"] = {
                [193691] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193748] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193750] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193755] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193757] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193761] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193762] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193763] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193766] = {
                    ["armor"] = "None",
                    ["slot"] = "Off-Hand",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193676] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193677] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193678] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193683] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193687] = {
                    ["armor"] = "None",
                    ["slot"] = "One-Hand",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193690] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193696] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193697] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193699] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193628] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Azure Vault",
                },
                [193629] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "The Azure Vault",
                },
                [193633] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "The Azure Vault",
                },
                [193635] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "The Azure Vault",
                },
                [193639] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Azure Vault",
                },
                [193641] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "The Azure Vault",
                },
                [193647] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "The Azure Vault",
                },
                [193648] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "The Azure Vault",
                },
                [193703] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193707] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193708] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193709] = {
                    ["armor"] = "None",
                    ["slot"] = "Off-Hand",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193712] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193713] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193718] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193720] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [133609] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Halls of Valor",
                },
                [133610] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Halls of Valor",
                },
                [133613] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Halls of Valor",
                },
                [133633] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Halls of Valor",
                },
                [133638] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Halls of Valor",
                },
                [133639] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Halls of Valor",
                },
                [133641] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133642] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133646] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133679] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Halls of Valor",
                },
                [133765] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Halls of Valor",
                },
                [133767] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Halls of Valor",
                },
                [134216] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "Halls of Valor",
                },
                [134217] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Halls of Valor",
                },
                [134219] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Halls of Valor",
                },
                [134222] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Halls of Valor",
                },
                [136774] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Halls of Valor",
                },
                [136775] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Halls of Valor",
                },
                [139280] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Halls of Valor",
                },
                [134308] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Court of Stars",
                },
                [134310] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Court of Stars",
                },
                [134392] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "Court of Stars",
                },
                [134415] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Court of Stars",
                },
                [134432] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Court of Stars",
                },
                [134529] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Court of Stars",
                },
                [134542] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Court of Stars",
                },
                [137483] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Court of Stars",
                },
                [137484] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Court of Stars",
                },
                [137485] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Court of Stars",
                },
                [137486] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Court of Stars",
                },
                [137487] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Court of Stars",
                },
                [137488] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Court of Stars",
                },
                [137496] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Court of Stars",
                },
                [139299] = {
                    ["armor"] = "None",
                    ["slot"] = "Head",
                    ["dungeon"] = "Court of Stars",
                },
                [109763] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109764] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109765] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109766] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109767] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109768] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109769] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109770] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109780] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109781] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109784] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109785] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109786] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109796] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109797] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109824] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109825] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109826] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109827] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109828] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109844] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109845] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109846] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109847] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109861] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109864] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109865] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109866] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109867] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109881] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109899] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109900] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109901] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109902] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109903] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109907] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109908] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109909] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109910] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109911] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109925] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109926] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109927] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109954] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109955] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109956] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109957] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109958] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109959] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109960] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109961] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109970] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109971] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109972] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109973] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109974] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [110007] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [110035] = {
                    ["armor"] = "None",
                    ["slot"] = "Off-Hand",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [110039] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [122240] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [80864] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80866] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80874] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81123] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81124] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81127] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81128] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81129] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81131] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81132] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [87544] = {
                    ["armor"] = "Plate",
                    ["slot"] = "One-Hand",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
            },
        },
        ["Druid"] = {
            ["Balance"] = {
                [193748] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193751] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193755] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193757] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193758] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193761] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193762] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193763] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193764] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193766] = {
                    ["armor"] = "None",
                    ["slot"] = "Off-Hand",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193676] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193677] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193678] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193680] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193684] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Legs",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193687] = {
                    ["armor"] = "None",
                    ["slot"] = "One-Hand",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193692] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193696] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193697] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193699] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193628] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Azure Vault",
                },
                [193629] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "The Azure Vault",
                },
                [193633] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "The Azure Vault",
                },
                [193636] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "The Azure Vault",
                },
                [193639] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Azure Vault",
                },
                [193642] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "The Azure Vault",
                },
                [193647] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "The Azure Vault",
                },
                [193649] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "The Azure Vault",
                },
                [193707] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193708] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193709] = {
                    ["armor"] = "None",
                    ["slot"] = "Off-Hand",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193712] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193714] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193718] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193721] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [133615] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Halls of Valor",
                },
                [133617] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Halls of Valor",
                },
                [133620] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Halls of Valor",
                },
                [133621] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Halls of Valor",
                },
                [133633] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Halls of Valor",
                },
                [133638] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Halls of Valor",
                },
                [133639] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Halls of Valor",
                },
                [133641] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133642] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133646] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133679] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Halls of Valor",
                },
                [133765] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Halls of Valor",
                },
                [133767] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Halls of Valor",
                },
                [134192] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Halls of Valor",
                },
                [134193] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Halls of Valor",
                },
                [134194] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Halls of Valor",
                },
                [134196] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Halls of Valor",
                },
                [136776] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Halls of Valor",
                },
                [139281] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Halls of Valor",
                },
                [134280] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Court of Stars",
                },
                [134287] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Court of Stars",
                },
                [134374] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Court of Stars",
                },
                [134447] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Court of Stars",
                },
                [134460] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Court of Stars",
                },
                [134529] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Court of Stars",
                },
                [134542] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Court of Stars",
                },
                [137480] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Court of Stars",
                },
                [137483] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Court of Stars",
                },
                [137484] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Court of Stars",
                },
                [137485] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Court of Stars",
                },
                [137486] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Court of Stars",
                },
                [137487] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Court of Stars",
                },
                [137497] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Court of Stars",
                },
                [139299] = {
                    ["armor"] = "None",
                    ["slot"] = "Head",
                    ["dungeon"] = "Court of Stars",
                },
                [109763] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109764] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109765] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109766] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109767] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109768] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109769] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109770] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109780] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109781] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109787] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109788] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109789] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109798] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109799] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109829] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109830] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109831] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109832] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109842] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109848] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109849] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109850] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109851] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109862] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109868] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109869] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109870] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109871] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109882] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109884] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109885] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109886] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109897] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109898] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109907] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109908] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109909] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109910] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109911] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109925] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109926] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109927] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109954] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109955] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109956] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109957] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109958] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109959] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109960] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109961] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109975] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109976] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109977] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109978] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109979] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [110007] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [110035] = {
                    ["armor"] = "None",
                    ["slot"] = "Off-Hand",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [110039] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [80862] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80866] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80868] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80870] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80874] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81123] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81124] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81126] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81128] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81129] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81131] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [87544] = {
                    ["armor"] = "Plate",
                    ["slot"] = "One-Hand",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
            },
            ["Feral"] = {
                [193748] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193751] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193755] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193757] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193758] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193762] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193763] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193764] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193676] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193680] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193684] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Legs",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193689] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193692] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193696] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193697] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193629] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "The Azure Vault",
                },
                [193633] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "The Azure Vault",
                },
                [193634] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Azure Vault",
                },
                [193636] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "The Azure Vault",
                },
                [193642] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "The Azure Vault",
                },
                [193647] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "The Azure Vault",
                },
                [193649] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "The Azure Vault",
                },
                [193651] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "The Azure Vault",
                },
                [193701] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193708] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193712] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193714] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193721] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193723] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [133615] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Halls of Valor",
                },
                [133617] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Halls of Valor",
                },
                [133620] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Halls of Valor",
                },
                [133621] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Halls of Valor",
                },
                [133633] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Halls of Valor",
                },
                [133638] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Halls of Valor",
                },
                [133639] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Halls of Valor",
                },
                [133641] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133642] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133646] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133647] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133679] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Halls of Valor",
                },
                [133765] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Halls of Valor",
                },
                [133767] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Halls of Valor",
                },
                [134192] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Halls of Valor",
                },
                [134193] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Halls of Valor",
                },
                [134194] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Halls of Valor",
                },
                [134196] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Halls of Valor",
                },
                [136776] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Halls of Valor",
                },
                [136975] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [139281] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Halls of Valor",
                },
                [134280] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Court of Stars",
                },
                [134287] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Court of Stars",
                },
                [134374] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Court of Stars",
                },
                [134447] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Court of Stars",
                },
                [134460] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Court of Stars",
                },
                [134529] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Court of Stars",
                },
                [134542] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Court of Stars",
                },
                [137480] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Court of Stars",
                },
                [137483] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Court of Stars",
                },
                [137486] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Court of Stars",
                },
                [137487] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Court of Stars",
                },
                [137497] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Court of Stars",
                },
                [139299] = {
                    ["armor"] = "None",
                    ["slot"] = "Head",
                    ["dungeon"] = "Court of Stars",
                },
                [109759] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109760] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109761] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109762] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109775] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109776] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109777] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109778] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109779] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109783] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109787] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109788] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109789] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109798] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109799] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109829] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109830] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109831] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109832] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109842] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109848] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109849] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109850] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109851] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109862] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109868] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109869] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109870] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109871] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109882] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109884] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109885] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109886] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109897] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109898] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109904] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109905] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109906] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109915] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109916] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109917] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109918] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109929] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109950] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109951] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109952] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109953] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109965] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109966] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109967] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109969] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109975] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109976] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109977] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109978] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109979] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [80862] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80868] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80870] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81123] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81124] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81125] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81126] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81128] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81129] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81131] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
            },
            ["Guardian"] = {
                [193748] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193751] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193755] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193757] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193758] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193762] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193763] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193764] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193676] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193680] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193684] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Legs",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193689] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193692] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193696] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193697] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193629] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "The Azure Vault",
                },
                [193633] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "The Azure Vault",
                },
                [193634] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Azure Vault",
                },
                [193636] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "The Azure Vault",
                },
                [193642] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "The Azure Vault",
                },
                [193647] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "The Azure Vault",
                },
                [193649] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "The Azure Vault",
                },
                [193651] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "The Azure Vault",
                },
                [193701] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193708] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193712] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193714] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193721] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193723] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [133615] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Halls of Valor",
                },
                [133617] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Halls of Valor",
                },
                [133620] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Halls of Valor",
                },
                [133621] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Halls of Valor",
                },
                [133633] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Halls of Valor",
                },
                [133638] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Halls of Valor",
                },
                [133639] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Halls of Valor",
                },
                [133641] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133642] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133646] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133647] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133679] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Halls of Valor",
                },
                [133765] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Halls of Valor",
                },
                [133767] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Halls of Valor",
                },
                [134192] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Halls of Valor",
                },
                [134193] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Halls of Valor",
                },
                [134194] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Halls of Valor",
                },
                [134196] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Halls of Valor",
                },
                [136776] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Halls of Valor",
                },
                [136975] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [139281] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Halls of Valor",
                },
                [134280] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Court of Stars",
                },
                [134287] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Court of Stars",
                },
                [134374] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Court of Stars",
                },
                [134447] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Court of Stars",
                },
                [134460] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Court of Stars",
                },
                [134529] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Court of Stars",
                },
                [134542] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Court of Stars",
                },
                [137480] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Court of Stars",
                },
                [137483] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Court of Stars",
                },
                [137486] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Court of Stars",
                },
                [137487] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Court of Stars",
                },
                [137497] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Court of Stars",
                },
                [139299] = {
                    ["armor"] = "None",
                    ["slot"] = "Head",
                    ["dungeon"] = "Court of Stars",
                },
                [109759] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109760] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109761] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109762] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109775] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109776] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109777] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109778] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109779] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109783] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109787] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109788] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109789] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109798] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109799] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109829] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109830] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109831] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109832] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109842] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109848] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109849] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109850] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109851] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109862] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109868] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109869] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109870] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109871] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109882] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109884] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109885] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109886] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109897] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109898] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109904] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109905] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109906] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109915] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109916] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109917] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109918] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109929] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109950] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109951] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109952] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109953] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109965] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109966] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109967] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109969] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109975] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109976] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109977] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109978] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109979] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [80862] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80868] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80870] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81123] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81124] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81125] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81126] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81128] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81129] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81131] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
            },
            ["Restoration"] = {
                [193748] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193751] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193755] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193757] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193758] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193761] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193762] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193763] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193764] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193766] = {
                    ["armor"] = "None",
                    ["slot"] = "Off-Hand",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193676] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193677] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193678] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193680] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193684] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Legs",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193687] = {
                    ["armor"] = "None",
                    ["slot"] = "One-Hand",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193692] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193696] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193697] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193699] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193628] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Azure Vault",
                },
                [193629] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "The Azure Vault",
                },
                [193633] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "The Azure Vault",
                },
                [193636] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "The Azure Vault",
                },
                [193639] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Azure Vault",
                },
                [193642] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "The Azure Vault",
                },
                [193647] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "The Azure Vault",
                },
                [193649] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "The Azure Vault",
                },
                [193707] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193708] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193709] = {
                    ["armor"] = "None",
                    ["slot"] = "Off-Hand",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193712] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193714] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193718] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193721] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [133615] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Halls of Valor",
                },
                [133617] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Halls of Valor",
                },
                [133620] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Halls of Valor",
                },
                [133621] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Halls of Valor",
                },
                [133633] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Halls of Valor",
                },
                [133638] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Halls of Valor",
                },
                [133639] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Halls of Valor",
                },
                [133641] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133642] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133646] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133679] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Halls of Valor",
                },
                [133765] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Halls of Valor",
                },
                [133767] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Halls of Valor",
                },
                [134192] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Halls of Valor",
                },
                [134193] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Halls of Valor",
                },
                [134194] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Halls of Valor",
                },
                [134196] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Halls of Valor",
                },
                [136776] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Halls of Valor",
                },
                [139281] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Halls of Valor",
                },
                [134280] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Court of Stars",
                },
                [134287] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Court of Stars",
                },
                [134374] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Court of Stars",
                },
                [134447] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Court of Stars",
                },
                [134460] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Court of Stars",
                },
                [134529] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Court of Stars",
                },
                [134542] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Court of Stars",
                },
                [137480] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Court of Stars",
                },
                [137483] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Court of Stars",
                },
                [137484] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Court of Stars",
                },
                [137485] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Court of Stars",
                },
                [137486] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Court of Stars",
                },
                [137487] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Court of Stars",
                },
                [137497] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Court of Stars",
                },
                [139299] = {
                    ["armor"] = "None",
                    ["slot"] = "Head",
                    ["dungeon"] = "Court of Stars",
                },
                [109763] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109764] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109765] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109766] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109767] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109768] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109769] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109770] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109780] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109781] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109787] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109788] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109789] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109798] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109799] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109829] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109830] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109831] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109832] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109842] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109848] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109849] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109850] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109851] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109862] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109868] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109869] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109870] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109871] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109882] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109884] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109885] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109886] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109897] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109898] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109907] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109908] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109909] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109910] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109911] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109925] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109926] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109927] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109954] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109955] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109956] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109957] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109958] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109959] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109960] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109961] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109975] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109976] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109977] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109978] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109979] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [110007] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [110035] = {
                    ["armor"] = "None",
                    ["slot"] = "Off-Hand",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [110039] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [80862] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80866] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80868] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80870] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80874] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81123] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81124] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81126] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81128] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81129] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81131] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [87544] = {
                    ["armor"] = "Plate",
                    ["slot"] = "One-Hand",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
            },
        },
        ["Rogue"] = {
            ["Assassination"] = {
                [193748] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193751] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193755] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193756] = {
                    ["armor"] = "None",
                    ["slot"] = "One-Hand",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193757] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193758] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193762] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193763] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193764] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193676] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193680] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193684] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Legs",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193689] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193692] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193696] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193697] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193629] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "The Azure Vault",
                },
                [193633] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "The Azure Vault",
                },
                [193634] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Azure Vault",
                },
                [193636] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "The Azure Vault",
                },
                [193642] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "The Azure Vault",
                },
                [193647] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "The Azure Vault",
                },
                [193649] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "The Azure Vault",
                },
                [193701] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193708] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193712] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193714] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193721] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [133615] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Halls of Valor",
                },
                [133617] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Halls of Valor",
                },
                [133620] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Halls of Valor",
                },
                [133621] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Halls of Valor",
                },
                [133633] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Halls of Valor",
                },
                [133638] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Halls of Valor",
                },
                [133639] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Halls of Valor",
                },
                [133641] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133642] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133646] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133647] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133679] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Halls of Valor",
                },
                [133765] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Halls of Valor",
                },
                [133767] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Halls of Valor",
                },
                [134192] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Halls of Valor",
                },
                [134193] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Halls of Valor",
                },
                [134194] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Halls of Valor",
                },
                [134196] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Halls of Valor",
                },
                [136776] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Halls of Valor",
                },
                [136975] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [139281] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Halls of Valor",
                },
                [134280] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Court of Stars",
                },
                [134287] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Court of Stars",
                },
                [134374] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Court of Stars",
                },
                [134447] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Court of Stars",
                },
                [134460] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Court of Stars",
                },
                [134529] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Court of Stars",
                },
                [134542] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Court of Stars",
                },
                [137480] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Court of Stars",
                },
                [137483] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Court of Stars",
                },
                [137486] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Court of Stars",
                },
                [137487] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Court of Stars",
                },
                [137497] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Court of Stars",
                },
                [139299] = {
                    ["armor"] = "None",
                    ["slot"] = "Head",
                    ["dungeon"] = "Court of Stars",
                },
                [109759] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109760] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109761] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109762] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109775] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109776] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109777] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109778] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109779] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109783] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109787] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109788] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109789] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109798] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109799] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109829] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109830] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109831] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109832] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109842] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109848] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109849] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109850] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109851] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109862] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109868] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109869] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109870] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109871] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109882] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109884] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109885] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109886] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109897] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109898] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109904] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109905] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109906] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109915] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109916] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109917] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109918] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109929] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109950] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109951] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109952] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109953] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109965] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109966] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109967] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109969] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109975] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109976] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109977] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109978] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109979] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [110038] = {
                    ["armor"] = "None",
                    ["slot"] = "One-Hand",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [80862] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80868] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80870] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81123] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81124] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81125] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81126] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81128] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81129] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81131] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
            },
            ["Outlaw"] = {
                [193748] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193751] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193755] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193757] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193758] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193762] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193763] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193764] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193767] = {
                    ["armor"] = "Plate",
                    ["slot"] = "One-Hand",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193676] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193680] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193684] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Legs",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193689] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193692] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193696] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193697] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193629] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "The Azure Vault",
                },
                [193631] = {
                    ["armor"] = "None",
                    ["slot"] = "One-Hand",
                    ["dungeon"] = "The Azure Vault",
                },
                [193633] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "The Azure Vault",
                },
                [193634] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Azure Vault",
                },
                [193636] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "The Azure Vault",
                },
                [193642] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "The Azure Vault",
                },
                [193646] = {
                    ["armor"] = "None",
                    ["slot"] = "One-Hand",
                    ["dungeon"] = "The Azure Vault",
                },
                [193647] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "The Azure Vault",
                },
                [193649] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "The Azure Vault",
                },
                [193701] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193708] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193712] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193714] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193721] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [133615] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Halls of Valor",
                },
                [133617] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Halls of Valor",
                },
                [133620] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Halls of Valor",
                },
                [133621] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Halls of Valor",
                },
                [133633] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Halls of Valor",
                },
                [133638] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Halls of Valor",
                },
                [133639] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Halls of Valor",
                },
                [133641] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133642] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133646] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133647] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133679] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Halls of Valor",
                },
                [133765] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Halls of Valor",
                },
                [133767] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Halls of Valor",
                },
                [134192] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Halls of Valor",
                },
                [134193] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Halls of Valor",
                },
                [134194] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Halls of Valor",
                },
                [134196] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Halls of Valor",
                },
                [136776] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Halls of Valor",
                },
                [136975] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [139281] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Halls of Valor",
                },
                [134280] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Court of Stars",
                },
                [134287] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Court of Stars",
                },
                [134374] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Court of Stars",
                },
                [134447] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Court of Stars",
                },
                [134460] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Court of Stars",
                },
                [134529] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Court of Stars",
                },
                [134542] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Court of Stars",
                },
                [137480] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Court of Stars",
                },
                [137483] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Court of Stars",
                },
                [137486] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Court of Stars",
                },
                [137487] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Court of Stars",
                },
                [137497] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Court of Stars",
                },
                [139299] = {
                    ["armor"] = "None",
                    ["slot"] = "Head",
                    ["dungeon"] = "Court of Stars",
                },
                [109759] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109760] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109761] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109762] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109775] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109776] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109777] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109778] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109779] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109783] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109787] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109788] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109789] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109798] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109799] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109829] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109830] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109831] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109832] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109842] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109848] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109849] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109850] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109851] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109862] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109868] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109869] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109870] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109871] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109882] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109884] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109885] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109886] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109897] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109898] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109904] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109905] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109906] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109915] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109916] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109917] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109918] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109929] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109950] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109951] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109952] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109953] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109965] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109966] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109967] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109969] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109975] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109976] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109977] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109978] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109979] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [80862] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80868] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80870] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81123] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81124] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81125] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81126] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81128] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81129] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81131] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
            },
            ["Subtlety"] = {
                [193748] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193751] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193755] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193756] = {
                    ["armor"] = "None",
                    ["slot"] = "One-Hand",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193757] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193758] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193762] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193763] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193764] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193676] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193680] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193684] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Legs",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193689] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193692] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193696] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193697] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193629] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "The Azure Vault",
                },
                [193633] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "The Azure Vault",
                },
                [193634] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Azure Vault",
                },
                [193636] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "The Azure Vault",
                },
                [193642] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "The Azure Vault",
                },
                [193647] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "The Azure Vault",
                },
                [193649] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "The Azure Vault",
                },
                [193701] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193708] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193712] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193714] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193721] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [133615] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Halls of Valor",
                },
                [133617] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Halls of Valor",
                },
                [133620] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Halls of Valor",
                },
                [133621] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Halls of Valor",
                },
                [133633] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Halls of Valor",
                },
                [133638] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Halls of Valor",
                },
                [133639] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Halls of Valor",
                },
                [133641] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133642] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133646] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133647] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133679] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Halls of Valor",
                },
                [133765] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Halls of Valor",
                },
                [133767] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Halls of Valor",
                },
                [134192] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Halls of Valor",
                },
                [134193] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Halls of Valor",
                },
                [134194] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Halls of Valor",
                },
                [134196] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Halls of Valor",
                },
                [136776] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Halls of Valor",
                },
                [136975] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [139281] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Halls of Valor",
                },
                [134280] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Court of Stars",
                },
                [134287] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Court of Stars",
                },
                [134374] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Court of Stars",
                },
                [134447] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Court of Stars",
                },
                [134460] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Court of Stars",
                },
                [134529] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Court of Stars",
                },
                [134542] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Court of Stars",
                },
                [137480] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Court of Stars",
                },
                [137483] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Court of Stars",
                },
                [137486] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Court of Stars",
                },
                [137487] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Court of Stars",
                },
                [137497] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Court of Stars",
                },
                [139299] = {
                    ["armor"] = "None",
                    ["slot"] = "Head",
                    ["dungeon"] = "Court of Stars",
                },
                [109759] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109760] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109761] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109762] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109775] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109776] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109777] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109778] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109779] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109783] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109787] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109788] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109789] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109798] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109799] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109829] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109830] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109831] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109832] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109842] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109848] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109849] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109850] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109851] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109862] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109868] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109869] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109870] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109871] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109882] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109884] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109885] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109886] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109897] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109898] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109904] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109905] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109906] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109915] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109916] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109917] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109918] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109929] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109950] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109951] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109952] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109953] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109965] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109966] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109967] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109969] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109975] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109976] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109977] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109978] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109979] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [110038] = {
                    ["armor"] = "None",
                    ["slot"] = "One-Hand",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [80862] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80868] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80870] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81123] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81124] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81125] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81126] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81128] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81129] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81131] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
            },
        },
        ["Monk"] = {
            ["Brewmaster"] = {
                [193748] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193751] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193755] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193757] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193758] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193762] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193763] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193764] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193767] = {
                    ["armor"] = "Plate",
                    ["slot"] = "One-Hand",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193676] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193680] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193684] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Legs",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193689] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193692] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193696] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193697] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193629] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "The Azure Vault",
                },
                [193631] = {
                    ["armor"] = "None",
                    ["slot"] = "One-Hand",
                    ["dungeon"] = "The Azure Vault",
                },
                [193633] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "The Azure Vault",
                },
                [193634] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Azure Vault",
                },
                [193636] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "The Azure Vault",
                },
                [193642] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "The Azure Vault",
                },
                [193646] = {
                    ["armor"] = "None",
                    ["slot"] = "One-Hand",
                    ["dungeon"] = "The Azure Vault",
                },
                [193647] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "The Azure Vault",
                },
                [193649] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "The Azure Vault",
                },
                [193651] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "The Azure Vault",
                },
                [193701] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193708] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193712] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193714] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193721] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193723] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [133615] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Halls of Valor",
                },
                [133617] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Halls of Valor",
                },
                [133620] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Halls of Valor",
                },
                [133621] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Halls of Valor",
                },
                [133633] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Halls of Valor",
                },
                [133638] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Halls of Valor",
                },
                [133639] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Halls of Valor",
                },
                [133641] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133642] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133646] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133647] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133679] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Halls of Valor",
                },
                [133765] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Halls of Valor",
                },
                [133767] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Halls of Valor",
                },
                [134192] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Halls of Valor",
                },
                [134193] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Halls of Valor",
                },
                [134194] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Halls of Valor",
                },
                [134196] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Halls of Valor",
                },
                [136776] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Halls of Valor",
                },
                [136975] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [139281] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Halls of Valor",
                },
                [134280] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Court of Stars",
                },
                [134287] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Court of Stars",
                },
                [134374] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Court of Stars",
                },
                [134447] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Court of Stars",
                },
                [134460] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Court of Stars",
                },
                [134529] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Court of Stars",
                },
                [134542] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Court of Stars",
                },
                [137480] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Court of Stars",
                },
                [137483] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Court of Stars",
                },
                [137486] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Court of Stars",
                },
                [137487] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Court of Stars",
                },
                [137497] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Court of Stars",
                },
                [139299] = {
                    ["armor"] = "None",
                    ["slot"] = "Head",
                    ["dungeon"] = "Court of Stars",
                },
                [109759] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109760] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109761] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109762] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109775] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109776] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109777] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109778] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109779] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109783] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109787] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109788] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109789] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109798] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109799] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109829] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109830] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109831] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109832] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109842] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109848] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109849] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109850] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109851] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109862] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109868] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109869] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109870] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109871] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109882] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109884] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109885] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109886] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109897] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109898] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109904] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109905] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109906] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109915] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109916] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109917] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109918] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109929] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109950] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109951] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109952] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109953] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109965] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109966] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109967] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109969] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109975] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109976] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109977] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109978] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109979] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [80862] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80868] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80870] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81123] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81124] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81125] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81126] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81128] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81129] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81131] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
            },
            ["Windwalker"] = {
                [193748] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193751] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193755] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193757] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193758] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193762] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193763] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193764] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193767] = {
                    ["armor"] = "Plate",
                    ["slot"] = "One-Hand",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193676] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193680] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193684] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Legs",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193689] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193692] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193696] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193697] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193629] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "The Azure Vault",
                },
                [193631] = {
                    ["armor"] = "None",
                    ["slot"] = "One-Hand",
                    ["dungeon"] = "The Azure Vault",
                },
                [193633] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "The Azure Vault",
                },
                [193634] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Azure Vault",
                },
                [193636] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "The Azure Vault",
                },
                [193642] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "The Azure Vault",
                },
                [193646] = {
                    ["armor"] = "None",
                    ["slot"] = "One-Hand",
                    ["dungeon"] = "The Azure Vault",
                },
                [193647] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "The Azure Vault",
                },
                [193649] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "The Azure Vault",
                },
                [193651] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "The Azure Vault",
                },
                [193701] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193708] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193712] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193714] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193721] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193723] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [133615] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Halls of Valor",
                },
                [133617] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Halls of Valor",
                },
                [133620] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Halls of Valor",
                },
                [133621] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Halls of Valor",
                },
                [133633] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Halls of Valor",
                },
                [133638] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Halls of Valor",
                },
                [133639] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Halls of Valor",
                },
                [133641] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133642] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133646] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133647] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133679] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Halls of Valor",
                },
                [133765] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Halls of Valor",
                },
                [133767] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Halls of Valor",
                },
                [134192] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Halls of Valor",
                },
                [134193] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Halls of Valor",
                },
                [134194] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Halls of Valor",
                },
                [134196] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Halls of Valor",
                },
                [136776] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Halls of Valor",
                },
                [136975] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [139281] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Halls of Valor",
                },
                [134280] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Court of Stars",
                },
                [134287] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Court of Stars",
                },
                [134374] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Court of Stars",
                },
                [134447] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Court of Stars",
                },
                [134460] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Court of Stars",
                },
                [134529] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Court of Stars",
                },
                [134542] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Court of Stars",
                },
                [137480] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Court of Stars",
                },
                [137483] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Court of Stars",
                },
                [137486] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Court of Stars",
                },
                [137487] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Court of Stars",
                },
                [137497] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Court of Stars",
                },
                [139299] = {
                    ["armor"] = "None",
                    ["slot"] = "Head",
                    ["dungeon"] = "Court of Stars",
                },
                [109759] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109760] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109761] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109762] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109775] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109776] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109777] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109778] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109779] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109783] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109787] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109788] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109789] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109798] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109799] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109829] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109830] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109831] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109832] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109842] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109848] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109849] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109850] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109851] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109862] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109868] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109869] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109870] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109871] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109882] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109884] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109885] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109886] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109897] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109898] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109904] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109905] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109906] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109915] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109916] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109917] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109918] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109929] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109950] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109951] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109952] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109953] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109965] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109966] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109967] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109969] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109975] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109976] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109977] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109978] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109979] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [80862] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80868] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80870] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81123] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81124] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81125] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81126] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81128] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81129] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81131] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
            },
            ["Mistweaver"] = {
                [193748] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193751] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193755] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193757] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193758] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193761] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193762] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193763] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193764] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193766] = {
                    ["armor"] = "None",
                    ["slot"] = "Off-Hand",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193676] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193677] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193678] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193680] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193684] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Legs",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193692] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193696] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193697] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193699] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193628] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Azure Vault",
                },
                [193629] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "The Azure Vault",
                },
                [193632] = {
                    ["armor"] = "None",
                    ["slot"] = "One-Hand",
                    ["dungeon"] = "The Azure Vault",
                },
                [193633] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "The Azure Vault",
                },
                [193636] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "The Azure Vault",
                },
                [193639] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Azure Vault",
                },
                [193642] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "The Azure Vault",
                },
                [193647] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "The Azure Vault",
                },
                [193649] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "The Azure Vault",
                },
                [193707] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193708] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193709] = {
                    ["armor"] = "None",
                    ["slot"] = "Off-Hand",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193710] = {
                    ["armor"] = "None",
                    ["slot"] = "One-Hand",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193712] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193714] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193718] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193721] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [133615] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Halls of Valor",
                },
                [133617] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Halls of Valor",
                },
                [133620] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Halls of Valor",
                },
                [133621] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Halls of Valor",
                },
                [133633] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Halls of Valor",
                },
                [133638] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Halls of Valor",
                },
                [133639] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Halls of Valor",
                },
                [133641] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133642] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133646] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133679] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Halls of Valor",
                },
                [133765] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Halls of Valor",
                },
                [133767] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Halls of Valor",
                },
                [134192] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Halls of Valor",
                },
                [134193] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Halls of Valor",
                },
                [134194] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Halls of Valor",
                },
                [134196] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Halls of Valor",
                },
                [136776] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Halls of Valor",
                },
                [139281] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Halls of Valor",
                },
                [134280] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Court of Stars",
                },
                [134287] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Court of Stars",
                },
                [134374] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Court of Stars",
                },
                [134447] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Court of Stars",
                },
                [134460] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Court of Stars",
                },
                [134529] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Court of Stars",
                },
                [134542] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Court of Stars",
                },
                [137480] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Court of Stars",
                },
                [137483] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Court of Stars",
                },
                [137484] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Court of Stars",
                },
                [137485] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Court of Stars",
                },
                [137486] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Court of Stars",
                },
                [137487] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Court of Stars",
                },
                [137497] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Court of Stars",
                },
                [139299] = {
                    ["armor"] = "None",
                    ["slot"] = "Head",
                    ["dungeon"] = "Court of Stars",
                },
                [109763] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109764] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109765] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109766] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109767] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109768] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109769] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109770] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109780] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109781] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109787] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109788] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109789] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109798] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109799] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109829] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109830] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109831] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109832] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109842] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109848] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109849] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109850] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109851] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109862] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109868] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109869] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109870] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109871] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109882] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109884] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109885] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109886] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109897] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109898] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109907] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109908] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109909] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109910] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109911] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109925] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109926] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109927] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109954] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109955] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109956] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109957] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109958] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109959] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109960] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109961] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109975] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109976] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109977] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109978] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109979] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [110007] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [110035] = {
                    ["armor"] = "None",
                    ["slot"] = "Off-Hand",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [110039] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [80862] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80866] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80868] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80870] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80874] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81123] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81124] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81126] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81128] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81129] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81131] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [87544] = {
                    ["armor"] = "Plate",
                    ["slot"] = "One-Hand",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
            },
        },
        ["Demon Hunter"] = {
            ["Havoc"] = {
                [193748] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193751] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193755] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193757] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193758] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193762] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193763] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193764] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193676] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193680] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193684] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Legs",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193688] = {
                    ["armor"] = "None",
                    ["slot"] = "One-Hand",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193689] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193692] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193696] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193697] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193629] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "The Azure Vault",
                },
                [193631] = {
                    ["armor"] = "None",
                    ["slot"] = "One-Hand",
                    ["dungeon"] = "The Azure Vault",
                },
                [193633] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "The Azure Vault",
                },
                [193634] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Azure Vault",
                },
                [193636] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "The Azure Vault",
                },
                [193642] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "The Azure Vault",
                },
                [193646] = {
                    ["armor"] = "None",
                    ["slot"] = "One-Hand",
                    ["dungeon"] = "The Azure Vault",
                },
                [193647] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "The Azure Vault",
                },
                [193649] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "The Azure Vault",
                },
                [193701] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193708] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193712] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193714] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193717] = {
                    ["armor"] = "None",
                    ["slot"] = "One-Hand",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193721] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [133615] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Halls of Valor",
                },
                [133617] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Halls of Valor",
                },
                [133620] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Halls of Valor",
                },
                [133621] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Halls of Valor",
                },
                [133633] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Halls of Valor",
                },
                [133638] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Halls of Valor",
                },
                [133639] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Halls of Valor",
                },
                [133641] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133642] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133646] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133647] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133679] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Halls of Valor",
                },
                [133765] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Halls of Valor",
                },
                [133767] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Halls of Valor",
                },
                [134192] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Halls of Valor",
                },
                [134193] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Halls of Valor",
                },
                [134194] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Halls of Valor",
                },
                [134196] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Halls of Valor",
                },
                [136776] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Halls of Valor",
                },
                [136975] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [139281] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Halls of Valor",
                },
                [134280] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Court of Stars",
                },
                [134287] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Court of Stars",
                },
                [134374] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Court of Stars",
                },
                [134447] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Court of Stars",
                },
                [134460] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Court of Stars",
                },
                [134529] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Court of Stars",
                },
                [134542] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Court of Stars",
                },
                [137480] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Court of Stars",
                },
                [137483] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Court of Stars",
                },
                [137486] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Court of Stars",
                },
                [137487] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Court of Stars",
                },
                [137497] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Court of Stars",
                },
                [139299] = {
                    ["armor"] = "None",
                    ["slot"] = "Head",
                    ["dungeon"] = "Court of Stars",
                },
                [109759] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109760] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109761] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109762] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109775] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109776] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109777] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109778] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109779] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109783] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109787] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109788] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109789] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109798] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109799] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109829] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109830] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109831] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109832] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109842] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109848] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109849] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109850] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109851] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109862] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109868] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109869] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109870] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109871] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109882] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109884] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109885] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109886] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109897] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109898] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109904] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109905] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109906] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109915] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109916] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109917] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109918] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109929] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109950] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109951] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109952] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109953] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109965] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109966] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109967] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109969] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109975] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109976] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109977] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109978] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109979] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [80862] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80868] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80870] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81123] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81124] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81125] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81126] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81128] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81129] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81131] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
            },
            ["Vengeance"] = {
                [193748] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193762] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193676] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193696] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193697] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193633] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "The Azure Vault",
                },
                [193647] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "The Azure Vault",
                },
                [193708] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [133633] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Halls of Valor",
                },
                [133638] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Halls of Valor",
                },
                [133641] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133642] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133646] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133679] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Halls of Valor",
                },
                [133767] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Halls of Valor",
                },
                [134529] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Court of Stars",
                },
                [134542] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Court of Stars",
                },
                [137486] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Court of Stars",
                },
                [137487] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Court of Stars",
                },
                [139299] = {
                    ["armor"] = "None",
                    ["slot"] = "Head",
                    ["dungeon"] = "Court of Stars",
                },
                [81124] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81128] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81131] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
            },
        },
        ["Hunter"] = {
            ["Beast Mastery"] = {
                [193748] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193752] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193755] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193757] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193759] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193762] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193763] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193765] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Head",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193676] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193681] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Ranged",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193685] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Feet",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193689] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193693] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193696] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193697] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193629] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "The Azure Vault",
                },
                [193633] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "The Azure Vault",
                },
                [193634] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Azure Vault",
                },
                [193637] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "The Azure Vault",
                },
                [193643] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Legs",
                    ["dungeon"] = "The Azure Vault",
                },
                [193647] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "The Azure Vault",
                },
                [193701] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193704] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193708] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193712] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193715] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193722] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [133622] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Halls of Valor",
                },
                [133623] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Halls of Valor",
                },
                [133626] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Halls of Valor",
                },
                [133633] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Halls of Valor",
                },
                [133638] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Halls of Valor",
                },
                [133639] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Halls of Valor",
                },
                [133641] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133642] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133646] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133647] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133679] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Halls of Valor",
                },
                [133765] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Halls of Valor",
                },
                [133767] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Halls of Valor",
                },
                [133805] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Halls of Valor",
                },
                [134207] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Halls of Valor",
                },
                [134209] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Halls of Valor",
                },
                [134212] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Halls of Valor",
                },
                [134213] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Halls of Valor",
                },
                [136777] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Head",
                    ["dungeon"] = "Halls of Valor",
                },
                [136975] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [139282] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Halls of Valor",
                },
                [134296] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Court of Stars",
                },
                [134298] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Court of Stars",
                },
                [134385] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Court of Stars",
                },
                [134473] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Head",
                    ["dungeon"] = "Court of Stars",
                },
                [134480] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Court of Stars",
                },
                [134529] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Court of Stars",
                },
                [134542] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Court of Stars",
                },
                [137483] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Court of Stars",
                },
                [137486] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Court of Stars",
                },
                [137487] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Court of Stars",
                },
                [137489] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Court of Stars",
                },
                [137498] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Court of Stars",
                },
                [139299] = {
                    ["armor"] = "None",
                    ["slot"] = "Head",
                    ["dungeon"] = "Court of Stars",
                },
                [109759] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109760] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109761] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109762] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109775] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109776] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109777] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109778] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109779] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109783] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109790] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109791] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109792] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109800] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109801] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109833] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109834] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109835] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109836] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109843] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109852] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109853] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109854] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109855] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109863] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109872] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109873] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109874] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109875] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109883] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109887] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109888] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109889] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109890] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109891] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109904] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109905] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109906] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109915] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109916] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109917] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109918] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109929] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109950] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109951] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109952] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109953] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109965] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109966] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109967] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109969] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109980] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109981] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109982] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109983] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109984] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [110037] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Ranged",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [80860] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Head",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80865] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80869] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80871] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80872] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Ranged",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81123] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81124] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81125] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81128] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81129] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81131] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
            },
            ["Marksmanship"] = {
                [193748] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193752] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193755] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193757] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193759] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193762] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193763] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193765] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Head",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193676] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193681] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Ranged",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193685] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Feet",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193689] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193693] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193696] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193697] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193629] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "The Azure Vault",
                },
                [193633] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "The Azure Vault",
                },
                [193634] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Azure Vault",
                },
                [193637] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "The Azure Vault",
                },
                [193643] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Legs",
                    ["dungeon"] = "The Azure Vault",
                },
                [193647] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "The Azure Vault",
                },
                [193701] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193704] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193708] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193712] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193715] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193722] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [133622] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Halls of Valor",
                },
                [133623] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Halls of Valor",
                },
                [133626] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Halls of Valor",
                },
                [133633] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Halls of Valor",
                },
                [133638] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Halls of Valor",
                },
                [133639] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Halls of Valor",
                },
                [133641] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133642] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133646] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133647] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133679] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Halls of Valor",
                },
                [133765] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Halls of Valor",
                },
                [133767] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Halls of Valor",
                },
                [133805] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Halls of Valor",
                },
                [134207] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Halls of Valor",
                },
                [134209] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Halls of Valor",
                },
                [134212] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Halls of Valor",
                },
                [134213] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Halls of Valor",
                },
                [136777] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Head",
                    ["dungeon"] = "Halls of Valor",
                },
                [136975] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [139282] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Halls of Valor",
                },
                [134296] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Court of Stars",
                },
                [134298] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Court of Stars",
                },
                [134385] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Court of Stars",
                },
                [134473] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Head",
                    ["dungeon"] = "Court of Stars",
                },
                [134480] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Court of Stars",
                },
                [134529] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Court of Stars",
                },
                [134542] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Court of Stars",
                },
                [137483] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Court of Stars",
                },
                [137486] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Court of Stars",
                },
                [137487] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Court of Stars",
                },
                [137489] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Court of Stars",
                },
                [137498] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Court of Stars",
                },
                [139299] = {
                    ["armor"] = "None",
                    ["slot"] = "Head",
                    ["dungeon"] = "Court of Stars",
                },
                [109759] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109760] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109761] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109762] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109775] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109776] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109777] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109778] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109779] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109783] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109790] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109791] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109792] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109800] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109801] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109833] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109834] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109835] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109836] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109843] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109852] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109853] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109854] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109855] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109863] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109872] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109873] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109874] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109875] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109883] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109887] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109888] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109889] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109890] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109891] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109904] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109905] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109906] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109915] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109916] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109917] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109918] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109929] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109950] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109951] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109952] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109953] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109965] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109966] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109967] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109969] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109980] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109981] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109982] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109983] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109984] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [110037] = {
                    ["armor"] = "Leather",
                    ["slot"] = "Ranged",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [80860] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Head",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80865] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80869] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80871] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80872] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Ranged",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81123] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81124] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81125] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81128] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81129] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81131] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
            },
            ["Survival"] = {
                [193748] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193752] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193755] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193757] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193759] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193762] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193763] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193765] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Head",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193676] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193685] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Feet",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193689] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193693] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193696] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193697] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193629] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "The Azure Vault",
                },
                [193633] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "The Azure Vault",
                },
                [193634] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Azure Vault",
                },
                [193637] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "The Azure Vault",
                },
                [193643] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Legs",
                    ["dungeon"] = "The Azure Vault",
                },
                [193647] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "The Azure Vault",
                },
                [193651] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "The Azure Vault",
                },
                [193701] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193704] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193708] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193712] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193715] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193722] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193723] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [133622] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Halls of Valor",
                },
                [133623] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Halls of Valor",
                },
                [133626] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Halls of Valor",
                },
                [133633] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Halls of Valor",
                },
                [133638] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Halls of Valor",
                },
                [133639] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Halls of Valor",
                },
                [133641] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133642] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133646] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133647] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133679] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Halls of Valor",
                },
                [133765] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Halls of Valor",
                },
                [133767] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Halls of Valor",
                },
                [133805] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Halls of Valor",
                },
                [134207] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Halls of Valor",
                },
                [134209] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Halls of Valor",
                },
                [134212] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Halls of Valor",
                },
                [134213] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Halls of Valor",
                },
                [136777] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Head",
                    ["dungeon"] = "Halls of Valor",
                },
                [136975] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [139282] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Halls of Valor",
                },
                [134296] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Court of Stars",
                },
                [134298] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Court of Stars",
                },
                [134385] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Court of Stars",
                },
                [134473] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Head",
                    ["dungeon"] = "Court of Stars",
                },
                [134480] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Court of Stars",
                },
                [134529] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Court of Stars",
                },
                [134542] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Court of Stars",
                },
                [137483] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Court of Stars",
                },
                [137486] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Court of Stars",
                },
                [137487] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Court of Stars",
                },
                [137489] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Court of Stars",
                },
                [137498] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Court of Stars",
                },
                [139299] = {
                    ["armor"] = "None",
                    ["slot"] = "Head",
                    ["dungeon"] = "Court of Stars",
                },
                [109759] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109760] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109761] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109762] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109775] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109776] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109777] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109778] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109779] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109783] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109790] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109791] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109792] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109800] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109801] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109833] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109834] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109835] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109836] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109843] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109852] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109853] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109854] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109855] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109863] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109872] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109873] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109874] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109875] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109883] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109887] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109888] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109889] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109890] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109891] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109904] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109905] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109906] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109915] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109916] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109917] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109918] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109929] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109950] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109951] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109952] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109953] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109965] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109966] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109967] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109969] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109980] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109981] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109982] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109983] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109984] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [80860] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Head",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80865] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80869] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80871] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81123] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81124] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81125] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81128] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81129] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81131] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
            },
        },
        ["Shaman"] = {
            ["Elemental"] = {
                [193748] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193752] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193754] = {
                    ["armor"] = "None",
                    ["slot"] = "Shield",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193755] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193757] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193759] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193761] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193762] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193763] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193765] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Head",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193766] = {
                    ["armor"] = "None",
                    ["slot"] = "Off-Hand",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193676] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193677] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193678] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193685] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Feet",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193687] = {
                    ["armor"] = "None",
                    ["slot"] = "One-Hand",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193693] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193696] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193697] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193699] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193628] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Azure Vault",
                },
                [193629] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "The Azure Vault",
                },
                [193633] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "The Azure Vault",
                },
                [193637] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "The Azure Vault",
                },
                [193639] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Azure Vault",
                },
                [193643] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Legs",
                    ["dungeon"] = "The Azure Vault",
                },
                [193645] = {
                    ["armor"] = "None",
                    ["slot"] = "Shield",
                    ["dungeon"] = "The Azure Vault",
                },
                [193647] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "The Azure Vault",
                },
                [193704] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193707] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193708] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193709] = {
                    ["armor"] = "None",
                    ["slot"] = "Off-Hand",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193712] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193715] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193718] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193722] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [133622] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Halls of Valor",
                },
                [133623] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Halls of Valor",
                },
                [133626] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Halls of Valor",
                },
                [133633] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Halls of Valor",
                },
                [133638] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Halls of Valor",
                },
                [133639] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Halls of Valor",
                },
                [133641] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133642] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133646] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133679] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Halls of Valor",
                },
                [133765] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Halls of Valor",
                },
                [133767] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Halls of Valor",
                },
                [133805] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Halls of Valor",
                },
                [134207] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Halls of Valor",
                },
                [134209] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Halls of Valor",
                },
                [134212] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Halls of Valor",
                },
                [134213] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Halls of Valor",
                },
                [136777] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Head",
                    ["dungeon"] = "Halls of Valor",
                },
                [139282] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Halls of Valor",
                },
                [134296] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Court of Stars",
                },
                [134298] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Court of Stars",
                },
                [134385] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Court of Stars",
                },
                [134473] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Head",
                    ["dungeon"] = "Court of Stars",
                },
                [134480] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Court of Stars",
                },
                [134529] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Court of Stars",
                },
                [134542] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Court of Stars",
                },
                [137483] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Court of Stars",
                },
                [137484] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Court of Stars",
                },
                [137485] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Court of Stars",
                },
                [137486] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Court of Stars",
                },
                [137487] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Court of Stars",
                },
                [137489] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Court of Stars",
                },
                [137498] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Court of Stars",
                },
                [139299] = {
                    ["armor"] = "None",
                    ["slot"] = "Head",
                    ["dungeon"] = "Court of Stars",
                },
                [109763] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109764] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109765] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109766] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109767] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109768] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109769] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109770] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109780] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109781] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109790] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109791] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109792] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109800] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109801] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109833] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109834] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109835] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109836] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109843] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109852] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109853] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109854] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109855] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109863] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109872] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109873] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109874] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109875] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109883] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109887] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109888] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109889] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109890] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109891] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109907] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109908] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109909] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109910] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109911] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109925] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109926] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109927] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109954] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109955] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109956] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109957] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109958] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109959] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109960] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109961] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109980] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109981] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109982] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109983] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109984] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [110007] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [110035] = {
                    ["armor"] = "None",
                    ["slot"] = "Off-Hand",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [110039] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [80860] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Head",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80865] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80866] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80869] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80871] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80874] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81123] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81124] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81128] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81129] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81131] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [87544] = {
                    ["armor"] = "Plate",
                    ["slot"] = "One-Hand",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
            },
            ["Enhancement"] = {
                [193748] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193752] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193755] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193757] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193759] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193762] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193763] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193765] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Head",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193767] = {
                    ["armor"] = "Plate",
                    ["slot"] = "One-Hand",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193676] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193685] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Feet",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193689] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193693] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193696] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193697] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193629] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "The Azure Vault",
                },
                [193631] = {
                    ["armor"] = "None",
                    ["slot"] = "One-Hand",
                    ["dungeon"] = "The Azure Vault",
                },
                [193633] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "The Azure Vault",
                },
                [193634] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Azure Vault",
                },
                [193637] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "The Azure Vault",
                },
                [193643] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Legs",
                    ["dungeon"] = "The Azure Vault",
                },
                [193647] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "The Azure Vault",
                },
                [193701] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193704] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193708] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193712] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193715] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193722] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [133622] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Halls of Valor",
                },
                [133623] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Halls of Valor",
                },
                [133626] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Halls of Valor",
                },
                [133633] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Halls of Valor",
                },
                [133638] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Halls of Valor",
                },
                [133639] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Halls of Valor",
                },
                [133641] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133642] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133646] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133647] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133679] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Halls of Valor",
                },
                [133765] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Halls of Valor",
                },
                [133767] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Halls of Valor",
                },
                [133805] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Halls of Valor",
                },
                [134207] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Halls of Valor",
                },
                [134209] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Halls of Valor",
                },
                [134212] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Halls of Valor",
                },
                [134213] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Halls of Valor",
                },
                [136777] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Head",
                    ["dungeon"] = "Halls of Valor",
                },
                [136975] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [139282] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Halls of Valor",
                },
                [134296] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Court of Stars",
                },
                [134298] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Court of Stars",
                },
                [134385] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Court of Stars",
                },
                [134473] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Head",
                    ["dungeon"] = "Court of Stars",
                },
                [134480] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Court of Stars",
                },
                [134529] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Court of Stars",
                },
                [134542] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Court of Stars",
                },
                [137483] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Court of Stars",
                },
                [137486] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Court of Stars",
                },
                [137487] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Court of Stars",
                },
                [137489] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Court of Stars",
                },
                [137498] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Court of Stars",
                },
                [139299] = {
                    ["armor"] = "None",
                    ["slot"] = "Head",
                    ["dungeon"] = "Court of Stars",
                },
                [109759] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109760] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109761] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109762] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109775] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109776] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109777] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109778] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109779] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109783] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109790] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109791] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109792] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109800] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109801] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109833] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109834] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109835] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109836] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109843] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109852] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109853] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109854] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109855] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109863] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109872] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109873] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109874] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109875] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109883] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109887] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109888] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109889] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109890] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109891] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109904] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109905] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109906] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109915] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109916] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109917] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109918] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109929] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109950] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109951] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109952] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109953] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109965] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109966] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109967] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109969] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109980] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109981] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109982] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109983] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109984] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [80860] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Head",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80865] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80869] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80871] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81123] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81124] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81125] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81128] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81129] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81131] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
            },
            ["Restoration"] = {
                [193748] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193752] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193754] = {
                    ["armor"] = "None",
                    ["slot"] = "Shield",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193755] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193757] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193759] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193761] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193762] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193763] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193765] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Head",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193766] = {
                    ["armor"] = "None",
                    ["slot"] = "Off-Hand",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193676] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193677] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193678] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193685] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Feet",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193687] = {
                    ["armor"] = "None",
                    ["slot"] = "One-Hand",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193693] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193696] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193697] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193699] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193628] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Azure Vault",
                },
                [193629] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "The Azure Vault",
                },
                [193633] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "The Azure Vault",
                },
                [193637] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "The Azure Vault",
                },
                [193639] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Azure Vault",
                },
                [193643] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Legs",
                    ["dungeon"] = "The Azure Vault",
                },
                [193645] = {
                    ["armor"] = "None",
                    ["slot"] = "Shield",
                    ["dungeon"] = "The Azure Vault",
                },
                [193647] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "The Azure Vault",
                },
                [193704] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193707] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193708] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193709] = {
                    ["armor"] = "None",
                    ["slot"] = "Off-Hand",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193712] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193715] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193718] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193722] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [133622] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Halls of Valor",
                },
                [133623] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Halls of Valor",
                },
                [133626] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Halls of Valor",
                },
                [133633] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Halls of Valor",
                },
                [133638] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Halls of Valor",
                },
                [133639] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Halls of Valor",
                },
                [133641] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133642] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133646] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133679] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Halls of Valor",
                },
                [133765] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Halls of Valor",
                },
                [133767] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Halls of Valor",
                },
                [133805] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Halls of Valor",
                },
                [134207] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Halls of Valor",
                },
                [134209] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Halls of Valor",
                },
                [134212] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Halls of Valor",
                },
                [134213] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Halls of Valor",
                },
                [136777] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Head",
                    ["dungeon"] = "Halls of Valor",
                },
                [139282] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Halls of Valor",
                },
                [134296] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Court of Stars",
                },
                [134298] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Court of Stars",
                },
                [134385] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Court of Stars",
                },
                [134473] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Head",
                    ["dungeon"] = "Court of Stars",
                },
                [134480] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Court of Stars",
                },
                [134529] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Court of Stars",
                },
                [134542] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Court of Stars",
                },
                [137483] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Court of Stars",
                },
                [137484] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Court of Stars",
                },
                [137485] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Court of Stars",
                },
                [137486] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Court of Stars",
                },
                [137487] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Court of Stars",
                },
                [137489] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Court of Stars",
                },
                [137498] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Court of Stars",
                },
                [139299] = {
                    ["armor"] = "None",
                    ["slot"] = "Head",
                    ["dungeon"] = "Court of Stars",
                },
                [109763] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109764] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109765] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109766] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109767] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109768] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109769] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109770] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109780] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109781] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109790] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109791] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109792] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109800] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109801] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109833] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109834] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109835] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109836] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109843] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109852] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109853] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109854] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109855] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109863] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109872] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109873] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109874] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109875] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109883] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109887] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109888] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109889] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109890] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109891] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109907] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109908] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109909] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109910] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109911] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109925] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109926] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109927] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109954] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109955] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109956] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109957] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109958] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109959] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109960] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109961] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109980] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109981] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109982] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109983] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109984] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [110007] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [110035] = {
                    ["armor"] = "None",
                    ["slot"] = "Off-Hand",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [110039] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [80860] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Head",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80865] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80866] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80869] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80871] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80874] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81123] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81124] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81128] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81129] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81131] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [87544] = {
                    ["armor"] = "Plate",
                    ["slot"] = "One-Hand",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
            },
        },
        ["Evoker"] = {
            ["Devastation"] = {
                [193748] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193752] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193755] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193757] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193759] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193761] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193762] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193763] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193765] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Head",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193766] = {
                    ["armor"] = "None",
                    ["slot"] = "Off-Hand",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193676] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193677] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193678] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193685] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Feet",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193687] = {
                    ["armor"] = "None",
                    ["slot"] = "One-Hand",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193693] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193696] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193697] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193699] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193628] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Azure Vault",
                },
                [193629] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "The Azure Vault",
                },
                [193632] = {
                    ["armor"] = "None",
                    ["slot"] = "One-Hand",
                    ["dungeon"] = "The Azure Vault",
                },
                [193633] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "The Azure Vault",
                },
                [193637] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "The Azure Vault",
                },
                [193639] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Azure Vault",
                },
                [193643] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Legs",
                    ["dungeon"] = "The Azure Vault",
                },
                [193647] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "The Azure Vault",
                },
                [193704] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193707] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193708] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193709] = {
                    ["armor"] = "None",
                    ["slot"] = "Off-Hand",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193710] = {
                    ["armor"] = "None",
                    ["slot"] = "One-Hand",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193712] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193715] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193718] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193722] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [133622] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Halls of Valor",
                },
                [133623] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Halls of Valor",
                },
                [133626] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Halls of Valor",
                },
                [133633] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Halls of Valor",
                },
                [133638] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Halls of Valor",
                },
                [133639] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Halls of Valor",
                },
                [133641] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133642] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133646] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133679] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Halls of Valor",
                },
                [133765] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Halls of Valor",
                },
                [133767] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Halls of Valor",
                },
                [133805] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Halls of Valor",
                },
                [134207] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Halls of Valor",
                },
                [134209] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Halls of Valor",
                },
                [134212] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Halls of Valor",
                },
                [134213] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Halls of Valor",
                },
                [136777] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Head",
                    ["dungeon"] = "Halls of Valor",
                },
                [139282] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Halls of Valor",
                },
                [134296] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Court of Stars",
                },
                [134298] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Court of Stars",
                },
                [134385] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Court of Stars",
                },
                [134473] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Head",
                    ["dungeon"] = "Court of Stars",
                },
                [134480] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Court of Stars",
                },
                [134529] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Court of Stars",
                },
                [134542] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Court of Stars",
                },
                [137483] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Court of Stars",
                },
                [137484] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Court of Stars",
                },
                [137485] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Court of Stars",
                },
                [137486] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Court of Stars",
                },
                [137487] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Court of Stars",
                },
                [137489] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Court of Stars",
                },
                [137498] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Court of Stars",
                },
                [139299] = {
                    ["armor"] = "None",
                    ["slot"] = "Head",
                    ["dungeon"] = "Court of Stars",
                },
                [109763] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109764] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109765] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109766] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109767] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109768] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109769] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109770] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109780] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109781] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109790] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109791] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109792] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109800] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109801] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109833] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109834] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109835] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109836] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109843] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109852] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109853] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109854] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109855] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109863] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109872] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109873] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109874] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109875] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109883] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109887] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109888] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109889] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109890] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109891] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109907] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109908] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109909] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109910] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109911] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109925] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109926] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109927] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109954] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109955] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109956] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109957] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109958] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109959] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109960] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109961] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109980] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109981] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109982] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109983] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109984] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [110007] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [110035] = {
                    ["armor"] = "None",
                    ["slot"] = "Off-Hand",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [110039] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [80860] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Head",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80865] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80866] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80869] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80871] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80874] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81123] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81124] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81128] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81129] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81131] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [87544] = {
                    ["armor"] = "Plate",
                    ["slot"] = "One-Hand",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
            },
            ["Preservation"] = {
                [193748] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193752] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193755] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193757] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193759] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193761] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193762] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193763] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193765] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Head",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193766] = {
                    ["armor"] = "None",
                    ["slot"] = "Off-Hand",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193676] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193677] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193678] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193685] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Feet",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193687] = {
                    ["armor"] = "None",
                    ["slot"] = "One-Hand",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193693] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193696] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193697] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193699] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193628] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Azure Vault",
                },
                [193629] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "The Azure Vault",
                },
                [193632] = {
                    ["armor"] = "None",
                    ["slot"] = "One-Hand",
                    ["dungeon"] = "The Azure Vault",
                },
                [193633] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "The Azure Vault",
                },
                [193637] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "The Azure Vault",
                },
                [193639] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Azure Vault",
                },
                [193643] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Legs",
                    ["dungeon"] = "The Azure Vault",
                },
                [193647] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "The Azure Vault",
                },
                [193704] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193707] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193708] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193709] = {
                    ["armor"] = "None",
                    ["slot"] = "Off-Hand",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193710] = {
                    ["armor"] = "None",
                    ["slot"] = "One-Hand",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193712] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193715] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193718] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193722] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [133622] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Halls of Valor",
                },
                [133623] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Halls of Valor",
                },
                [133626] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Halls of Valor",
                },
                [133633] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Halls of Valor",
                },
                [133638] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Halls of Valor",
                },
                [133639] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Halls of Valor",
                },
                [133641] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133642] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133646] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133679] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Halls of Valor",
                },
                [133765] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Halls of Valor",
                },
                [133767] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Halls of Valor",
                },
                [133805] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Halls of Valor",
                },
                [134207] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Halls of Valor",
                },
                [134209] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Halls of Valor",
                },
                [134212] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Halls of Valor",
                },
                [134213] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Halls of Valor",
                },
                [136777] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Head",
                    ["dungeon"] = "Halls of Valor",
                },
                [139282] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Halls of Valor",
                },
                [134296] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Court of Stars",
                },
                [134298] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Court of Stars",
                },
                [134385] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Court of Stars",
                },
                [134473] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Head",
                    ["dungeon"] = "Court of Stars",
                },
                [134480] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Court of Stars",
                },
                [134529] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Court of Stars",
                },
                [134542] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Court of Stars",
                },
                [137483] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Court of Stars",
                },
                [137484] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Court of Stars",
                },
                [137485] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Court of Stars",
                },
                [137486] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Court of Stars",
                },
                [137487] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Court of Stars",
                },
                [137489] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Court of Stars",
                },
                [137498] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Court of Stars",
                },
                [139299] = {
                    ["armor"] = "None",
                    ["slot"] = "Head",
                    ["dungeon"] = "Court of Stars",
                },
                [109763] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109764] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109765] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109766] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109767] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109768] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109769] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109770] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109780] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109781] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109790] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109791] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109792] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109800] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109801] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109833] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109834] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109835] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109836] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109843] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109852] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109853] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109854] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109855] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109863] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109872] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109873] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109874] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109875] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109883] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109887] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109888] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109889] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109890] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109891] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109907] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109908] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109909] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109910] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109911] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109925] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109926] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109927] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109954] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109955] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109956] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109957] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109958] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109959] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109960] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109961] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109980] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109981] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109982] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109983] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109984] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [110007] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [110035] = {
                    ["armor"] = "None",
                    ["slot"] = "Off-Hand",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [110039] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [80860] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Head",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80865] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80866] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80869] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80871] = {
                    ["armor"] = "Mail",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80874] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81123] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81124] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81128] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81129] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81131] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [87544] = {
                    ["armor"] = "Plate",
                    ["slot"] = "One-Hand",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
            },
        },
        ["Paladin"] = {
            ["Holy"] = {
                [193728] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193748] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193753] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193754] = {
                    ["armor"] = "None",
                    ["slot"] = "Shield",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193755] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193757] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193762] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193763] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193766] = {
                    ["armor"] = "None",
                    ["slot"] = "Off-Hand",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193676] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193677] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193678] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193686] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193694] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Legs",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193696] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193697] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193698] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193628] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Azure Vault",
                },
                [193629] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "The Azure Vault",
                },
                [193630] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "The Azure Vault",
                },
                [193632] = {
                    ["armor"] = "None",
                    ["slot"] = "One-Hand",
                    ["dungeon"] = "The Azure Vault",
                },
                [193633] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "The Azure Vault",
                },
                [193639] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Azure Vault",
                },
                [193644] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "The Azure Vault",
                },
                [193645] = {
                    ["armor"] = "None",
                    ["slot"] = "Shield",
                    ["dungeon"] = "The Azure Vault",
                },
                [193647] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "The Azure Vault",
                },
                [193650] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "The Azure Vault",
                },
                [193705] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193706] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193708] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193709] = {
                    ["armor"] = "None",
                    ["slot"] = "Off-Hand",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193710] = {
                    ["armor"] = "None",
                    ["slot"] = "One-Hand",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193712] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193718] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [133628] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Halls of Valor",
                },
                [133630] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Halls of Valor",
                },
                [133631] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Halls of Valor",
                },
                [133633] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Halls of Valor",
                },
                [133638] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Halls of Valor",
                },
                [133639] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Halls of Valor",
                },
                [133641] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133642] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133646] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133679] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Halls of Valor",
                },
                [133765] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Halls of Valor",
                },
                [133767] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Halls of Valor",
                },
                [134179] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Halls of Valor",
                },
                [134180] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Halls of Valor",
                },
                [134182] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Head",
                    ["dungeon"] = "Halls of Valor",
                },
                [134186] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Halls of Valor",
                },
                [136772] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Halls of Valor",
                },
                [136773] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Halls of Valor",
                },
                [139283] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Halls of Valor",
                },
                [134268] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Court of Stars",
                },
                [134271] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Court of Stars",
                },
                [134360] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Court of Stars",
                },
                [134503] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Court of Stars",
                },
                [134513] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Head",
                    ["dungeon"] = "Court of Stars",
                },
                [134529] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Court of Stars",
                },
                [134542] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Court of Stars",
                },
                [137482] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Court of Stars",
                },
                [137483] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Court of Stars",
                },
                [137484] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Court of Stars",
                },
                [137485] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Court of Stars",
                },
                [137486] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Court of Stars",
                },
                [137487] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Court of Stars",
                },
                [137499] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Court of Stars",
                },
                [139299] = {
                    ["armor"] = "None",
                    ["slot"] = "Head",
                    ["dungeon"] = "Court of Stars",
                },
                [109763] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109764] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109765] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109766] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109767] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109768] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109769] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109770] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109780] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109781] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109793] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109794] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109795] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109802] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109803] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109837] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109838] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109839] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109840] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109841] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109856] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109857] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109858] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109859] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109860] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109876] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109877] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109878] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109879] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109880] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109892] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109893] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109894] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109895] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109896] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109907] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109908] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109909] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109910] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109911] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109925] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109926] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109927] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109954] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109955] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109956] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109957] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109958] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109959] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109960] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109961] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109985] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109986] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109987] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109988] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109989] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [110007] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [110035] = {
                    ["armor"] = "None",
                    ["slot"] = "Off-Hand",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [80861] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80863] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80866] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80867] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81123] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81124] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81128] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81129] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81130] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81131] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [87544] = {
                    ["armor"] = "Plate",
                    ["slot"] = "One-Hand",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
            },
            ["Protection"] = {
                [193728] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193748] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193753] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193754] = {
                    ["armor"] = "None",
                    ["slot"] = "Shield",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193755] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193757] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193762] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193763] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193676] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193679] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193686] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193689] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193694] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Legs",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193696] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193697] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193698] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193700] = {
                    ["armor"] = "None",
                    ["slot"] = "One-Hand",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193629] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "The Azure Vault",
                },
                [193630] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "The Azure Vault",
                },
                [193633] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "The Azure Vault",
                },
                [193634] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Azure Vault",
                },
                [193644] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "The Azure Vault",
                },
                [193645] = {
                    ["armor"] = "None",
                    ["slot"] = "Shield",
                    ["dungeon"] = "The Azure Vault",
                },
                [193647] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "The Azure Vault",
                },
                [193650] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "The Azure Vault",
                },
                [193701] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193705] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193706] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193708] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193711] = {
                    ["armor"] = "None",
                    ["slot"] = "One-Hand",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193712] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193719] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [133628] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Halls of Valor",
                },
                [133630] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Halls of Valor",
                },
                [133631] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Halls of Valor",
                },
                [133633] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Halls of Valor",
                },
                [133638] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Halls of Valor",
                },
                [133639] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Halls of Valor",
                },
                [133641] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133642] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133646] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133647] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133679] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Halls of Valor",
                },
                [133765] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Halls of Valor",
                },
                [133767] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Halls of Valor",
                },
                [134179] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Halls of Valor",
                },
                [134180] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Halls of Valor",
                },
                [134182] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Head",
                    ["dungeon"] = "Halls of Valor",
                },
                [134186] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Halls of Valor",
                },
                [136772] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Halls of Valor",
                },
                [136773] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Halls of Valor",
                },
                [136975] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [139283] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Halls of Valor",
                },
                [134268] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Court of Stars",
                },
                [134271] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Court of Stars",
                },
                [134360] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Court of Stars",
                },
                [134503] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Court of Stars",
                },
                [134513] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Head",
                    ["dungeon"] = "Court of Stars",
                },
                [134529] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Court of Stars",
                },
                [134542] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Court of Stars",
                },
                [137482] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Court of Stars",
                },
                [137483] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Court of Stars",
                },
                [137486] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Court of Stars",
                },
                [137487] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Court of Stars",
                },
                [137499] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Court of Stars",
                },
                [139299] = {
                    ["armor"] = "None",
                    ["slot"] = "Head",
                    ["dungeon"] = "Court of Stars",
                },
                [109771] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109772] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109773] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109774] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109775] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109776] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109777] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109778] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109782] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109783] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109793] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109794] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109795] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109802] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109803] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109837] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109838] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109839] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109840] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109841] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109856] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109857] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109858] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109859] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109860] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109876] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109877] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109878] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109879] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109880] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109892] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109893] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109894] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109895] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109896] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109912] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109913] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109914] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109915] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109916] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109917] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109928] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109929] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109962] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109963] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109964] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109965] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109966] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109967] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109968] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109969] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109985] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109986] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109987] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109988] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109989] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [110012] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [80861] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80863] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80867] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80873] = {
                    ["armor"] = "None",
                    ["slot"] = "One-Hand",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81123] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81124] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81128] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81129] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81130] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81131] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
            },
            ["Retrobution"] = {
                [193728] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193748] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193753] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193755] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193757] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193762] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193763] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193676] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193679] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193686] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193689] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193694] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Legs",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193695] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193696] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193697] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193698] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193629] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "The Azure Vault",
                },
                [193630] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "The Azure Vault",
                },
                [193633] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "The Azure Vault",
                },
                [193634] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Azure Vault",
                },
                [193638] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "The Azure Vault",
                },
                [193644] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "The Azure Vault",
                },
                [193647] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "The Azure Vault",
                },
                [193650] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "The Azure Vault",
                },
                [193701] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193705] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193706] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193708] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193712] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193716] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193719] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [133628] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Halls of Valor",
                },
                [133630] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Halls of Valor",
                },
                [133631] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Halls of Valor",
                },
                [133633] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Halls of Valor",
                },
                [133638] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Halls of Valor",
                },
                [133639] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Halls of Valor",
                },
                [133641] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133642] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133646] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133647] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133679] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Halls of Valor",
                },
                [133765] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Halls of Valor",
                },
                [133767] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Halls of Valor",
                },
                [134179] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Halls of Valor",
                },
                [134180] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Halls of Valor",
                },
                [134182] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Head",
                    ["dungeon"] = "Halls of Valor",
                },
                [134186] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Halls of Valor",
                },
                [136772] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Halls of Valor",
                },
                [136773] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Halls of Valor",
                },
                [136975] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [139283] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Halls of Valor",
                },
                [134268] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Court of Stars",
                },
                [134271] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Court of Stars",
                },
                [134360] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Court of Stars",
                },
                [134503] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Court of Stars",
                },
                [134513] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Head",
                    ["dungeon"] = "Court of Stars",
                },
                [134529] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Court of Stars",
                },
                [134542] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Court of Stars",
                },
                [137482] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Court of Stars",
                },
                [137483] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Court of Stars",
                },
                [137486] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Court of Stars",
                },
                [137487] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Court of Stars",
                },
                [137499] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Court of Stars",
                },
                [139299] = {
                    ["armor"] = "None",
                    ["slot"] = "Head",
                    ["dungeon"] = "Court of Stars",
                },
                [109771] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109772] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109773] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109774] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109775] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109776] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109777] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109778] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109782] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109783] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109793] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109794] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109795] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109802] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109803] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109837] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109838] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109839] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109840] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109841] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109856] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109857] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109858] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109859] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109860] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109876] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109877] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109878] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109879] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109880] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109892] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109893] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109894] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109895] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109896] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109912] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109913] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109914] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109915] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109916] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109917] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109928] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109929] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109962] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109963] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109964] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109965] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109966] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109967] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109968] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109969] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109985] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109986] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109987] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109988] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109989] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [110012] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [110036] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [80861] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80863] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80867] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81123] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81124] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81128] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81129] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81130] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81131] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
            },
        },
        ["Warrior"] = {
            ["Arms"] = {
                [193728] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193748] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193753] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193755] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193757] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193762] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193763] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193676] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193679] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193686] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193689] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193694] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Legs",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193695] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193696] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193697] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193698] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193629] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "The Azure Vault",
                },
                [193630] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "The Azure Vault",
                },
                [193633] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "The Azure Vault",
                },
                [193634] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Azure Vault",
                },
                [193638] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "The Azure Vault",
                },
                [193644] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "The Azure Vault",
                },
                [193647] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "The Azure Vault",
                },
                [193650] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "The Azure Vault",
                },
                [193701] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193705] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193706] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193708] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193712] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193716] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193719] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [133628] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Halls of Valor",
                },
                [133630] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Halls of Valor",
                },
                [133631] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Halls of Valor",
                },
                [133633] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Halls of Valor",
                },
                [133638] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Halls of Valor",
                },
                [133639] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Halls of Valor",
                },
                [133641] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133642] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133646] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133647] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133679] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Halls of Valor",
                },
                [133765] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Halls of Valor",
                },
                [133767] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Halls of Valor",
                },
                [134179] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Halls of Valor",
                },
                [134180] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Halls of Valor",
                },
                [134182] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Head",
                    ["dungeon"] = "Halls of Valor",
                },
                [134186] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Halls of Valor",
                },
                [136772] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Halls of Valor",
                },
                [136773] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Halls of Valor",
                },
                [136975] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [139283] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Halls of Valor",
                },
                [134268] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Court of Stars",
                },
                [134271] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Court of Stars",
                },
                [134360] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Court of Stars",
                },
                [134503] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Court of Stars",
                },
                [134513] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Head",
                    ["dungeon"] = "Court of Stars",
                },
                [134529] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Court of Stars",
                },
                [134542] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Court of Stars",
                },
                [137482] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Court of Stars",
                },
                [137483] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Court of Stars",
                },
                [137486] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Court of Stars",
                },
                [137487] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Court of Stars",
                },
                [137499] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Court of Stars",
                },
                [139299] = {
                    ["armor"] = "None",
                    ["slot"] = "Head",
                    ["dungeon"] = "Court of Stars",
                },
                [109771] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109772] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109773] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109774] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109775] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109776] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109777] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109778] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109782] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109783] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109793] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109794] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109795] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109802] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109803] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109837] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109838] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109839] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109840] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109841] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109856] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109857] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109858] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109859] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109860] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109876] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109877] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109878] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109879] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109880] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109892] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109893] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109894] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109895] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109896] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109912] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109913] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109914] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109915] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109916] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109917] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109928] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109929] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109962] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109963] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109964] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109965] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109966] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109967] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109968] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109969] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109985] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109986] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109987] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109988] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109989] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [110012] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [110036] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [80861] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80863] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80867] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81123] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81124] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81128] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81129] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81130] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81131] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
            },
            ["Fury"] = {
                [193728] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193748] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193753] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193755] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193757] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193762] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193763] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193676] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193679] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193686] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193689] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193694] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Legs",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193695] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193696] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193697] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193698] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193700] = {
                    ["armor"] = "None",
                    ["slot"] = "One-Hand",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193629] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "The Azure Vault",
                },
                [193630] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "The Azure Vault",
                },
                [193633] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "The Azure Vault",
                },
                [193634] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Azure Vault",
                },
                [193638] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "The Azure Vault",
                },
                [193644] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "The Azure Vault",
                },
                [193647] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "The Azure Vault",
                },
                [193650] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "The Azure Vault",
                },
                [193701] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193705] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193706] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193708] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193711] = {
                    ["armor"] = "None",
                    ["slot"] = "One-Hand",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193712] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193716] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193719] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [133628] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Halls of Valor",
                },
                [133630] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Halls of Valor",
                },
                [133631] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Halls of Valor",
                },
                [133633] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Halls of Valor",
                },
                [133638] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Halls of Valor",
                },
                [133639] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Halls of Valor",
                },
                [133641] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133642] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133646] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133647] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133679] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Halls of Valor",
                },
                [133765] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Halls of Valor",
                },
                [133767] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Halls of Valor",
                },
                [134179] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Halls of Valor",
                },
                [134180] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Halls of Valor",
                },
                [134182] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Head",
                    ["dungeon"] = "Halls of Valor",
                },
                [134186] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Halls of Valor",
                },
                [136772] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Halls of Valor",
                },
                [136773] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Halls of Valor",
                },
                [136975] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [139283] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Halls of Valor",
                },
                [134268] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Court of Stars",
                },
                [134271] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Court of Stars",
                },
                [134360] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Court of Stars",
                },
                [134503] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Court of Stars",
                },
                [134513] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Head",
                    ["dungeon"] = "Court of Stars",
                },
                [134529] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Court of Stars",
                },
                [134542] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Court of Stars",
                },
                [137482] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Court of Stars",
                },
                [137483] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Court of Stars",
                },
                [137486] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Court of Stars",
                },
                [137487] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Court of Stars",
                },
                [137499] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Court of Stars",
                },
                [139299] = {
                    ["armor"] = "None",
                    ["slot"] = "Head",
                    ["dungeon"] = "Court of Stars",
                },
                [109771] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109772] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109773] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109774] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109775] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109776] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109777] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109778] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109782] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109783] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109793] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109794] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109795] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109802] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109803] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109837] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109838] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109839] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109840] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109841] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109856] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109857] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109858] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109859] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109860] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109876] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109877] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109878] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109879] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109880] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109892] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109893] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109894] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109895] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109896] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109912] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109913] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109914] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109915] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109916] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109917] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109928] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109929] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109962] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109963] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109964] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109965] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109966] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109967] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109968] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109969] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109985] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109986] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109987] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109988] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109989] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [110012] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [110036] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [80861] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80863] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80867] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80873] = {
                    ["armor"] = "None",
                    ["slot"] = "One-Hand",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81123] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81124] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81128] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81129] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81130] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81131] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
            },
            ["Protection"] = {
                [193728] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193748] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193753] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193754] = {
                    ["armor"] = "None",
                    ["slot"] = "Shield",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193755] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193757] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193762] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193763] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193676] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193679] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193686] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193689] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193694] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Legs",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193696] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193697] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193698] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193700] = {
                    ["armor"] = "None",
                    ["slot"] = "One-Hand",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193629] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "The Azure Vault",
                },
                [193630] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "The Azure Vault",
                },
                [193633] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "The Azure Vault",
                },
                [193634] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Azure Vault",
                },
                [193644] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "The Azure Vault",
                },
                [193645] = {
                    ["armor"] = "None",
                    ["slot"] = "Shield",
                    ["dungeon"] = "The Azure Vault",
                },
                [193647] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "The Azure Vault",
                },
                [193650] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "The Azure Vault",
                },
                [193701] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193705] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193706] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193708] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193711] = {
                    ["armor"] = "None",
                    ["slot"] = "One-Hand",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193712] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193719] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [133628] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Halls of Valor",
                },
                [133630] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Halls of Valor",
                },
                [133631] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Halls of Valor",
                },
                [133633] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Halls of Valor",
                },
                [133638] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Halls of Valor",
                },
                [133639] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Halls of Valor",
                },
                [133641] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133642] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133646] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133647] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133679] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Halls of Valor",
                },
                [133765] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Halls of Valor",
                },
                [133767] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Halls of Valor",
                },
                [134179] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Halls of Valor",
                },
                [134180] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Halls of Valor",
                },
                [134182] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Head",
                    ["dungeon"] = "Halls of Valor",
                },
                [134186] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Halls of Valor",
                },
                [136772] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Halls of Valor",
                },
                [136773] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Halls of Valor",
                },
                [136975] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [139283] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Halls of Valor",
                },
                [134268] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Court of Stars",
                },
                [134271] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Court of Stars",
                },
                [134360] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Court of Stars",
                },
                [134503] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Court of Stars",
                },
                [134513] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Head",
                    ["dungeon"] = "Court of Stars",
                },
                [134529] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Court of Stars",
                },
                [134542] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Court of Stars",
                },
                [137482] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Court of Stars",
                },
                [137483] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Court of Stars",
                },
                [137486] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Court of Stars",
                },
                [137487] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Court of Stars",
                },
                [137499] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Court of Stars",
                },
                [139299] = {
                    ["armor"] = "None",
                    ["slot"] = "Head",
                    ["dungeon"] = "Court of Stars",
                },
                [109771] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109772] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109773] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109774] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109775] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109776] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109777] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109778] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109782] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109783] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109793] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109794] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109795] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109802] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109803] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109837] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109838] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109839] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109840] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109841] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109856] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109857] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109858] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109859] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109860] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109876] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109877] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109878] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109879] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109880] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109892] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109893] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109894] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109895] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109896] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109912] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109913] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109914] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109915] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109916] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109917] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109928] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109929] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109962] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109963] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109964] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109965] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109966] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109967] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109968] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109969] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109985] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109986] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109987] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109988] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109989] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [110012] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [80861] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80863] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80867] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80873] = {
                    ["armor"] = "None",
                    ["slot"] = "One-Hand",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81123] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81124] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81128] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81129] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81130] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81131] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
            },
        },
        ["Death Knight"] = {
            ["Blood"] = {
                [193728] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193748] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193753] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193755] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193757] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193762] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193763] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193676] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193679] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193686] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193689] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193694] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Legs",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193695] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193696] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193697] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193698] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193629] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "The Azure Vault",
                },
                [193630] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "The Azure Vault",
                },
                [193633] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "The Azure Vault",
                },
                [193634] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Azure Vault",
                },
                [193638] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "The Azure Vault",
                },
                [193644] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "The Azure Vault",
                },
                [193647] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "The Azure Vault",
                },
                [193650] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "The Azure Vault",
                },
                [193701] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193705] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193706] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193708] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193712] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193716] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193719] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [133628] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Halls of Valor",
                },
                [133630] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Halls of Valor",
                },
                [133631] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Halls of Valor",
                },
                [133633] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Halls of Valor",
                },
                [133638] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Halls of Valor",
                },
                [133639] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Halls of Valor",
                },
                [133641] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133642] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133646] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133647] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133679] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Halls of Valor",
                },
                [133765] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Halls of Valor",
                },
                [133767] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Halls of Valor",
                },
                [134179] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Halls of Valor",
                },
                [134180] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Halls of Valor",
                },
                [134182] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Head",
                    ["dungeon"] = "Halls of Valor",
                },
                [134186] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Halls of Valor",
                },
                [136772] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Halls of Valor",
                },
                [136773] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Halls of Valor",
                },
                [136975] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [139283] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Halls of Valor",
                },
                [134268] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Court of Stars",
                },
                [134271] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Court of Stars",
                },
                [134360] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Court of Stars",
                },
                [134503] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Court of Stars",
                },
                [134513] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Head",
                    ["dungeon"] = "Court of Stars",
                },
                [134529] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Court of Stars",
                },
                [134542] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Court of Stars",
                },
                [137482] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Court of Stars",
                },
                [137483] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Court of Stars",
                },
                [137486] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Court of Stars",
                },
                [137487] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Court of Stars",
                },
                [137499] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Court of Stars",
                },
                [139299] = {
                    ["armor"] = "None",
                    ["slot"] = "Head",
                    ["dungeon"] = "Court of Stars",
                },
                [109771] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109772] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109773] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109774] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109775] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109776] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109777] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109778] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109782] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109783] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109793] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109794] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109795] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109802] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109803] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109837] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109838] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109839] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109840] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109841] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109856] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109857] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109858] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109859] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109860] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109876] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109877] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109878] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109879] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109880] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109892] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109893] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109894] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109895] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109896] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109912] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109913] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109914] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109915] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109916] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109917] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109928] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109929] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109962] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109963] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109964] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109965] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109966] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109967] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109968] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109969] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109985] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109986] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109987] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109988] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109989] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [110012] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [110036] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [80861] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80863] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80867] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81123] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81124] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81128] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81129] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81130] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81131] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
            },
            ["Frost"] = {
                [193728] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193748] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193753] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193755] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193757] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193762] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193763] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193676] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193679] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193686] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193689] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193694] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Legs",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193695] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193696] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193697] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193698] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193700] = {
                    ["armor"] = "None",
                    ["slot"] = "One-Hand",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193629] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "The Azure Vault",
                },
                [193630] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "The Azure Vault",
                },
                [193633] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "The Azure Vault",
                },
                [193634] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Azure Vault",
                },
                [193638] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "The Azure Vault",
                },
                [193644] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "The Azure Vault",
                },
                [193647] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "The Azure Vault",
                },
                [193650] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "The Azure Vault",
                },
                [193701] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193705] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193706] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193708] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193711] = {
                    ["armor"] = "None",
                    ["slot"] = "One-Hand",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193712] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193716] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193719] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [133628] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Halls of Valor",
                },
                [133630] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Halls of Valor",
                },
                [133631] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Halls of Valor",
                },
                [133633] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Halls of Valor",
                },
                [133638] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Halls of Valor",
                },
                [133639] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Halls of Valor",
                },
                [133641] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133642] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133646] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133647] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133679] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Halls of Valor",
                },
                [133765] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Halls of Valor",
                },
                [133767] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Halls of Valor",
                },
                [134179] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Halls of Valor",
                },
                [134180] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Halls of Valor",
                },
                [134182] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Head",
                    ["dungeon"] = "Halls of Valor",
                },
                [134186] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Halls of Valor",
                },
                [136772] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Halls of Valor",
                },
                [136773] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Halls of Valor",
                },
                [136975] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [139283] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Halls of Valor",
                },
                [134268] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Court of Stars",
                },
                [134271] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Court of Stars",
                },
                [134360] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Court of Stars",
                },
                [134503] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Court of Stars",
                },
                [134513] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Head",
                    ["dungeon"] = "Court of Stars",
                },
                [134529] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Court of Stars",
                },
                [134542] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Court of Stars",
                },
                [137482] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Court of Stars",
                },
                [137483] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Court of Stars",
                },
                [137486] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Court of Stars",
                },
                [137487] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Court of Stars",
                },
                [137499] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Court of Stars",
                },
                [139299] = {
                    ["armor"] = "None",
                    ["slot"] = "Head",
                    ["dungeon"] = "Court of Stars",
                },
                [109771] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109772] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109773] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109774] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109775] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109776] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109777] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109778] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109782] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109783] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109793] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109794] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109795] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109802] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109803] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109837] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109838] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109839] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109840] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109841] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109856] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109857] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109858] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109859] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109860] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109876] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109877] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109878] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109879] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109880] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109892] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109893] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109894] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109895] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109896] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109912] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109913] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109914] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109915] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109916] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109917] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109928] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109929] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109962] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109963] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109964] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109965] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109966] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109967] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109968] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109969] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109985] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109986] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109987] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109988] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109989] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [110012] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [110036] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [80861] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80863] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80867] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80873] = {
                    ["armor"] = "None",
                    ["slot"] = "One-Hand",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81123] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81124] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81128] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81129] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81130] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81131] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
            },
            ["Unholy"] = {
                [193728] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193748] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193753] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193755] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193757] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193762] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193763] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Ruby Life Pools",
                },
                [193676] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193679] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193686] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193689] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193694] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Legs",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193695] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193696] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193697] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193698] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "The Nokhud Offensive",
                },
                [193629] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "The Azure Vault",
                },
                [193630] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "The Azure Vault",
                },
                [193633] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "The Azure Vault",
                },
                [193634] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "The Azure Vault",
                },
                [193638] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "The Azure Vault",
                },
                [193644] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "The Azure Vault",
                },
                [193647] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "The Azure Vault",
                },
                [193650] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "The Azure Vault",
                },
                [193701] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193705] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193706] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193708] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193712] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193716] = {
                    ["armor"] = "Cloth",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [193719] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Algeth'ar Academy",
                },
                [133628] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Halls of Valor",
                },
                [133630] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Halls of Valor",
                },
                [133631] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Halls of Valor",
                },
                [133633] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Halls of Valor",
                },
                [133638] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Halls of Valor",
                },
                [133639] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Halls of Valor",
                },
                [133641] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133642] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133646] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133647] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [133679] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Halls of Valor",
                },
                [133765] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Halls of Valor",
                },
                [133767] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Halls of Valor",
                },
                [134179] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Halls of Valor",
                },
                [134180] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Halls of Valor",
                },
                [134182] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Head",
                    ["dungeon"] = "Halls of Valor",
                },
                [134186] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Halls of Valor",
                },
                [136772] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Halls of Valor",
                },
                [136773] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Halls of Valor",
                },
                [136975] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Halls of Valor",
                },
                [139283] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Halls of Valor",
                },
                [134268] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Court of Stars",
                },
                [134271] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Legs",
                    ["dungeon"] = "Court of Stars",
                },
                [134360] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Court of Stars",
                },
                [134503] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Court of Stars",
                },
                [134513] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Head",
                    ["dungeon"] = "Court of Stars",
                },
                [134529] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Court of Stars",
                },
                [134542] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Court of Stars",
                },
                [137482] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Court of Stars",
                },
                [137483] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Court of Stars",
                },
                [137486] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Court of Stars",
                },
                [137487] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Court of Stars",
                },
                [137499] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Court of Stars",
                },
                [139299] = {
                    ["armor"] = "None",
                    ["slot"] = "Head",
                    ["dungeon"] = "Court of Stars",
                },
                [109771] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109772] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109773] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109774] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109775] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109776] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109777] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109778] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109782] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109783] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109793] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109794] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109795] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109802] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109803] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109837] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109838] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109839] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109840] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109841] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109856] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109857] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109858] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109859] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109860] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Hands",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109876] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109877] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109878] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109879] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109880] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Wrist",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109892] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109893] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109894] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109895] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109896] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109912] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109913] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109914] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109915] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109916] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109917] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109928] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109929] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109962] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109963] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109964] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109965] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109966] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109967] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109968] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109969] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109985] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109986] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109987] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109988] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [109989] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Head",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [110012] = {
                    ["armor"] = "None",
                    ["slot"] = "Trinket",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [110036] = {
                    ["armor"] = "None",
                    ["slot"] = "Two-Hand",
                    ["dungeon"] = "Shadowmoon Burial Grounds",
                },
                [80861] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Chest",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80863] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Feet",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [80867] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Shoulder",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81123] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81124] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81128] = {
                    ["armor"] = "None",
                    ["slot"] = "Finger",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81129] = {
                    ["armor"] = "None",
                    ["slot"] = "Back",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81130] = {
                    ["armor"] = "Plate",
                    ["slot"] = "Waist",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
                [81131] = {
                    ["armor"] = "None",
                    ["slot"] = "Neck",
                    ["dungeon"] = "Temple of the Jade Serpent",
                },
            },
        },
    }

    return dungeonItems
end
MPL_tables.get_items = get_items
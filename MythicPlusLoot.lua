local AddonName, MPL = ...;
local L = MPL.L or {}
local sizex = 700;
local sizey = 750;

local frame;
local framesInitialized;
local itemsInitialized;
local db;
local currentProfileKey;

local LDB;
local LDBI;

SLASH_MYTHICPLUSLOOT1 = "/mpl";

function SlashCmdList.MYTHICPLUSLOOT(cmd, editbox)
	initFrames();
end

local defaultSavedVars = {
	global = {
		minimap = {
		["hide"] = false,
		}
 	},
	profile = {
		-- v = 1,		-- Reverved for version compatibility
		armorType = 0,
		slot = 0,
		mythicLevel = 0,
		source = 0,
		favoriteItems = {},
	}
}

-- Options menu
function MPL:RegisterOptions()
	MPL.blizzardOptionsMenuTable = {
		name = "Mythic Plus Loot",
		type = 'group',
		args = {
			enable = {
				type = 'toggle',
				name = L["Enable Minimap Button"],
				desc = L["If the Minimap Button is enabled"],
				get = function() return not db.global.minimap.hide end,
				set = function(_, newValue)
					db.global.minimap.hide = not newValue
					if not db.global.minimap.hide then
						LDBI:Show("MythicPlusLoot")
					else
						LDBI:Hide("MythicPlusLoot")
					end
				end,
				order = 1,
				width = "full",
			},
		}
	}
	LibStub("AceConfigRegistry-3.0"):RegisterOptionsTable("MythicPlusLoot", MPL.blizzardOptionsMenuTable)
	self.blizzardOptionsMenu = LibStub("AceConfigDialog-3.0"):AddToBlizOptions("MythicPlusLoot", "MythicPlusLoot")
end

-- DB stuff and minimap button
MythicPlusLoot = LibStub("AceAddon-3.0"):NewAddon("MythicPlusLoot")

function MythicPlusLoot:OnInitialize()
	self.db = LibStub("AceDB-3.0"):New("MythicPlusLootDB", defaultSavedVars)
	db = self.db

	LDB = LibStub("LibDataBroker-1.1", true)
	LDBI = LDB and LibStub("LibDBIcon-1.0", true)

	if LDB then
		local minimapButton = LDB:NewDataObject("MythicPlusLoot", {
			type = "launcher",
			text = "MythicPlusLoot",
			icon = ("Interface\\AddOns\\%s\\textures\\icon"):format(AddonName),
			OnClick = function(button, buttonPressed)
				if buttonPressed then
					if not framesInitialized then
						initFrames();
					else
						closeMainFrame();
					end
				end
			end,
			OnTooltipShow = function(tooltip)
				if not tooltip or not tooltip.AddLine then return end
				tooltip:AddLine("Mythic Plus Loot|r")
				tooltip:AddLine(L["Click to toggle AddOn Window"])
			end,
		})
		LDBI:Register("MythicPlusLoot", minimapButton, db.global.minimap)
	end
	if not db.global.minimap.hide then
		LDBI:Refresh("MythicPlusLoot", db.global.minimap)
	end

	MPL:RegisterOptions()

	self:VersionCompatibility(false)
	self.db.RegisterCallback(self, "OnProfileChanged", "OnProfileChanged")
	self.db.RegisterCallback(self, "OnProfileCopied", "OnProfileChanged")
	self.db.RegisterCallback(self, "OnProfileReset", "OnProfileChanged")
	self.db.RegisterCallback(self, "OnNewProfile", "OnProfileAddRemoved")
	self.db.RegisterCallback(self, "OnProfileDeleted", "OnProfileAddRemoved")
end

function MythicPlusLoot:OnProfileChanged(event, database, newProfileKey)
	self.db = database
	db = self.db

	self:VersionCompatibility(true)
	if newProfileKey ~= nil and newProfileKey ~= currentProfileKey then
		closeMainFrame();
	end
end

function MythicPlusLoot:OnProfileAddRemoved(event, database, profileKey)
	self.db = database
	db = self.db

	closeMainFrame();
end

function MythicPlusLoot:VersionCompatibility(onChanged)
	-- version compatibility
	if db.profile.v ~= 1 then
		if db.char ~= nil and db.char.favoriteItems ~= nil then
			if not onChanged and db:GetCurrentProfile() == "Default" then
				db:SetProfile(("%s - %s"):format(GetName("player"), GetRealmName()))
			end
			db.profile.armorType = db.char.armorType;
			db.profile.slot = db.char.slot;
			db.profile.mythicLevel = db.char.mythicLevel;
			db.profile.source = db.char.source;
			db.profile.favoriteItems = {};
			db.profile.v = 1;
			for k,v in pairs(db.char.favoriteItems) do
				db.profile.favoriteItems[v] = "ALL";
			end
			-- unset db.char
			db.char.armorType = nil;
			db.char.slot = nil;
			db.char.mythicLevel = nil;
			db.char.source = nil;
			db.char.favoriteItems = nil;
		end
		if db.profile.v == nil then
			local favoriteItems = db.profile.favoriteItems;
			db.profile.favoriteItems = {};
			db.profile.v = 1;
			for k,v in pairs(favoriteItems) do
				db.profile.favoriteItems[v] = "ALL";
			end
		end
	end
end

local icons = {
	Alliance   = "|TInterface\\TargetingFrame\\UI-PVP-ALLIANCE:14:14:0:0:64:64:10:36:2:38|t",
	Horde      = "|TInterface\\TargetingFrame\\UI-PVP-HORDE:14:14:0:0:64:64:4:38:2:36|t",
	Neutral    = "|TInterface\\Timer\\Panda-Logo:14|t",
	pvp        = "|TInterface\\TargetingFrame\\UI-PVP-FFA:14:14:0:0:64:64:10:36:0:38|t",
	class      = "|TInterface\\TargetingFrame\\UI-Classes-Circles:14:14:0:0:256:256:%d:%d:%d:%d|t",
	battlepet  = "|TInterface\\Timer\\Panda-Logo:15|t",
	pettype    = "|TInterface\\TargetingFrame\\PetBadge-%s:14|t",
	questboss  = "|TInterface\\TargetingFrame\\PortraitQuestBadge:0|t",
	friend     = ("|TInterface\\AddOns\\%s\\textures\\friend:14:14:0:0:32:32:1:30:2:30|t"):format(AddonName),
	bnetfriend = "|TInterface\\ChatFrame\\UI-ChatIcon-BattleNet:14:14:0:0:32:32:1:30:2:30|t",
	TANK       = "|TInterface\\LFGFrame\\UI-LFG-ICON-PORTRAITROLES:14:14:0:0:64:64:0:19:22:41|t",
	HEALER     = "|TInterface\\LFGFrame\\UI-LFG-ICON-PORTRAITROLES:14:14:0:0:64:64:20:39:1:20|t",
	DAMAGER    = "|TInterface\\LFGFrame\\UI-LFG-ICON-PORTRAITROLES:14:14:0:0:64:64:20:39:22:41|t",
}
local icon_favorite = icons.friend;
local icon_unfavorite = icons.bnetfriend;

local iLevelListDrop = {
    [1] = 262,
    [2] = 262,
    [3] = 265,
    [4] = 268,
    [5] = 272,
    [6] = 275,
    [7] = 275,
    [8] = 278,
    [9] = 281,
    [10] = 281,
    [11] = 281,
    [12] = 285,
    [13] = 285,
    [14] = 288,
    [15] = 288,
	[16] = 291,
	[17] = 294,
	[18] = 298,
	[19] = 298,
	[20] = 301,
	[21] = 304
}

local armorTypes = {
	[1] = L["Cloth"],
	[2] = L["Leather"],
	[3] = L["Mail"],
	[4] = L["Plate"],
}

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

local mythicLabels = {
	[1] = L["M0/Valor 1"],
    [2] = L["M+2/Valor 1"],
    [3] = L["M+3/Valor 2"],
    [4] = L["M+4/Valor 3"],
    [5] = L["M+5/Valor 4"],
    [6] = L["M+6/Valor 5"],
    [7] = L["M+7/Valor 5"],
    [8] = L["M+8/Valor 6"],
    [9] = L["M+9/Valor 6"],
    [10] = L["M+10/Valor 7"],
    [11] = L["M+11/Valor 7"],
    [12] = L["M+12/Valor 8"],
	[13] = L["M+13/Valor 8"],
    [14] = L["M+14/Valor 9"],
    [15] = L["M+15/Valor 9"],
	[16] = L["Valor 10"],
	[17] = L["Valor 11"],
	[18] = L["Valor 12"],
	[19] = L["Great Vault M+12/13"],
	[20] = L["Great Vault M+14"],
	[21] = L["Great Vault M+15"]
}

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

local dungeonList = {
	[1] = L["Tazavesh: Streets of Wonder"],
	[2] = L["Tazavesh: So'Leah's Gambit"],
	[3] = L["Mechagon: Junkyard"],
	[4] = L["Grimrail Depot / Iron Docks"],
	[5] = L["Mechagon: Workshop"],
	[6] = L["Karazhan: Lower"],
	[7] = L["Karazhan: Upper"],
	[8] = ""
	--[8] = L["Iron Docks"]
}

local dungeonItems = {
	-- [item number]: {slot, armorType, dungeon}
	-- Tazavesh: Streets of Wonder
	[185793]= {7, 1, 1},
	[185791] = {7, 2, 1},
	[185815] = {6, 4, 1},
	[185816] = {6, 3, 1},
	[185824] = {13, 5, 1},
	[185780] = {13, 5, 1},
	[185792] = {7, 4, 1},
	[185814] = {6, 1, 1},
	[185777] = {13, 5, 1},
	[185794] = {7, 3, 1},
	[185821] = {13, 5, 1},
	[185840] = {11, 5, 1},
	[185809] = {8, 2, 1},
	[185817] = {6, 2, 1},
	[185808] = {8, 3, 1},
	[185844] = {12, 5, 1},
	[185787] = {10, 4, 1},
	[185846] = {12, 5, 1},
	[185811] = {14, 5, 1},
	[185807] = {8, 1, 1},
	[185812] = {14, 5, 1},
	[185802] = {3, 2, 1},
	[185804] = {3, 1, 1},
	[185806] = {8, 4, 1},
	[185842] = {2, 5, 1},
	[185789] = {10, 3, 1},
	[185783] = {16, 5, 1},
	[185843] = {4, 5, 1},
	[185798] = {9, 4, 1},
	[185782] = {5, 1, 1},
	[185786] = {5, 2, 1},
	[185800] = {9, 3, 1},
	[185778] = {13, 5, 1},
	[185836] = {12, 5, 1},
	[185845] = {12, 5, 1},
	-- Tazavesh: So'Leah's Gambit
	[185781] = {4, 5, 2},
	[185788] = {10, 1, 2},
	[185805] = {3, 3, 2},
	[185803] = {3, 4, 2},
	[185790] = {10, 2, 2},
	[185810] = {15, 5, 2},
	[185779] = {15, 5, 2},
	[185820] = {2, 5, 2},
	[185776] = {1, 4, 2},
	[185797] = {1, 2, 2},
	[185796] = {1, 3, 2},
	[185795] = {1, 1, 2},
	[185841] = {13, 5, 2},
	[185823] = {13, 5, 2},
	[185801] = {9, 2, 2},
	[185785] = {5, 3, 2},
	[185819] = {13, 5, 2},
	[185799] = {9, 1, 2},
	[185784] = {5, 4, 2},
	[185813] = {11, 5, 2},
	[185818] = {12, 5, 2},
	[185822] = {15, 5, 2},
	-- Mechagon: Junkyard
	[169035] = {15, 5, 3},
	[169049] = {10, 1, 3},
	[169050] = {15, 5, 3},
	[169051] = {9, 4, 3},
	[169052] = {13, 5, 3},
	[169053] = {10, 3, 3},
	[169054] = {7, 2, 3},
	[169055] = {10, 4, 3},
	[169056] = {10, 2, 3},
	[169057] = {8, 4, 3},
	[169058] = {13, 5, 3},
	[169059] = {7, 3, 3},
	[169060] = {8, 3, 3},
	[169061] = {7, 1, 3},
	[169062] = {13, 5, 3},
	[169063] = {7, 4, 3},
	[169064] = {4, 5, 3},
	[169065] = {9, 3, 3},
	[169066] = {13, 5, 3},
	[169067] = {8, 1, 3},
	[169068] = {14, 5, 3},
	[169069] = {6, 2, 3},
	[169070] = {9, 2, 3},
	[169769] = {12, 5, 3},
	[168963] = {13, 5, 3},
	[169071] = {9, 1, 3},
	[169072] = {5, 1, 3},
	[169073] = {5, 2, 3},
	[169074] = {3, 3, 3},
	[169075] = {3, 4, 3},
	[169076] = {11, 5, 3},
	[169077] = {16, 5, 3},
	[169156] = {11, 5, 3},
	[169157] = {11, 5, 3},
	[169158] = {11, 5, 3},
	-- Mechagon Workshop
	[168955] = {13, 5, 5},
	[168957] = {8, 2, 5},
	[168958] = {8, 1, 5},
	[168962] = {13, 5, 5},
	[168964] = {10, 1, 5},
	[168965] = {12, 5, 5},
	[168966] = {9, 4, 5},
	[168967] = {6, 3, 5},
	[168968] = {9, 2, 5},
	[168969] = {7, 1, 5},
	[168970] = {4, 5, 5},
	[168971] = {7, 3, 5},
	[168972] = {10, 4, 5},
	[168973] = {15, 5, 5},
	[168974] = {9, 3, 5},
	[168975] = {10, 2, 5},
	[168976] = {8, 4, 5},
	[168977] = {11, 5, 5},
	[169159] = {11, 5, 5},
	[169160] = {11, 5, 5},
	[169161] = {11, 5, 5},
	[169344] = {12, 5, 5},
	[169608] = {13, 5, 5},
	[168978] = {6, 4, 5},
	[168979] = {5, 4, 5},
	[168980] = {7, 4, 5},
	[168981] = {5, 3, 5},
	[168982] = {10, 3, 5},
	[168983] = {8, 3, 5},
	[168984] = {3, 2, 5},
	[168985] = {7, 2, 5},
	[168986] = {8, 2, 5},
	[168987] = {3, 1, 5},
	[168988] = {9, 1, 5},
	[168989] = {6, 1, 5},
	-- Karazhan: Lower
	[142137] = {8, 3, 6},
	[142198] = {6, 4, 6},
	[142204] = {10, 3, 6},
	[142205] = {7, 2, 6},
	[142296] = {1, 1, 6},
	[142298] = {10, 1, 6},
	[142299] = {7, 4, 6},
	[142300] = {9, 2, 6},
	[132379] = {6, 1, 6},
	[132453] = {9, 4, 6},
	[132458] = {6, 4, 6},
	[137097] = {6, 2, 6},
	[142146] = {6, 2, 6},
	[142154] = {6, 1, 6},
	[142160] = {12, 5, 6},
	[142164] = {12, 5, 6},
	[142201] = {3, 4, 6},
	[142302] = {6, 3, 6},
	[132444] = {2, 5, 6},
	[132459] = {1, 4, 6},
	[137223] = {11, 5, 6},
	[142168] = {12, 5, 6},
	[142196] = {8, 2, 6},
	[142197] = {9, 3, 6},
	[142202] = {9, 1, 6},
	[142206] = {4, 5, 6},
	[142304] = {1, 4, 6},
	[142124] = {10, 4, 6},
	[142138] = {6, 3, 6},
	[142139] = {5, 2, 6},
	[142153] = {8, 1, 6},
	[142158] = {12, 5, 6},
	[142170] = {4, 5, 6},
	[142126] = {1, 4, 6},
	[142136] = {3, 3, 6},
	[142140] = {10, 2, 6},
	[142148] = {10, 1, 6},
	[142161] = {12, 5, 6},
	[142174] = {2, 5, 6},
	[133976] = {8, 2, 6},
	[137101] = {6, 3, 6},
	[142123] = {5, 4, 6},
	[142134] = {1, 3, 6},
	[142143] = {9, 2, 6},
	[142147] = {5, 1, 6},
	[142159] = {12, 5, 6},
	[142171] = {11, 5, 6},
	-- Karazhan: Upper
	[132444] = {2, 5, 7},
	[142125] = {7, 4, 7},
	[142130] = {6, 4, 7},
	[142133] = {7, 3, 7},
	[142141] = {7, 2, 7},
	[142149] = {7, 1, 7},
	[142165] = {12, 5, 7},
	[142172] = {11, 5, 7},
	[142129] = {8, 4, 7},
	[142131] = {5, 3, 7},
	[142145] = {8, 2, 7},
	[142152] = {3, 1, 7},
	[142157] = {12, 5, 7},
	[142169] = {12, 5, 7},
	[142207] = {2, 5, 7},
	[151644] = {11, 5, 7},
	[142128] = {3, 4, 7},
	[142135] = {9, 3, 7},
	[142144] = {3, 2, 7},
	[142150] = {1, 1, 7},
	[142162] = {12, 5, 7},
	[142215] = {4, 5, 7},
	[142127] = {9, 4, 7},
	[142132] = {10, 3, 7},
	[142142] = {1, 2, 7},
	[142151] = {9, 1, 7},
	[142167] = {12, 5, 7},
	[142173] = {11, 5, 7},
	-- Grimrail Depot
	[109759] = {11, 5, 4},
	[109760] = {11, 5, 4},
	[109761] = {11, 5, 4},
	[109762] = {11, 5, 4},
	[109763] = {11, 5, 4},
	[109764] = {11, 5, 4},
	[109765] = {11, 5, 4},
	[109766] = {11, 5, 4},
	[109767] = {11, 5, 4},
	[109768] = {11, 5, 4},
	[109769] = {11, 5, 4},
	[109770] = {11, 5, 4},
	[109771] = {11, 5, 4},
	[109772] = {11, 5, 4},
	[109773] = {11, 5, 4},
	[109774] = {11, 5, 4},
	[109775] = {11, 5, 4},
	[109776] = {11, 5, 4},
	[109777] = {11, 5, 4},
	[109778] = {11, 5, 4},
	[109779] = {11, 5, 4},
	[109780] = {11, 5, 4},
	[109781] = {11, 5, 4},
	[109782] = {11, 5, 4},
	[109783] = {11, 5, 4},
	[109804] = {9, 1, 4},
	[109805] = {9, 1, 4},
	[109806] = {9, 1, 4},
	[109807] = {9, 1, 4},
	[109808] = {9, 1, 4},
	[109809] = {9, 2, 4},
	[109810] = {9, 2, 4},
	[109811] = {9, 2, 4},
	[109812] = {9, 2, 4},
	[109813] = {9, 3, 4},
	[109814] = {9, 3, 4},
	[109815] = {9, 3, 4},
	[109816] = {9, 3, 4},
	[109817] = {9, 3, 4},
	[109818] = {9, 4, 4},
	[109819] = {9, 4, 4},
	[109820] = {9, 4, 4},
	[109821] = {9, 4, 4},
	[109822] = {9, 4, 4},
	[109823] = {9, 2, 4},
	[109824] = {8, 1, 4},
	[109825] = {8, 1, 4},
	[109826] = {8, 1, 4},
	[109827] = {8, 1, 4},
	[109828] = {8, 1, 4},
	[109829] = {8, 2, 4},
	[109830] = {8, 2, 4},
	[109831] = {8, 2, 4},
	[109832] = {8, 2, 4},
	[109833] = {8, 3, 4},
	[109834] = {8, 3, 4},
	[109835] = {8, 3, 4},
	[109836] = {8, 3, 4},
	[109837] = {8, 4, 4},
	[109838] = {8, 4, 4},
	[109839] = {8, 4, 4},
	[109840] = {8, 4, 4},
	[109841] = {8, 4, 4},
	[109842] = {8, 2, 4},
	[109843] = {8, 3, 4},
	[109844] = {7, 1, 4},
	[109845] = {7, 1, 4},
	[109846] = {7, 1, 4},
	[109847] = {7, 1, 4},
	[109848] = {7, 2, 4},
	[109849] = {7, 2, 4},
	[109850] = {7, 2, 4},
	[109851] = {7, 2, 4},
	[109852] = {7, 3, 4},
	[109853] = {7, 3, 4},
	[109854] = {7, 3, 4},
	[109855] = {7, 3, 4},
	[109856] = {7, 4, 4},
	[109857] = {7, 4, 4},
	[109858] = {7, 4, 4},
	[109859] = {7, 4, 4},
	[109860] = {7, 4, 4},
	[109861] = {7, 1, 4},
	[109862] = {7, 2, 4},
	[109863] = {7, 3, 4},
	[109864] = {6, 1, 4},
	[109865] = {6, 1, 4},
	[109866] = {6, 1, 4},
	[109867] = {6, 1, 4},
	[109868] = {6, 2, 4},
	[109869] = {6, 2, 4},
	[109870] = {6, 2, 4},
	[109871] = {6, 2, 4},
	[109872] = {6, 3, 4},
	[109873] = {6, 3, 4},
	[109874] = {6, 3, 4},
	[109875] = {6, 3, 4},
	[109876] = {6, 4, 4},
	[109877] = {6, 4, 4},
	[109878] = {6, 4, 4},
	[109879] = {6, 4, 4},
	[109880] = {6, 4, 4},
	[109881] = {6, 1, 4},
	[109882] = {6, 2, 4},
	[109883] = {6, 3, 4},
	[109884] = {5, 2, 4},
	[109885] = {5, 2, 4},
	[109886] = {5, 2, 4},
	[109887] = {5, 3, 4},
	[109888] = {5, 3, 4},
	[109889] = {5, 3, 4},
	[109890] = {5, 3, 4},
	[109891] = {5, 3, 4},
	[109892] = {5, 4, 4},
	[109893] = {5, 4, 4},
	[109894] = {5, 4, 4},
	[109895] = {5, 4, 4},
	[109896] = {5, 4, 4},
	[109897] = {5, 2, 4},
	[109898] = {5, 2, 4},
	[109899] = {5, 1, 4},
	[109900] = {5, 1, 4},
	[109901] = {5, 1, 4},
	[109902] = {5, 1, 4},
	[109903] = {5, 1, 4},
	[109950] = {2, 5, 4},
	[109951] = {2, 5, 4},
	[109952] = {2, 5, 4},
	[109953] = {2, 5, 4},
	[109954] = {2, 5, 4},
	[109955] = {2, 5, 4},
	[109956] = {2, 5, 4},
	[109957] = {2, 5, 4},
	[109958] = {2, 5, 4},
	[109959] = {2, 5, 4},
	[109960] = {2, 5, 4},
	[109961] = {2, 5, 4},
	[109962] = {2, 5, 4},
	[109963] = {2, 5, 4},
	[109964] = {2, 5, 4},
	[109965] = {2, 5, 4},
	[109966] = {2, 5, 4},
	[109967] = {2, 5, 4},
	[109968] = {2, 5, 4},
	[109969] = {2, 5, 4},
	[109996] = {12, 5, 4},
	[110001] = {12, 5, 4},
	[110051] = {15, 5, 4},
	[110052] = {13, 5, 4},
	[110053] = {14, 5, 4},
	[110054] = {15, 5, 4},
	-- Iron Docks
	[109759] = {11, 5, 4},
	[109760] = {11, 5, 4},
	[109761] = {11, 5, 4},
	[109762] = {11, 5, 4},
	[109763] = {11, 5, 4},
	[109764] = {11, 5, 4},
	[109765] = {11, 5, 4},
	[109766] = {11, 5, 4},
	[109767] = {11, 5, 4},
	[109768] = {11, 5, 4},
	[109769] = {11, 5, 4},
	[109770] = {11, 5, 4},
	[109771] = {11, 5, 4},
	[109772] = {11, 5, 4},
	[109773] = {11, 5, 4},
	[109774] = {11, 5, 4},
	[109775] = {11, 5, 4},
	[109776] = {11, 5, 4},
	[109777] = {11, 5, 4},
	[109778] = {11, 5, 4},
	[109779] = {11, 5, 4},
	[109780] = {11, 5, 4},
	[109781] = {11, 5, 4},
	[109782] = {11, 5, 4},
	[109783] = {11, 5, 4},
	[109804] = {9, 1, 4},
	[109805] = {9, 1, 4},
	[109806] = {9, 1, 4},
	[109807] = {9, 1, 4},
	[109808] = {9, 1, 4},
	[109809] = {9, 2, 4},
	[109810] = {9, 2, 4},
	[109811] = {9, 2, 4},
	[109812] = {9, 2, 4},
	[109813] = {9, 3, 4},
	[109814] = {9, 3, 4},
	[109815] = {9, 3, 4},
	[109816] = {9, 3, 4},
	[109817] = {9, 3, 4},
	[109818] = {9, 4, 4},
	[109819] = {9, 4, 4},
	[109820] = {9, 4, 4},
	[109821] = {9, 4, 4},
	[109822] = {9, 4, 4},
	[109823] = {9, 2, 4},
	[109824] = {8, 1, 4},
	[109825] = {8, 1, 4},
	[109826] = {8, 1, 4},
	[109827] = {8, 1, 4},
	[109828] = {8, 1, 4},
	[109829] = {8, 2, 4},
	[109830] = {8, 2, 4},
	[109831] = {8, 2, 4},
	[109832] = {8, 2, 4},
	[109833] = {8, 3, 4},
	[109834] = {8, 3, 4},
	[109835] = {8, 3, 4},
	[109836] = {8, 3, 4},
	[109837] = {8, 4, 4},
	[109838] = {8, 4, 4},
	[109839] = {8, 4, 4},
	[109840] = {8, 4, 4},
	[109841] = {8, 4, 4},
	[109842] = {8, 2, 4},
	[109843] = {8, 3, 4},
	[109844] = {7, 1, 4},
	[109845] = {7, 1, 4},
	[109846] = {7, 1, 4},
	[109847] = {7, 1, 4},
	[109848] = {7, 2, 4},
	[109849] = {7, 2, 4},
	[109850] = {7, 2, 4},
	[109851] = {7, 2, 4},
	[109852] = {7, 3, 4},
	[109853] = {7, 3, 4},
	[109854] = {7, 3, 4},
	[109855] = {7, 3, 4},
	[109856] = {7, 4, 4},
	[109857] = {7, 4, 4},
	[109858] = {7, 4, 4},
	[109859] = {7, 4, 4},
	[109860] = {7, 4, 4},
	[109861] = {7, 1, 4},
	[109862] = {7, 2, 4},
	[109863] = {7, 3, 4},
	[109864] = {6, 1, 4},
	[109865] = {6, 1, 4},
	[109866] = {6, 1, 4},
	[109867] = {6, 1, 4},
	[109868] = {6, 2, 4},
	[109869] = {6, 2, 4},
	[109870] = {6, 2, 4},
	[109871] = {6, 2, 4},
	[109872] = {6, 3, 4},
	[109873] = {6, 3, 4},
	[109874] = {6, 3, 4},
	[109875] = {6, 3, 4},
	[109876] = {6, 4, 4},
	[109877] = {6, 4, 4},
	[109878] = {6, 4, 4},
	[109879] = {6, 4, 4},
	[109880] = {6, 4, 4},
	[109881] = {6, 1, 4},
	[109882] = {6, 2, 4},
	[109883] = {6, 3, 4},
	[109884] = {5, 2, 4},
	[109885] = {5, 2, 4},
	[109886] = {5, 2, 4},
	[109887] = {5, 3, 4},
	[109888] = {5, 3, 4},
	[109889] = {5, 3, 4},
	[109890] = {5, 3, 4},
	[109891] = {5, 3, 4},
	[109892] = {5, 4, 4},
	[109893] = {5, 4, 4},
	[109894] = {5, 4, 4},
	[109895] = {5, 4, 4},
	[109896] = {5, 4, 4},
	[109897] = {5, 2, 4},
	[109898] = {5, 2, 4},
	[109899] = {5, 1, 4},
	[109900] = {5, 1, 4},
	[109901] = {5, 1, 4},
	[109902] = {5, 1, 4},
	[109903] = {5, 1, 4},
	[109930] = {3, 1, 4},
	[109931] = {3, 1, 4},
	[109932] = {3, 1, 4},
	[109933] = {3, 1, 4},
	[109934] = {3, 2, 4},
	[109935] = {3, 2, 4},
	[109936] = {3, 2, 4},
	[109937] = {3, 2, 4},
	[109938] = {3, 2, 4},
	[109939] = {3, 3, 4},
	[109940] = {3, 3, 4},
	[109941] = {3, 3, 4},
	[109942] = {3, 3, 4},
	[109943] = {3, 4, 4},
	[109944] = {3, 4, 4},
	[109945] = {3, 4, 4},
	[109946] = {3, 4, 4},
	[109947] = {3, 4, 4},
	[109948] = {3, 1, 4},
	[109949] = {3, 3, 4},
	[109950] = {2, 5, 4},
	[109951] = {2, 5, 4},
	[109952] = {2, 5, 4},
	[109953] = {2, 5, 4},
	[109954] = {2, 5, 4},
	[109955] = {2, 5, 4},
	[109956] = {2, 5, 4},
	[109957] = {2, 5, 4},
	[109958] = {2, 5, 4},
	[109959] = {2, 5, 4},
	[109960] = {2, 5, 4},
	[109961] = {2, 5, 4},
	[109962] = {2, 5, 4},
	[109963] = {2, 5, 4},
	[109964] = {2, 5, 4},
	[109965] = {2, 5, 4},
	[109966] = {2, 5, 4},
	[109967] = {2, 5, 4},
	[109968] = {2, 5, 4},
	[109969] = {2, 5, 4},
	[109970] = {1, 1, 4},
	[109971] = {1, 1, 4},
	[109972] = {1, 1, 4},
	[109973] = {1, 1, 4},
	[109974] = {1, 1, 4},
	[109975] = {1, 2, 4},
	[109976] = {1, 2, 4},
	[109977] = {1, 2, 4},
	[109978] = {1, 2, 4},
	[109979] = {1, 2, 4},
	[109980] = {1, 3, 4},
	[109981] = {1, 3, 4},
	[109982] = {1, 3, 4},
	[109983] = {1, 3, 4},
	[109984] = {1, 3, 4},
	[109985] = {1, 4, 4},
	[109986] = {1, 4, 4},
	[109987] = {1, 4, 4},
	[109988] = {1, 4, 4},
	[109989] = {1, 4, 4},
	[109997] = {12, 5, 4},
	[110002] = {12, 5, 4},
	[110017] = {12, 5, 4},
	[110055] = {13, 5, 4},
	[110056] = {16, 5, 4},
	[110057] = {13, 5, 4},
	[110058] = {13, 5, 4},
	[110059] = {15, 5, 4},
	[110060] = {16, 5, 4},
	[111244] = {2, 5, 4},
}

function MyDropDownMenu_OnLoad()
   info = {};
   info.text = "This is an option in the menu.";
   info.value = "OptionVariable";
   info.func = FunctionCalledWhenOptionIsClicked
   -- can also be done as function() FunctionCalledWhenOptionIsClicked() end;
   -- Add the above information to the options menu as a button.
   UIDropDownMenu_AddButton(info);
end

local xStart, yStart, yOffset, xSecondColumn = 75, -100, -110, 325;
function createDungeonText(frame)
	local favString = frame.CreateFontString(frame, "OVERLAY", "GameTooltipText");
	favString:SetFontObject("GameFontNormalLarge");
	favString:SetJustifyH("RIGHT");
	favString:SetPoint("TOPLEFT", frame, "TOPLEFT", 75, -50);
	favString:SetTextColor(1, 1, 1, 1);
	favString:SetText("Right click on item to favorite.");

	for i=1,#dungeonList do
		local justifyH;
		local offsetX;
		local offsetY;
		if i<=#dungeonList/2 then
			justifyH = "RIGHT"
			offsetX = xStart
			offsetY = yStart+(i-1)*yOffset
		else
			justifyH = "LEFT"
			offsetX = xStart+xSecondColumn
			offsetY = yStart+(i-#dungeonList/2-1)*yOffset
		end

		local dungeonString = frame.CreateFontString(frame, "OVERLAY", "GameTooltipText");
		dungeonString:SetFontObject("GameFontNormalLarge");
		dungeonString:SetJustifyH(justifyH);
		dungeonString:SetPoint("TOPLEFT", frame, "TOPLEFT", offsetX, offsetY);
		dungeonString:SetTextColor(1, 1, 1, 1);
		dungeonString:SetText(dungeonList[i]);
	end
end

function getIndex(inputTable, value)
	local index={}
	for k,v in pairs(inputTable) do
	   index[v]=k
	end
	return index[value]
end

function indexTable(inputTable)
	local index={}
	for k,v in pairs(inputTable) do
	   index[v]=k
	end
	return index
end

function tcontains(table, item)
	local index = 1;
	while table[index] do
		if ( item == table[index] ) then
			return 1;
		end
		index = index + 1;
	end
	return nil;
end

local framepool = {};
local favframepool = {};
local tmpFavItems = {};

function clearFrames()
	if itemsInitialized then
		-- FIXME: memory leak?
		for k,v in pairs(framepool) do
			v:Hide();
		end
		for k,v in pairs(favframepool) do
			v:Hide();
		end
		tmpFavItems = {};
	end
end

function sendItemLink(itemLink)
	local chatEditBox = ChatEdit_ChooseBoxForSend()
	if not chatEditBox:IsShown() then
		ChatEdit_ActivateChat(chatEditBox)
	end
	chatEditBox:Insert(itemLink)
	--chatEditBox:HighlightText()
end

function getNextRole(role)
	if role == "ALL" then
		return "DAMAGER";
	elseif role == "DAMAGER" then
		return "TANK";
	elseif role == "TANK" then
		return "HEALER";
	else
		return "ALL";
	end
end

function getRoleIcon(role)
	if role == "ALL" then
		return "";
	else
		return icons[role];
	end
end

function undoFavItem(f, itemFrame, itemID, itemLevel)
	f.ico.prefix = icon_unfavorite;
	f.ico:SetText(f.ico.prefix .. f.ico.suffix);
	itemFrame.ico.prefix = icon_unfavorite;
	itemFrame.ico:SetText(itemFrame.ico.prefix .. itemFrame.ico.suffix);

	db.profile.favoriteItems[itemID] = nil;
	itemFrame.favorite = false;
end

function redoFavItem(f, itemFrame, itemID, itemLevel)
	f.ico.prefix = icon_favorite;
	f.ico:SetText(f.ico.prefix .. f.ico.suffix);
	itemFrame.ico.prefix = icon_favorite;
	itemFrame.ico:SetText(itemFrame.ico.prefix .. itemFrame.ico.suffix);

	db.profile.favoriteItems[itemID] = itemFrame.role;
	itemFrame.favorite = true;
end

function changeFavRole(f, itemFrame, itemID, itemLevel)
	local role = getNextRole(itemFrame.role);
	local roleIcon = getRoleIcon(role);
	if not itemFrame.favorite then
		f.ico.prefix = icon_favorite;
		itemFrame.ico.prefix = icon_favorite;
	end
	f.ico.suffix = roleIcon;
	f.ico:SetText(f.ico.prefix .. f.ico.suffix);
	itemFrame.ico.suffix = roleIcon;
	itemFrame.ico:SetText(itemFrame.ico.prefix .. itemFrame.ico.suffix);
	itemFrame.role = role;

	db.profile.favoriteItems[itemID] = role;
	itemFrame.favorite = true;
end

function createFavItem(frame, itemFrame, itemID, itemLevel)
	local xStart = sizex + 10;
	local xItemStart, yItemStart, yItemOffset, xItemSecondColumn = xStart, -120, -220, 325;
	local tmpFavCount = 0;
	local role = itemFrame.role;

	if tmpFavItems[itemID] ~= nil then
		-- already added
		if itemFrame.favorite then
			undoFavItem(itemFrame.fav, itemFrame, itemID, itemLevel);
		else
			redoFavItem(itemFrame.fav, itemFrame, itemID, itemLevel);
		end
		return
	end
	tmpFavItems[itemID] = true;
	for _ in pairs(tmpFavItems) do
		tmpFavCount = tmpFavCount + 1;
	end

	if tmpFavCount == 1 then
		local justifyH = "RIGHT";
		local offsetX = xStart;
		local offsetY = yStart;

		local favoriteString = frame.CreateFontString(frame, "OVERLAY", "GameTooltipText");
		favoriteString:SetFontObject("GameFontNormalLarge");
		favoriteString:SetJustifyH(justifyH);
		--favoriteString:SetJustifyV("CENTER");
		favoriteString:SetPoint("TOPLEFT", frame, "TOPLEFT", offsetX, offsetY);
		favoriteString:SetTextColor(1, 1, 1, 1);
	end

	local k = itemID;
	local xSize, ySize = 32, 32;
	if true then
		local itemIcon = GetItemIcon(k);
		local f = CreateFrame("Frame", "MPLFavItemIcon"..k, frame, BackdropTemplateMixin and "BackdropTemplate");

		local x = xItemStart + xSize/4 + (tmpFavCount - 1)*xSize*1.5;
		local y = yItemStart - ySize + ySize/4;
		if true then
			f:SetPoint("TOPLEFT", frame, "TOPLEFT", x, y);
			f.tex = f:CreateTexture();
			f.tex:SetAllPoints(f);
			f.tex:SetTexture(itemIcon);
			f.ico = f:CreateFontString(f, "OVERLAY", "GameTooltipText")
			f.ico:SetPoint("BOTTOMLEFT", f, "TOPLEFT", 0, 0)
			if itemFrame.favorite then
				f.ico.prefix = icon_unfavorite;
				itemFrame.ico.prefix = icon_unfavorite;
			else
				f.ico.prefix = icon_favorite;
				itemFrame.ico.prefix = icon_favorite;
			end
			f.ico.suffix = getRoleIcon(role);
			f.ico:SetText(f.ico.prefix .. f.ico.suffix);
			itemFrame.ico:SetText(itemFrame.ico.prefix .. itemFrame.ico.suffix);
			itemFrame.fav = f;
			f:SetScript("OnEnter",
			function()
				GameTooltip:SetOwner(f, "ANCHOR_BOTTOMRIGHT",f:GetWidth(),f:GetHeight());
				GameTooltip:SetHyperlink("item:"..k.."..::::::::::::2:6807:"..itemLevel);
				GameTooltip:Show();
			end
			);
			f:SetScript("OnLeave",
			function()
				GameTooltip:Hide();
			end
			);
			f:SetScript("OnMouseDown",
			function(self, button)
				local shift_key = IsShiftKeyDown()
				if button == "LeftButton" then
					if shift_key then
						itemName, itemLink, itemQuality, itemLevel, itemMinLevel, itemType, itemSubType, itemStackCount, itemEquipLoc, itemTexture, sellPrice, classID, subclassID, bindType, expacID, setID, isCraftingReagent = GetItemInfo("item:"..k.."..::::::::::::2:6807:"..itemLevel)
						sendItemLink(itemLink)
					end
				elseif button == "RightButton" then
					changeFavRole(self, itemFrame, k, itemLevel);
				end
			end
			);
		end
	end

	if not itemFrame.favorite then
		db.profile.favoriteItems[itemID] = role;
		itemFrame.favorite = true;
	else
		db.profile.favoriteItems[itemID] = nil;
		itemFrame.favorite = false;
	end

end

function createItems(frame, armorSelection, itemSlot, dungeonLevel, itemSource)
	local xItemStart, yItemStart, yItemOffset, xItemSecondColumn = 75, -120, -220, 325;

	local dungeonCount = {
		[1] = {0, 0, 0},
		[2] = {0, 0, 0},
		[3] = {0, 0, 0},
		[4] = {0, 0, 0},
		[5] = {0, 0, 0},
		[6] = {0, 0, 0},
		[7] = {0, 0, 0},
		[8] = {0, 0, 0},
		[9] = {0, 0, 0},
		[10] = {0, 0, 0},
	}

	-- If a new option is selected, delete the old frames
	clearFrames();

	-- index tables
	local itemIndex = getIndex(gearSlots, itemSlot);
	local armorIndex = getIndex(armorTypes, armorSelection);
	local dungeonIndex = indexTable(dungeonList);

	local favoriteMode = (itemIndex == 17) and true or false;
	-- get items
	local itemList = {};
	if not favoriteMode then
		for k,v in pairs(dungeonItems) do
			if v[1] == itemIndex and (v[2] == armorIndex or v[2] == 5) then
				itemList[k] = v;
			end
		end
	else
		for k,v in pairs(db.profile.favoriteItems) do
			itemList[k] = dungeonItems[k];
			end
	end

	-- Dungeon drop or weekly vault
	local itemLevelStart;
	if itemSource == L["Weekly Vault"] and dungeonLevel ~= 0 then
		itemLevelStart = iLevelListChest[dungeonLevel];
	elseif dungeonLevel ~= 0 then
		itemLevelStart = iLevelListDrop[dungeonLevel];
	else
		itemLevelStart = iLevelListDrop[1];
	end

	local xSize, ySize = 32, 32;
	local xOff, yOff;
	for k,v in pairs(itemList) do
		-- item level bullshit because of different base levels for the items
		local itemLevel
		if v[3] < 3 then
			itemLevel = 1466 - (304 - itemLevelStart)
		elseif v[3] == 4 then
			itemLevel = 1577 - (304 - itemLevelStart)
		elseif v[3] < 6 then
			itemLevel = 1543 - (304 - itemLevelStart)
		else
			itemLevel = 1571 - (304 - itemLevelStart)
		end

		local itemIcon = GetItemIcon(k);
		local f = CreateFrame("Frame", "MPLItemIcon"..k, frame);
		tinsert(framepool, f);
		f:SetSize(xSize, ySize);

		-- iron docks and grimrail fuck ton of items handling
		if dungeonCount[v[3]][1] % 6 == 0 and dungeonCount[v[3]][1] > 0 then
			dungeonCount[v[3]][2], dungeonCount[v[3]][3] = dungeonCount[v[3]][1], dungeonCount[v[3]][3]+50
		end

		local x, y;
		-- First column
		if v[3]<=#dungeonList/2 then
			x = xItemStart+xSize/4+(dungeonCount[v[3]][1] - dungeonCount[v[3]][2])*xSize*1.5;
			y = (yItemStart - dungeonCount[v[3]][3])+(v[3]-1)*yItemOffset/2-ySize+ySize/4;
		-- Second column
		else
			x = xItemStart+xSecondColumn+xSize/4+(dungeonCount[v[3]][1] - dungeonCount[v[3]][2])*xSize*1.5;
			y = (yItemStart -  dungeonCount[v[3]][3])+(v[3]-#dungeonList/2-1)*yItemOffset/2-ySize+ySize/4;
		end

		f:SetPoint("TOPLEFT", frame, "TOPLEFT", x, y);
		f.tex = f:CreateTexture();
		f.tex:SetAllPoints(f);
		f.tex:SetTexture(itemIcon);
		f.ico = f:CreateFontString(f, "OVERLAY", "GameTooltipText")
		f.ico:SetPoint("BOTTOMLEFT", f, "TOPLEFT", 0, 0)
		f.ico.prefix = "";
		f.ico.suffix = "";
		local isInFavorites = (db.profile.favoriteItems[k] ~= nil);
		if isInFavorites then
			f.role = db.profile.favoriteItems[k];
		else
			f.role = "ALL";
		end
		if not favoriteMode and isInFavorites then
			f.ico.prefix = icon_favorite;
		end
		f.ico.suffix = getRoleIcon(f.role);
		f.ico:SetText(f.ico.prefix .. f.ico.suffix);
		f.favorite = (favoriteMode or isInFavorites) and true or false;
		f.favoriteMode = favoriteMode;
		f:SetScript("OnEnter",
		function()
			GameTooltip:SetOwner(f, "ANCHOR_BOTTOMRIGHT",f:GetWidth(),f:GetHeight());
			GameTooltip:SetHyperlink("item:"..k.."..::::::::::::2:6000:"..itemLevel);
			GameTooltip:Show();
		end
		);
		f:SetScript("OnLeave",
		function()
			GameTooltip:Hide();
		end
		);
		f:SetScript("OnMouseDown",
		function(self, button)
			local shift_key = IsShiftKeyDown()
			if button == "LeftButton" then
				if shift_key then
					itemName, itemLink, itemQuality, itemLevel, itemMinLevel, itemType, itemSubType, itemStackCount, itemEquipLoc, itemTexture, sellPrice, classID, subclassID, bindType, expacID, setID, isCraftingReagent = GetItemInfo("item:"..k.."..::::::::::::2:6807:"..itemLevel)
					sendItemLink(itemLink)
				end
			elseif button == "RightButton" then
				createFavItem(frame, f, k, itemLevel);
			end
		end
		);
		dungeonCount[v[3]][1] = dungeonCount[v[3]][1]+1
	end

	itemsInitialized = true;
end

local armorText, slotText, mythicValue, mythicLevel, mythicText, sourceText;
MPL.BackdropColor = { 0.058823399245739, 0.058823399245739, 0.058823399245739, 0.9}

function closeMainFrame()
	if frame and framesInitialized then
		frame:Hide();
		framesInitialized = false;
	end
end

function initFrames()
	if not framesInitialized then
		frame = CreateFrame("Frame", "MPL", UIParent);
		--tinsert(UISpecialFrames, frame:GetName()) -- esc key functionality but doesn't reopen
		frame:SetMovable(true);
		frame:EnableMouse(true);
		frame:RegisterForDrag("LeftButton");
		frame:SetScript("OnDragStart", frame.StartMoving);
		frame:SetScript("OnDragStop", frame.StopMovingOrSizing);
		frame:SetPoint("CENTER");
		frame:SetWidth(sizex);
		frame:SetHeight(sizey);
		frame:SetFrameStrata("DIALOG");

		local tex = frame:CreateTexture(nil, "BACKGROUND");
		tex:SetAllPoints();
		tex:SetColorTexture(unpack(MPL.BackdropColor));

		-- Close button
		frame.closeButton = CreateFrame("Button", "MPLCloseButton", frame, "UIPanelCloseButton");
		frame.closeButton:ClearAllPoints();
		frame.closeButton:SetPoint("TOPRIGHT", frame, "TOPRIGHT", 0, 0);
		frame.closeButton:SetScript("OnClick",
			function()
				frame:Hide();
				framesInitialized = false;
			end
		);
		frame.closeButton:SetFrameLevel(4);

		local dropDownWidth = 125;
		-- Armor type drop down
		--armorText = armorTypes[classArmors[classID][2]];
		armorText = (db.profile.armorType > 0) and armorTypes[db.profile.armorType] or L["Armor Type"];
		local armorDropDown = CreateFrame("Frame", "MPLArmorDropDown", frame, "UIDropDownMenuTemplate");
		armorDropDown:SetPoint("TOPLEFT", frame, "TOPLEFT", 0, -10);
		UIDropDownMenu_SetWidth(armorDropDown, dropDownWidth);
		UIDropDownMenu_Initialize(armorDropDown, MPLArmorDropDown_Menu);
		UIDropDownMenu_SetText(armorDropDown, armorText);
		UIDropDownMenu_Initialize(armorDropDown,
			function(self, level, menuList)
				local info = UIDropDownMenu_CreateInfo();
				info.func = self.SetValue;
				for i=1,#armorTypes do
					info.text = armorTypes[i];
					info.menuList = i;
					info.hasArrow = false;
					info.value = armorTypes[i];
					info.arg1 = armorTypes[i];
					info.checked = false;
					UIDropDownMenu_AddButton(info);
				end
			end
		);
		if armorText ~= L["Armor Type"] then
			UIDropDownMenu_SetSelectedValue(armorDropDown, armorText);
		end
		-- Implement the function to change the value
		function armorDropDown:SetValue(newValue)
			db.profile.armorType = getIndex(armorTypes, newValue);
			armorText = newValue;
			UIDropDownMenu_SetSelectedValue(armorDropDown, armorText);
			if armorText ~= L["Armor Type"] and slotText ~= L["Item Slot"] and mythicText ~= L["Mythic Level"] then
				createItems(frame, armorText, slotText, mythicLevel, sourceText);
			elseif armorText == L["Armor Type"] and (slotText == L["Neck"] or slotText == L["Back"] or slotText == L["Finger"] or slotText == L["Trinket"] or slotText == L["One-Hand"] or slotText == L["Off-Hand"] or slotText == L["Two-Hand"] or slotText == L["Ranged"]) and mythicText ~= L["Mythic Level"] then
				createItems(frame, L["Cloth"], slotText, mythicLevel, sourceText);
			else
				clearFrames();
			end
			CloseDropDownMenus();
		end

		-- slot drop down
		slotText = (db.profile.slot > 0) and gearSlots[db.profile.slot] or L["Item Slot"];
		local slotDropDown = CreateFrame("Frame", "MPLSlotDropDown", frame, "UIDropDownMenuTemplate");
		slotDropDown:SetPoint("TOPLEFT", frame, "TOPLEFT", 150, -10);
		UIDropDownMenu_SetWidth(slotDropDown, dropDownWidth);
		UIDropDownMenu_Initialize(slotDropDown, MPLSlotDropDown_Menu);
		UIDropDownMenu_SetText(slotDropDown, slotText);
		UIDropDownMenu_Initialize(slotDropDown,
			function(self, level, menuList)
				-- move favorites to first
				local info = UIDropDownMenu_CreateInfo();
				info.func = self.SetValue;
				if true then
					info.text = L["Favorites"];
					info.menuList = 1;
					info.hasArrow = false;
					info.value = L["Favorites"];
					info.arg1 = L["Favorites"];
					info.checked = false;
					UIDropDownMenu_AddButton(info);
				end
				-- gearSlots
				info = UIDropDownMenu_CreateInfo();
				info.func = self.SetValue;
				for i=1,#gearSlots-1 do
					info.text = gearSlots[i];
					info.menuList = 1 + i;
					info.hasArrow = false;
					info.value = gearSlots[i];
					info.arg1 = gearSlots[i];
					info.checked = false;
					UIDropDownMenu_AddButton(info);
				end
			end
		);
		if slotText ~= L["Item Slot"] then
			UIDropDownMenu_SetSelectedValue(slotDropDown, slotText);
		end
		-- Implement the function to change the value
		function slotDropDown:SetValue(newValue)
			db.profile.slot = getIndex(gearSlots, newValue);
			slotText = newValue;
			UIDropDownMenu_SetSelectedValue(slotDropDown, slotText);
			if armorText ~= L["Armor Type"] and slotText ~= L["Item Slot"] and mythicText ~= L["Mythic Level"] then
				createItems(frame, armorText, slotText, mythicLevel, sourceText);
			elseif armorText == L["Armor Type"] and (slotText == L["Neck"] or slotText == L["Back"] or slotText == L["Finger"] or slotText == L["Trinket"] or slotText == L["One-Hand"] or slotText == L["Off-Hand"] or slotText == L["Two-Hand"] or slotText == L["Ranged"]) and mythicText ~= L["Mythic Level"] then
				createItems(frame, L["Cloth"], slotText, mythicLevel, sourceText);
			else
				clearFrames();
			end
			CloseDropDownMenus();
		end

		-- mythic level drop down
		mythicText = (db.profile.mythicLevel > 0) and mythicLabels[db.profile.mythicLevel] or L["Mythic Level"];
		mythicLevel = db.profile.mythicLevel;
		local mythicDropDown = CreateFrame("Frame", "MPLMythicDropDown", frame, "UIDropDownMenuTemplate");
		mythicDropDown:SetPoint("TOPLEFT", frame, "TOPLEFT", 300, -10);
		UIDropDownMenu_SetWidth(mythicDropDown, dropDownWidth);
		UIDropDownMenu_Initialize(mythicDropDown, MPLMythicDropDown_Menu);
		UIDropDownMenu_SetText(mythicDropDown, mythicText);
		UIDropDownMenu_Initialize(mythicDropDown,
			function(self, level, menuList)
				local info = UIDropDownMenu_CreateInfo();
				info.func = self.SetValue;
				for i=1,#mythicLabels do
					info.text = mythicLabels[i];
					info.menuList = i;
					info.hasArrow = false;
					info.value = mythicLabels[i];
					info.arg1 = mythicLabels[i];
					info.checked = false;
					UIDropDownMenu_AddButton(info);
				end
			end
		);
		if mythicText ~= L["Mythic Level"] then
			UIDropDownMenu_SetSelectedValue(mythicDropDown, mythicText);
		end
		-- Implement the function to change the value
		function mythicDropDown:SetValue(newValue)
			db.profile.mythicLevel = getIndex(mythicLabels, newValue);
			mythicText = newValue;
			mythicLevel = db.profile.mythicLevel;
			UIDropDownMenu_SetSelectedValue(mythicDropDown, mythicText);
			if armorText ~= L["Armor Type"] and slotText ~= L["Item Slot"] and mythicText ~= L["Mythic Level"] then
				createItems(frame, armorText, slotText, mythicLevel, sourceText);
			elseif armorText == L["Armor Type"] and (slotText == L["Neck"] or slotText == L["Back"] or slotText == L["Finger"] or slotText == L["Trinket"] or slotText == L["One-Hand"] or slotText == L["Off-Hand"] or slotText == L["Two-Hand"] or slotText == L["Ranged"]) and mythicText ~= L["Mythic Level"] then
				createItems(frame, L["Cloth"], slotText, mythicLevel, sourceText);
			else
				clearFrames();
			end
			CloseDropDownMenus();
		end

		-- profile drop down
		profileText = db:GetCurrentProfile();
		local profileDropDown = CreateFrame("Frame", "MPLProfileDropDown", frame, "UIDropDownMenuTemplate");
		profileDropDown:SetPoint("TOPLEFT", frame, "TOPLEFT", 450, -10);
		UIDropDownMenu_SetWidth(profileDropDown, dropDownWidth);
		UIDropDownMenu_Initialize(profileDropDown, MPLProfileDropDown_Menu);
		UIDropDownMenu_SetText(profileDropDown, profileText);
		UIDropDownMenu_Initialize(profileDropDown,
			function(self, level, menuList)
				local info = UIDropDownMenu_CreateInfo();
				info.func = self.SetValue;
				for i,profile in pairs(db:GetProfiles()) do
					info.text = profile;
					info.menuList = i;
					info.hasArrow = false;
					info.value = profile;
					info.arg1 = profile;
					info.checked = false;
					UIDropDownMenu_AddButton(info);
				end
			end
		);
		UIDropDownMenu_SetSelectedValue(profileDropDown, profileText);
		-- Implement the function to change the value
		function profileDropDown:SetValue(newValue)
			if not tcontains(db:GetProfiles(), newValue) then
				DEFAULT_CHAT_MESSAGE:AddMessage((L["The profile %s doesn't exist"]):format(newValue));
				return
			end
			currentProfileKey = newValue;
			db:SetProfile(newValue);

			profileText = newValue;
			UIDropDownMenu_SetSelectedValue(profileDropDown, profileText);

			armorText = (db.profile.armorType > 0) and armorTypes[db.profile.armorType] or L["Armor Type"];
			slotText = (db.profile.slot > 0) and gearSlots[db.profile.slot] or L["Item Slot"];
			mythicText = (db.profile.mythicLevel > 0) and mythicLabels[db.profile.mythicLevel] or L["Mythic Level"];
			mythicLevel = db.profile.mythicLevel;
			if armorText ~= L["Armor Type"] then
				UIDropDownMenu_SetSelectedValue(armorDropDown, armorText);
				UIDropDownMenu_SetText(armorDropDown, armorText);
			end
			if slotText ~= L["Item Slot"] then
				UIDropDownMenu_SetSelectedValue(slotDropDown, slotText);
				UIDropDownMenu_SetText(slotDropDown, slotText);
			end
			if mythicText ~= L["Mythic Level"] then
				UIDropDownMenu_SetSelectedValue(mythicDropDown, mythicText);
				UIDropDownMenu_SetText(mythicDropDown, mythicText);
			end

			if armorText ~= L["Armor Type"] and slotText ~= L["Item Slot"] and mythicText ~= L["Mythic Level"] then
				createItems(frame, armorText, slotText, mythicLevel, sourceText);
			elseif armorText == L["Armor Type"] and (slotText == L["Neck"] or slotText == L["Back"] or slotText == L["Finger"] or slotText == L["Trinket"] or slotText == L["One-Hand"] or slotText == L["Off-Hand"] or slotText == L["Two-Hand"] or slotText == L["Ranged"]) and mythicText ~= L["Mythic Level"] then
				createItems(frame, L["Cloth"], slotText, mythicLevel, sourceText);
			else
				clearFrames();
			end
			CloseDropDownMenus();
		end

		-- dungeon or chest drop down
		sourceText = L["Source"];

		-- Dungeon names
		createDungeonText(frame);

		-- Item icons
		if mythicText ~= L["Mythic Level"] then
			createItems(frame, armorText, slotText, mythicLevel, sourceText);
		end
		framesInitialized = true;
	end
end

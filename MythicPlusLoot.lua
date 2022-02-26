local AddonName, MPL = ...;
local L = MPL.L or {}
local sizex = 700;
local sizey = 650;

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
				tooltip:AddLine("Click to toggle AddOn Window")
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
    [1] = 236,
    [2] = 236,
    [3] = 239,
    [4] = 242,
    [5] = 246,
    [6] = 249,
    [7] = 249,
    [8] = 252,
    [9] = 252,
    [10] = 255,
    [11] = 255,
    [12] = 259,
    [13] = 259,
    [14] = 262,
    [15] = 262,
	[16] = 265,
	[17] = 268,
	[18] = 272,
	[19] = 272,
	[20] = 275,
	[21] = 278
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
	[1] = L["Plaguefall"],
	[2] = L["De Other Side"],
	[3] = L["Halls of Atonement"],
	[4] = L["Mists of Tirna Scithe"],
	[5] = L["Sanguine Depths"],
	[6] = L["Spires of Ascension"],
	[7] = L["The Necrotic Wake"],
	[8] = L["Theater of Pain"],
	[9] = L["Tazavesh: Streets of Wonder"],
	[10] = L["Tazavesh: So'Leah's Gambit"]
}

local dungeonItems = {
	-- [item number]: {slot, armorType, dungeon}
	-- Plaguefall
	[178773] = {1, 4, 1},
	[178752] = {13, 5, 1},
	[178753] = {13, 5, 1},
	[178754] = {13, 5, 1},
	[178755] = {4, 5, 1},
	[178756] = {10, 1, 1},
	[178757] = {7, 2, 1},
	[178759] = {1, 1, 1},
	[178760] = {1, 2, 1},
	[178761] = {9, 1, 1},
	[178762] = {9, 3, 1},
	[178763] = {3, 2, 1},
	[178764] = {3, 3, 1},
	[178767] = {6, 3, 1},
	[178769] = {12, 5, 1},
	[178770] = {12, 5, 1},
	[178771] = {12, 5, 1},
	[178774] = {10, 4, 1},
	[178775] = {7, 4, 1},
	[178928] = {13, 5, 1},
	[178929] = {15, 5, 1},
	[178930] = {7, 1, 1},
	[178931] = {8, 4, 1},
	[178932] = {8, 3, 1},
	[178933] = {11, 5, 1},
	[178934] = {6, 2, 1},
	-- De Other Side
	[179322] = {10, 1, 2},
	[179324] = {9, 2, 2},
	[179325] = {7, 3, 2},
	[179326] = {8, 4, 2},
	[179328] = {13, 5, 2},
	[179330] = {15, 5, 2},
	[179331] = {12, 5, 2},
	[179335] = {5, 1, 2},
	[179336] = {7, 2, 2},
	[179337] = {9, 3, 2},
	[179338] = {10, 4, 2},
	[179339] = {15, 5, 2},
	[179340] = {13, 5, 2},
	[179342] = {12, 5, 2},
	[179343] = {8, 1, 2},
	[179344] = {3, 2, 2},
	[179345] = {10, 3, 2},
	[179346] = {5, 4, 2},
	[179347] = {15, 5, 2},
	[179348] = {16, 5, 2},
	[179349] = {4, 5, 2},
	[179350] = {12, 5, 2},
	[179351] = {9, 1, 2},
	[179352] = {10, 2, 2},
	[179353] = {5, 3, 2},
	[179354] = {6, 4, 2},
	[179355] = {11, 5, 2},
	[179356] = {12, 5, 2},
	-- Halls of Atonement
	[178812] = {1, 4, 3},
	[178813] = {5, 1, 3},
	[178814] = {5, 4, 3},
	[178815] = {5, 3, 3},
	[178816] = {1, 3, 3},
	[178817] = {1, 2, 3},
	[178818] = {9, 4, 3},
	[178819] = {9, 2, 3},
	[178820] = {3, 4, 3},
	[178821] = {3, 3, 3},
	[178822] = {8, 1, 3},
	[178823] = {8, 2, 3},
	[178824] = {11, 5, 3},
	[178825] = {12, 5, 3},
	[178826] = {12, 5, 3},
	[178827] = {2, 5, 3},
	[178828] = {14, 5, 3},
	[178829] = {15, 5, 3},
	[178830] = {10, 3, 3},
	[178831] = {10, 1, 3},
	[178832] = {7, 2, 3},
	[178833] = {7, 1, 3},
	[178834] = {13, 5, 3},
	-- Mists of Tirna Scithe
	[178691] = {1, 2, 4},
	[178692] = {1, 3, 4},
	[178693] = {1, 1, 4},
	[178694] = {1, 4, 4},
	[178695] = {3, 3, 4},
	[178696] = {3, 1, 4},
	[178697] = {3, 4, 4},
	[178698] = {5, 2, 4},
	[178699] = {8, 2, 4},
	[178700] = {8, 3, 4},
	[178701] = {9, 4, 4},
	[178702] = {6, 2, 4},
	[178703] = {6, 3, 4},
	[178704] = {6, 1, 4},
	[178705] = {7, 1, 4},
	[178706] = {7, 4, 4},
	[178707] = {2, 5, 4},
	[178708] = {12, 5, 4},
	[178709] = {13, 5, 4},
	[178710] = {13, 5, 4},
	[178711] = {13, 5, 4},
	[178712] = {14, 5, 4},
	[178713] = {15, 5, 4},
	[178714] = {15, 5, 4},
	[178715] = {12, 5, 4},
	-- Sanguine Depths
	[178835] = {5, 2, 5},
	[178836] = {10, 4, 5},
	[178837] = {10, 2, 5},
	[178838] = {9, 1, 5},
	[178839] = {9, 3, 5},
	[178840] = {7, 4, 5},
	[178841] = {7, 3, 5},
	[178842] = {8, 4, 5},
	[178843] = {8, 3, 5},
	[178844] = {6, 1, 5},
	[178845] = {6, 4, 5},
	[178846] = {6, 3, 5},
	[178847] = {6, 2, 5},
	[178848] = {11, 5, 5},
	[178849] = {12, 5, 5},
	[178850] = {12, 5, 5},
	[178851] = {4, 5, 5},
	[178852] = {14, 5, 5},
	[178853] = {13, 5, 5},
	[178854] = {13, 5, 5},
	[178855] = {13, 5, 5},
	[178856] = {13, 5, 5},
	[178857] = {13, 5, 5},
	[178858] = {3, 2, 5},
	[178859] = {3, 1 ,5},
	[178860] = {1, 1, 5},
	[178861] = {12, 5, 5},
	[178862] = {12, 5, 5},
	-- Spires of Ascension
	[180095] = {13, 5, 6},
	[180096] = {15, 5, 6},
	[180097] = {15, 5, 6},
	[180098] = {5, 1, 6},
	[180099] = {5, 4, 6},
	[180100] = {5, 3, 6},
	[180101] = {10, 4, 6},
	[180102] = {10, 1, 6},
	[180103] = {7, 2, 6},
	[180104] = {7, 4, 6},
	[180105] = {7, 3, 6},
	[180106] = {1, 2, 6},
	[180107] = {9, 1, 6},
	[180108] = {9, 2, 6},
	[180109] = {8, 1, 6},
	[180110] = {8, 3, 6},
	[180111] = {8, 2, 6},
	[180112] = {16, 5, 6},
	[180113] = {6, 4, 6},
	[180114] = {6, 3, 6},
	[180115] = {2, 5, 6},
	[180116] = {12, 5, 6},
	[180117] = {12, 5, 6},
	[180118] = {12, 5, 6},
	[180119] = {12, 5, 6},
	[180123] = {4, 5, 6},
	-- The Necrotic Wake
	[178730] = {13, 5, 7},
	[178731] = {10, 2, 7},
	[178732] = {1, 1, 7},
	[178733] = {3, 3, 7},
	[178734] = {8, 4, 7},
	[178735] = {16, 5, 7},
	[178736] = {11, 5, 7},
	[178737] = {13, 5, 7},
	[178738] = {1, 3, 7},
	[178739] = {9, 4, 7},
	[178740] = {3, 1, 7},
	[178741] = {6, 2, 7},
	[178742] = {12, 5, 7},
	[178743] = {13, 5, 7},
	[178744] = {5, 2, 7},
	[178745] = {10, 3, 7},
	[178748] = {7, 1, 7},
	[178749] = {3, 4, 7},
	[178750] = {14, 5, 7},
	[178751] = {12, 5, 7},
	[178772] = {12, 5, 7},
	[178777] = {1, 4, 7},
	[178778] = {9, 3, 7},
	[178779] = {3, 2, 7},
	[178780] = {15, 5, 7},
	[178781] = {11, 5, 7},
	[178782] = {6, 1, 7},
	[178783] = {12, 5, 7},
	-- Theater of Pain
	[178789] = {13, 5, 8},
	[178792] = {5, 1, 8},
	[178793] = {5, 4, 8},
	[178794] = {5, 3, 8},
	[178795] = {5, 2, 8},
	[178796] = {10, 3, 8},
	[178797] = {10, 2, 8},
	[178798] = {7, 3, 8},
	[178799] = {1, 3, 8},
	[178800] = {9, 4, 8},
	[178801] = {9, 2, 8},
	[178802] = {3, 4, 8},
	[178803] = {3, 1, 8},
	[178804] = {8, 1, 8},
	[178805] = {8, 2, 8},
	[178806] = {6, 1, 8},
	[178807] = {6, 4, 8},
	[178808] = {12, 5, 8},
	[178809] = {12, 5, 8},
	[178810] = {12, 5, 8},
	[178811] = {12, 5, 8},
	[178863] = {13, 5, 8},
	[178864] = {13, 5, 8},
	[178865] = {15, 5, 8},
	[178866] = {15, 5, 8},
	[178867] = {14, 5, 8},
	[178868] = {14, 5, 8},
	[178869] = {11, 5, 8},
	[178870] = {11, 5, 8},
	[178871] = {11, 5, 8},
	[178872] = {11, 5, 8},
	-- Tazavesh: Streets of Wonder
	[185793] = {7, 1, 9},
	[185791] = {7, 2, 9},
	[185815] = {6, 4, 9},
	[185816] = {6, 3, 9},
	[185824] = {13, 5, 9},
	[185780] = {13, 5, 9},
	[185792] = {7, 4, 9},
	[185814] = {6, 1, 9},
	[185777] = {13, 5, 9},
	[185794] = {7, 3, 9},
	[185821] = {13, 5, 9},
	[185840] = {11, 5, 9},
	[185809] = {8, 2, 9},
	[185817] = {6, 2, 9},
	[185808] = {8, 3, 9},
	[185844] = {12, 5, 9},
	[185787] = {10, 4, 9},
	[185846] = {12, 5, 9},
	[185811] = {14, 5, 9},
	[185807] = {8, 1, 9},
	[185812] = {14, 5, 9},
	[185802] = {3, 2, 9},
	[185804] = {3, 1, 9},
	[185806] = {8, 4, 9},
	[185842] = {2, 5, 9},
	[185789] = {10, 3, 9},
	[185783] = {16, 5, 9},
	[185843] = {4, 5, 9},
	[185798] = {9, 4, 9},
	[185782] = {5, 1, 9},
	[185786] = {5, 2, 9},
	[185800] = {9, 3, 9},
	[185778] = {13, 5, 9},
	[185836] = {12, 5, 9},
	[185845] = {12, 5, 9},
	-- Tazavesh: So'Leah's Gambit
	[185781] = {4, 5, 10},
	[185788] = {10, 1, 10},
	[185805] = {3, 3, 10},
	[185803] = {3, 4, 10},
	[185790] = {10, 2, 10},
	[185810] = {15, 5, 10},
	[185779] = {15, 5, 10},
	[185820] = {2, 5, 10},
	[185776] = {1, 4, 10},
	[185797] = {1, 2, 10},
	[185796] = {1, 3, 10},
	[185795] = {1, 1, 10},
	[185841] = {13, 5, 10},
	[185823] = {13, 5, 10},
	[185801] = {9, 2, 10},
	[185785] = {5, 3, 10},
	[185819] = {13, 5, 10},
	[185799] = {9, 1, 10},
	[185784] = {5, 4, 10},
	[185813] = {11, 5, 10},
	[185818] = {12, 5, 10},
	[185822] = {15, 5, 10},
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
		--dungeonString:SetJustifyV("CENTER");
		dungeonString:SetPoint("TOPLEFT", frame, "TOPLEFT", offsetX, offsetY);
		dungeonString:SetTextColor(1, 1, 1, 1);
		dungeonString:SetText(dungeonList[i]..": ");
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
		[1] = 0,
		[2] = 0,
		[3] = 0,
		[4] = 0,
		[5] = 0,
		[6] = 0,
		[7] = 0,
		[8] = 0,
		[9] = 0,
		[10] = 0,
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

	-- Dungeon drop or weekly vault; default to dungeon drop
	local itemLevelStart;
	if itemSource == L["Weekly Vault"] and dungeonLevel ~= 0 then
		itemLevelStart = iLevelListChest[dungeonLevel];
	elseif dungeonLevel ~= 0 then
		itemLevelStart = iLevelListDrop[dungeonLevel];
	else
		itemLevelStart = iLevelListDrop[1];
	end

	local xSize, ySize = 32, 32;
	for k,v in pairs(itemList) do
		-- Tazavesh bullshit
		local itemLevel
		if v[3] < 9 then
			itemLevel = 1498+(itemLevelStart-184);
		else
			itemLevel = 1498+(itemLevelStart-181);
		end

		local itemIcon = GetItemIcon(k);
		local f = CreateFrame("Frame", "MPLItemIcon"..k, frame);
		tinsert(framepool, f);
		f:SetSize(xSize, ySize);

		local x, y;
		if v[3]<=#dungeonList/2 then
			if v[3] == lastDungeon then
				i = i+1;
			else
				i = 0;
			end
			x = xItemStart+xSize/4+dungeonCount[v[3]]*xSize*1.5;
			y = yItemStart+(v[3]-1)*yItemOffset/2-ySize+ySize/4;
			-- Second column
		else
			x = xItemStart+xSecondColumn+xSize/4+dungeonCount[v[3]]*xSize*1.5;
			y = yItemStart+(v[3]-#dungeonList/2-1)*yItemOffset/2-ySize+ySize/4;
		end
		if true then
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
					createFavItem(frame, f, k, itemLevel);
				end
			end
			);
		end
		dungeonCount[v[3]] = dungeonCount[v[3]]+1
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
		armorText = L["Armor Type"];
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
		-- Implement the function to change the value
		function armorDropDown:SetValue(newValue)
			armorText = newValue;
			UIDropDownMenu_SetSelectedValue(armorDropDown, armorText);
			if armorText ~= L["Armor Type"] and slotText ~= L["Item Slot"] and mythicText ~= L["Mythic Level"] then
				createItems(frame, armorText, slotText, tonumber(mythicText), sourceText);
			elseif armorText == L["Armor Type"] and (slotText == L["Neck"] or slotText == L["Back"] or slotText == L["Finger"] or slotText == L["Trinket"] or slotText == L["One-Hand"] or slotText == L["Off-Hand"] or slotText == L["Two-Hand"] or slotText == L["Ranged"] or slotText == L["Favorites"]) and mythicText ~= L["Mythic Level"] then
				createItems(frame, L["Cloth"], slotText, tonumber(mythicText), sourceText);
			else
				clearFrames();
			end
			CloseDropDownMenus();
		end

		-- slot drop down
		slotText = L["Item Slot"]
		local slotDropDown = CreateFrame("Frame", "MPLSlotDropDown", frame, "UIDropDownMenuTemplate");
		slotDropDown:SetPoint("TOPLEFT", frame, "TOPLEFT", 150, -10);
		UIDropDownMenu_SetWidth(slotDropDown, dropDownWidth);
		UIDropDownMenu_Initialize(slotDropDown, MPLSlotDropDown_Menu);
		UIDropDownMenu_SetText(slotDropDown, slotText);
		UIDropDownMenu_Initialize(slotDropDown,
			function(self, level, menuList)
				local info = UIDropDownMenu_CreateInfo();
				info.func = self.SetValue;
				for i=1,#gearSlots do
					info.text = gearSlots[i];
					info.menuList = i;
					info.hasArrow = false;
					info.value = gearSlots[i];
					info.arg1 = gearSlots[i];
					info.checked = false;
					UIDropDownMenu_AddButton(info);
				end
			end
		);
		-- Implement the function to change the value
		function slotDropDown:SetValue(newValue)
			slotText = newValue;
			UIDropDownMenu_SetSelectedValue(slotDropDown, slotText);
			if armorText ~= L["Armor Type"] and slotText ~= L["Item Slot"] and mythicText ~= L["Mythic Level"] then
				createItems(frame, armorText, slotText, tonumber(mythicText), sourceText);
			elseif armorText == L["Armor Type"] and (slotText == L["Neck"] or slotText == L["Back"] or slotText == L["Finger"] or slotText == L["Trinket"] or slotText == L["One-Hand"] or slotText == L["Off-Hand"] or slotText == L["Two-Hand"] or slotText == L["Ranged"] or slotText == L["Favorites"]) and mythicText ~= L["Mythic Level"] then
				createItems(frame, L["Cloth"], slotText, tonumber(mythicText), sourceText);
			else
				clearFrames();
			end
			CloseDropDownMenus();
		end

		-- mythic level drop down
		mythicText = L["Mythic Level"]
		local mythicDropDown = CreateFrame("Frame", "MPLMythicDropDown", frame, "UIDropDownMenuTemplate");
		mythicDropDown:SetPoint("TOPLEFT", frame, "TOPLEFT", 300, -10);
		UIDropDownMenu_SetWidth(mythicDropDown, dropDownWidth);
		UIDropDownMenu_Initialize(mythicDropDown, MPLMythicDropDown_Menu);
		UIDropDownMenu_SetText(mythicDropDown, mythicText);
		UIDropDownMenu_Initialize(mythicDropDown,
			function(self, level, menuList)
				local info = UIDropDownMenu_CreateInfo();
				info.func = self.SetValue;
				for i=1,#mythicLevels do
					info.text = mythicLabels[i];
					info.menuList = i;
					info.hasArrow = false;
					info.value = mythicLevels[i];
					info.arg1 = mythicLevels[i];
					info.checked = false;
					UIDropDownMenu_AddButton(info);
				end
			end
		);
		-- Implement the function to change the value
		function mythicDropDown:SetValue(newValue)
			mythicText = newValue;
			UIDropDownMenu_SetSelectedValue(mythicDropDown, mythicText);
			if armorText ~= L["Armor Type"] and slotText ~= L["Item Slot"] and mythicText ~= L["Mythic Level"] then
				createItems(frame, armorText, slotText, tonumber(mythicText), sourceText);
			elseif armorText == L["Armor Type"] and (slotText == L["Neck"] or slotText == L["Back"] or slotText == L["Finger"] or slotText == L["Trinket"] or slotText == L["One-Hand"] or slotText == L["Off-Hand"] or slotText == L["Two-Hand"] or slotText == L["Ranged"] or slotText == L["Favorites"]) and mythicText ~= L["Mythic Level"] then
				createItems(frame, L["Cloth"], slotText, tonumber(mythicText), sourceText);
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
			createItems(frame, 15);
		end
		framesInitialized = true;
	end
end

local AddonName, MPL = ...;
local L = MPL.L or {}
local sizex = 700;
local sizey = 700;

local frame;
local framesInitialized;
local itemsInitialized;
local db;
local currentProfileKey;

local LDB;
local LDBI;

-- get big tables
local iLevelListDrop = MPL_tables.get_ilvls();
local gearSlots = MPL_tables.get_slots();
local mythicLabels = MPL_tables.get_mythic_labels();
local mythicLevels = MPL_tables.get_mythic_levels();
local dungeonTable = MPL_tables.get_dungeons();
local classTable = MPL_tables.get_classes();
local specTable = MPL_tables.get_specs();
local dungeonItems = MPL_tables.get_items();

-- icons
local icons = {
	friend     = ("|TInterface\\AddOns\\%s\\textures\\friend:14:14:0:0:32:32:1:30:2:30|t"):format(AddonName),
	bnetfriend = "|TInterface\\ChatFrame\\UI-ChatIcon-BattleNet:14:14:0:0:32:32:1:30:2:30|t",
}
local icon_favorite = icons.friend;
local icon_unfavorite = icons.bnetfriend;

SLASH_MYTHICPLUSLOOT1 = "/mpl";

function SlashCmdList.MYTHICPLUSLOOT(cmd, editbox)
	if not framesInitialized then 
		MPL:showInterface();
	end
end

local defaultSavedVars = {
	global = {
		minimap = {
		["hide"] = false,
		}
 	},
	profile = {
		-- v = 1,		-- Reverved for version compatibility
		class = nil,
		spec = nil,
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
						MPL:showInterface();
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
			db.profile.class = db.char.class;
			db.profile.spec = db.char.spec;
			db.profile.slot = db.char.slot;
			db.profile.mythicLevel = db.char.mythicLevel;
			db.profile.source = db.char.source;
			db.profile.favoriteItems = {};
			db.profile.v = 1;
			for k,v in pairs(db.char.favoriteItems) do
				db.profile.favoriteItems[v] = "ALL";
			end
			-- unset db.char
			db.char.class = nil;
			db.char.spec = nil;
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

local xStart, yStart, yOffset, xSecondColumn = 75, -100, -110, 325;
function createDungeonText(frame)
	local favString = frame.CreateFontString(frame, "overlay");
	favString:SetFontObject("GameFontNormalLarge");
	favString:SetJustifyH("RIGHT");
	favString:SetPoint("TOPLEFT", frame, "TOPLEFT", 75, -50);
	favString:SetTextColor(1, 1, 1, 1);
	favString:SetText(L["Right click on items to favorite"]);

	local dungeonTableLength = 0
	for _ in pairs(dungeonTable) do
		dungeonTableLength = dungeonTableLength + 1
	end

	for k,v in pairs(dungeonTable) do
		local justifyH;
		local offsetX;
		local offsetY;
		if v<=dungeonTableLength/2 then
			justifyH = "RIGHT"
			offsetX = xStart
			offsetY = yStart+(v-1)*yOffset
		else
			justifyH = "LEFT"
			offsetX = xStart+xSecondColumn
			offsetY = yStart+(v-dungeonTableLength/2-1)*yOffset
		end

		local dungeonString = frame.CreateFontString(frame, "overlay");
		dungeonString:SetFontObject("GameFontNormalLarge");
		dungeonString:SetJustifyH(justifyH);
		dungeonString:SetPoint("TOPLEFT", frame, "TOPLEFT", offsetX, offsetY);
		dungeonString:SetTextColor(1, 1, 1, 1);
		dungeonString:SetText(k);
	end
end

function getIndex(inputTable, value)
	local index={}
	for k,v in pairs(inputTable) do
	   index[v]=k
	end
	return index[value]
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

		local favoriteString = frame.CreateFontString(frame, "OVERLAY");
		favoriteString:SetFontObject("GameFontNormalLarge");
		favoriteString:SetJustifyH(justifyH);
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
			f.ico = f:CreateFontString(nil, "OVERLAY", "GameTooltipText")
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
				GameTooltip:SetHyperlink("item:"..k.."..::::::::::::3:6807:"..itemLevel);
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

function createItems(frame, slotText, mythicLevel, classText, specText)
	clearFrames();
	local xItemStart, yItemStart, yItemOffset, xItemSecondColumn = 75, -110, -220, 325;
	local trimmedItems = {};

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

	-- Dungeon drop or weekly vault
	local itemLevelStart = iLevelListDrop[mythicLevel];

	-- create a table of items based on the filters applied
	if classText ~= L["All Classes"] then
		-- class and spec defined
		if specText then
			for k,v in pairs(dungeonItems[classText][specText]) do
				trimmedItems[k] = v
			end
		-- only class defined
		else
			for k,v in pairs(dungeonItems[classText]) do
				for k2,v2 in pairs(dungeonItems[classText][k]) do
					trimmedItems[k2] = v2
				end
			end
		end
	else
		for k,v in pairs(dungeonItems) do
			for k2,v2 in pairs(dungeonItems[k]) do
				for k3,v3 in pairs(dungeonItems[k][k2]) do
					trimmedItems[k3] = v3
				end
			end
		end
	end

	-- favorites
	local favoriteMode = (slotText == L["Favorites"]) and true or false;
	local favoriteList = {};
	if favoriteMode then
		for k,v in pairs(dungeonItems) do
			for k2,v2 in pairs(dungeonItems[k]) do
				for k3,v3 in pairs(dungeonItems[k][k2]) do
					trimmedItems[k3] = v3
				end
			end
		end

		for k,v in pairs(db.profile.favoriteItems) do
			favoriteList[k] = trimmedItems[k];
		end

		trimmedItems = favoriteList
	end

	-- replace this later
	local dungeonTableLength = 0
	for _ in pairs(dungeonTable) do
		dungeonTableLength = dungeonTableLength + 1
	end

	-- display the items
	local xSize, ySize = 32, 32;
	for k,v in pairs(trimmedItems) do
		if (v["slot"] == slotText or slotText == "all") or favoriteMode then
			local itemLevel
			if (
				v["dungeon"] == L["Ruby Life Pools"] or 
				v["dungeon"] == L["The Nokhud Offensive"] or 
				v["dungeon"] == L["The Azure Vault"] or 
				v["dungeon"] == L["Algeth'ar Academy"]
				) then
				itemLevel = 1439 - (372 - itemLevelStart)
			elseif (
				v["dungeon"] == L["Halls of Valor"] or
				v["dungeon"] == L["Court of Stars"]
			) then
				itemLevel = 1639 - (372 - itemLevelStart)
			elseif (
				v["dungeon"] == L["Shadowmoon Burial Grounds"]
			) then
				itemLevel = 1645 - (372 - itemLevelStart)
			elseif(
				v["dungeon"] == L["Temple of the Jade Serpent"]
			) then
				itemLevel = 1650 - (372 - itemLevelStart)
			end

			local itemIcon = GetItemIcon(k);
			local f = CreateFrame("Frame", "MPLItemIcon"..k, frame);
			tinsert(framepool, f);
			f:SetSize(xSize, ySize);

			local x, y;
			local dungeonNumber = dungeonTable[v["dungeon"]];

			-- wrapping items if there are more than six for a given dungeon
			if dungeonCount[dungeonNumber][1] % 6 == 0 and dungeonCount[dungeonNumber][1] > 0 then
				dungeonCount[dungeonNumber][2], dungeonCount[dungeonNumber][3] = dungeonCount[dungeonNumber][1], dungeonCount[dungeonNumber][3]+50
			end

			-- First column
			if dungeonNumber<=dungeonTableLength/2 then
				x = xItemStart+xSize/4+(dungeonCount[dungeonNumber][1] - dungeonCount[dungeonNumber][2])*xSize*1.5;
				y = (yItemStart - dungeonCount[dungeonNumber][3])+(dungeonNumber-1)*yItemOffset/2-ySize+ySize/4;
			-- Second column
			else
				x = xItemStart+xSecondColumn+xSize/4+(dungeonCount[dungeonNumber][1] - dungeonCount[dungeonNumber][2])*xSize*1.5;
				y = (yItemStart -  dungeonCount[dungeonNumber][3])+(dungeonNumber-dungeonTableLength/2-1)*yItemOffset/2-ySize+ySize/4;
			end

			f:SetPoint("TOPLEFT", frame, "TOPLEFT", x, y);
			f.tex = f:CreateTexture();
			f.tex:SetAllPoints(f);
			f.tex:SetTexture(itemIcon);
			f.ico = f:CreateFontString(nil, "OVERLAY", "GameTooltipText")
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
				GameTooltip:SetHyperlink("item:"..k.."..::::::::::::3:6000:"..itemLevel);
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
			dungeonCount[dungeonNumber][1] = dungeonCount[dungeonNumber][1]+1
		end
	end

	itemsInitialized = true;
end

local slotText, mythicValue, mythicLevel, mythicText, sourceText;
MPL.BackdropColor = {0.058823399245739, 0.058823399245739, 0.058823399245739, 0.9}

function closeMainFrame()
	if frame and framesInitialized then
		frame:Hide();
		framesInitialized = false;
	end
end

function MPL:showInterface()
	if not framesInitialized then initFrames() end
	if not framesInitialized then return end
end

function initFrames()
	frame = CreateFrame("Frame", "MPLFrame", UIParent);

	-- tinsert(UISpecialFrames, "MPLFrame"); -- escape functionality that doesn't work more than once

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

	-- class drop down
	local playerClass = UnitClass("player")
	local classText = db.profile.class or playerClass;
	local specText = db.profile.spec or nil;

	-- safety check
	if not specTable[classText] then
		classText = playerClass;
		specText = nil;
		db.profile.class = classText;
		db.profile.spec = nil;
	end

	local classDropDown = CreateFrame("Frame", "MPLClassDropDown", frame, "UIDropDownMenuTemplate");
	classDropDown:SetPoint("TOPLEFT", frame, "TOPLEFT", 0, -10);
	UIDropDownMenu_SetWidth(classDropDown, dropDownWidth);
	UIDropDownMenu_SetText(classDropDown, classText);
	UIDropDownMenu_Initialize(classDropDown,
		function(self, level, menuList)
			local info = UIDropDownMenu_CreateInfo();
			if (level or 1) == 1 then
				info.text = L["Class"];
				info.menuList = i;
				info.hasArrow = true;
				info.checked = false;
				UIDropDownMenu_AddButton(info);

				if classText ~= L["All Classes"] then
					info.func = self.SetValue;
					info.text = classText;
					info.checked = false;
					info.hasArrow = false;
					info.menuList = i;
					info.value = classText;
					info.arg1 = classText;
					UIDropDownMenu_AddButton(info);
					for i=1,#specTable[classText] do
						info.text = specTable[classText][i];
						info.menuList = i;
						info.hasArrow = false;
						info.checked = false;
						info.value = specTable[classText][i];
						info.arg1 = specTable[classText][i];
						UIDropDownMenu_AddButton(info);
					end
				end

			else
				info.func = self.SetValue;
				for i=1,#classTable do
					info.text = classTable[i];
					info.menuList = i;
					info.hasArrow = false;
					info.value = classTable[i];
					info.arg1 = classTable[i];
					info.checked = false;
					UIDropDownMenu_AddButton(info, level);
				end
			end
		end
	);
	-- Implement the function to change the value
	function classDropDown:SetValue(newValue)
		-- db.profile.spec = getIndex(classTable, newValue);
		isClass = false;
		for k,v in pairs(classTable) do
			if newValue == v then
				isClass = true;
				classText = newValue;
				specText = nil;
				UIDropDownMenu_SetSelectedValue(classDropDown, classText);
			end
		end

		if not isClass then
			specText = newValue
			UIDropDownMenu_SetSelectedValue(classDropDown, specText);
			UIDropDownMenu_SetText(classDropDown, specText);
		end

		db.profile.class = classText;
		db.profile.spec = specText;

		if slotText ~= L["Item Slot"] and mythicText ~= L["Mythic Level"] then
			createItems(frame, slotText, mythicLevel, classText, specText);
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
	-- Implement the function to change the value
	function slotDropDown:SetValue(newValue)
		db.profile.slot = getIndex(gearSlots, newValue);
		slotText = newValue;
		UIDropDownMenu_SetSelectedValue(slotDropDown, slotText);
		if slotText ~= L["Item Slot"] and mythicText ~= L["Mythic Level"] then
			createItems(frame, slotText, mythicLevel, classText, specText);
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
	-- Implement the function to change the value
	function mythicDropDown:SetValue(newValue)
		db.profile.mythicLevel = getIndex(mythicLabels, newValue);
		mythicText = newValue;
		mythicLevel = db.profile.mythicLevel;
		UIDropDownMenu_SetSelectedValue(mythicDropDown, mythicText);
		if slotText ~= L["Item Slot"] and mythicText ~= L["Mythic Level"] then
			createItems(frame, slotText, mythicLevel, classText, specText);
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

		classText = db.profile.class or L["All Classes"];
		specText = db.profile.spec or nil;
		slotText = (db.profile.slot > 0) and gearSlots[db.profile.slot] or L["Item Slot"];
		mythicText = (db.profile.mythicLevel > 0) and mythicLabels[db.profile.mythicLevel] or L["Mythic Level"];
		mythicLevel = db.profile.mythicLevel;
		if slotText ~= L["Item Slot"] then
			UIDropDownMenu_SetSelectedValue(slotDropDown, slotText);
			UIDropDownMenu_SetText(slotDropDown, slotText);
		end
		if mythicText ~= L["Mythic Level"] then
			UIDropDownMenu_SetSelectedValue(mythicDropDown, mythicText);
			UIDropDownMenu_SetText(mythicDropDown, mythicText);
		end
		if classText ~= L["All Classes"] then
			UIDropDownMenu_SetSelectedValue(classDropDown, classText);
			UIDropDownMenu_SetText(classDropDown, classText);
		end
		if slotText ~= L["Item Slot"] and mythicText ~= L["Mythic Level"] then
			createItems(frame, slotText, mythicLevel, classText, specText);
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
		createItems(frame, slotText, mythicLevel, classText, specText);
	end
	framesInitialized = true;
end

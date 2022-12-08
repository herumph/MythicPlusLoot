if not(GetLocale() == "koKR") then
  return
end
local AddonName, MPL = ...;
local L = MPL.L or {}

-- Options
L["Enable Minimap Button"] = "Enable Minimap Button"
L["If the Minimap Button is enabled"] = "If the Minimap Button is enabled"

-- Armor type
L["Cloth"] = "천"
L["Leather"] = "가죽"
L["Mail"] = "사슬"
L["Plate"] = "판금"

-- Armor slot
L["Head"] = "머리"
L["Neck"] = "목"
L["Shoulder"] = "어깨"
L["Back"] = "등"
L["Chest"] = "가슴"
L["Wrist"] = "손목"
L["Hands"] = "손"
L["Waist"] = "허리"
L["Legs"] = "다리"
L["Feet"] = "발"
L["Finger"] = "손가락"
L["Trinket"] = "장신구"
L["One-Hand"] = "한손 장비"
L["Off-Hand"] = "보조 장비"
L["Two-Hand"] = "양손 장비"
L["Ranged"] = "원거리 장비"
L["Favorites"] = "즐겨찾기"

-- Source list
L["Dungeon Drop"] = "던전 드랍"
L["Weekly Vault"] = "금고 보상"
L["Valor Upgrade"] = "용맹 강화"

-- Dungeons
L["Tazavesh: Streets of Wonder"] = "타자베쉬: 경이의 거리 (Streets of Wonder)"
L["Tazavesh: So'Leah's Gambit"] = "타자베쉬: 소레아의 승부수 (So'Leah's Gambit)"
L["Mechagon: Junkyard"] = "Mechagon: Junkyard"
L["Mechagon: Workshop"] = "Mechagon Workshop"
L["Karazhan: Lower"] = "Karazhan: Lower"
L["Karazhan: Upper"] = "Karazhan: Upper"
L["Grimrail Depot"] = "Grimrail Depot"
L["Iron Docks"] = "Iron Dock"
L["Grimrail Depot / Iron Docks"] = "Grimrail Depot / Iron Docks"

-- General
L["Item Slot"] = "아이템 슬롯"
L["Mythic Level"] = "신화 단계"
L["Source"] = "소스"
L["Armor Type"] = "방어구 타입"

-- Mythic Labels
L["M0"] = "M0"
L["M+2/Valor 1"] = "M+2/Valor 1"
L["M+3/Valor 1"] = "M+3/Valor 1"
L["M+4/Valor 2"] = "M+4/Valor 2"
L["M+5/Valor 2"] = "M+5/Valor 2"
L["M+6/Valor 3"] = "M+6/Valor 3"
L["M+7/Valor 4"] = "M+7/Valor 4"
L["M+8/Valor 4"] = "M+8/Valor 4"
L["M+9/Valor 5"] = "M+9/Valor 5"
L["M+10/Valor 6"] = "M+10/Valor 6"
L["M+11/Valor 6"] = "M+11/Valor 6"
L["M+12/Valor 6"] = "M+12/Valor 6"
L["M+13/Valor 6"] = "M+13/Valor 6"
L["M+14/Valor 7"] = "M+14/Valor 7"
L["M+15/Valor 8"] = "M+15/Valor 8"
L["M+16/Valor 8"] = "M+16/Valor 8"
L["M+17/Valor 9"] = "M+17/Valor 9"
L["M+18/Valor 9"] = "M+18/Valor 9"
L["M+19/Valor 10"] = "M+19/Valor 10"
L["M+20/Valor 10"] = "M+20/Valor 10"
L["Great Vault +13/Valor 11"] = "Great Vault +13/Valor 11"
L["Great Vault +14/Valor 11"] = "Great Vault +14/Valor 11"
L["Great Vault +15/Valor 12"] = "Great Vault +15/Valor 12"
L["Great Vault +16/Valor 13"] = "Great Vault +16/Valor 13"
L["Great Vault +17/Valor 13"] = "Great Vault +17/Valor 13"
L["Great Vault +18"] = "Great Vault +18"
L["Great Vault +19"] = "Great Vault +19"
L["Great Vault +20"] = "Great Vault +20"

-- Other
L["Right click on items to favorite"] = "아이템 오른클릭으로 즐겨찾기에 추가"
L["Click to toggle AddOn Window"] = "Click to toggle AddOn Window"

L["All Classes"] = "All Classes"
L["Warrior"] = "Warrior"
L["Paladin"] = "Paladin"
L["Hunter"] = "Hunter"
L["Rogue"] = "Rogue"
L["Priest"] = "Priest"
L["Death Knight"] = "Death Knight"
L["Shaman"] = "Shaman"
L["Mage"] = "Mage"
L["Warlock"] = "Warlock"
L["Monk"] = "Monk"
L["Druid"] = "Druid"
L["Demon Hunter"] = "Demon Hunter"
L["Evoker"] = "Evoker"

L["Algethar Academy"] = "Algethar Academy"
L["Ruby Life Pools"] = "Ruby Life Pools"
L["The Azure Vault"] = "The Azure Vault"
L["Halls of Infusion"] = "Halls of Infusion"
L["Neltharus"] = "Neltharus"
L["The Nokhud Offensive"] = "The Nokhud Offensive"
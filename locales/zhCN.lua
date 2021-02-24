if not(GetLocale() == "zhCN") then
  return
end
local AddonName, MPL = ...;
local L = MPL.L or {}

-- Armor type
L["Cloth"] = "布甲"
L["Leather"] = "皮甲"
L["Mail"] = "锁甲"
L["Plate"] = "板甲"

-- Armor slot
L["Head"] = "头"
L["Neck"] = "颈部"
L["Shoulder"] = "肩"
L["Back"] = "背部"
L["Chest"] = "胸"
L["Wrist"] = "手腕"
L["Hands"] = "手"
L["Waist"] = "腰"
L["Legs"] = "腿"
L["Feet"] = "脚"
L["Finger"] = "手指"
L["Trinket"] = "饰品"
L["One-Hand"] = "单手"
L["Off-Hand"] = "副手"
L["Two-Hand"] = "双手"
L["Ranged"] = "远程"

-- Source list
L["Dungeon Drop"] = "地城掉落"
L["Weekly Vault"] = "每周宝库"

-- Dungeons
L["Plaguefall"] = "凋魂之殇"
L["De Other Side"] = "彼界"
L["Halls of Atonement"] = "赎罪大厅"
L["Mists of Tirna Scithe"] = "塞兹仙林的迷雾"
L["Sanguine Depths"] = "赤红深渊"
L["Spires of Ascension"] = "晋升高塔"
L["The Necrotic Wake"] = "通灵战潮"
L["Theater of Pain"] = "伤逝剧场"

-- General
L["Item Slot"] = "物品部位"
L["Mythic Level"] = "大秘等级"
L["Source"] = "来源"
L["Armor Type"] = "护甲类型"

if not(GetLocale() == "ruRU") then
  return
end
local AddonName, MPL = ...;
local L = MPL.L or {}

-- Armor type
L["Cloth"] = "Ткань"
L["Leather"] = "Кожа"
L["Mail"] = "Кольчуга"
L["Plate"] = "Латы"

-- Armor slot
L["Head"] = "Голова"
L["Neck"] = "Шея"
L["Shoulder"] = "Плечо"
L["Back"] = "Спина"
L["Chest"] = "Грудь"
L["Wrist"] = "Запястья"
L["Hands"] = "Кисти рук"
L["Waist"] = "Пояс"
L["Legs"] = "Ноги"
L["Feet"] = "Ступни"
L["Finger"] = "Палец"
L["Trinket"] = "Аксессуар"
L["One-Hand"] = "Одноручное"
L["Off-Hand"] = "Лувая рука"
L["Two-Hand"] = "Двуручное"
L["Ranged"] = "Дальний бой"

-- Source list
L["Dungeon Drop"] = "Подземелье"
L["Weekly Vault"] = "Недельный сундук"

-- Dungeons
L["Plaguefall"] = "Чумные каскады"
L["De Other Side"] = "Та Сторона"
L["Halls of Atonement"] = "Чертоги Покаяния"
L["Mists of Tirna Scithe"] = "Туманы Тирна Скита"
L["Sanguine Depths"] = "Кровавые катакомбы"
L["Spires of Ascension"] = "Шпили перерождения"
L["The Necrotic Wake"] = "Смертельная тризна"
L["Theater of Pain"] = "Театр боли"

-- General
L["Item Slot"] = "Тип предмета"
L["Mythic Level"] = "Уровень мифика"
L["Source"] = "Источник"
L["Click to toggle AddOn Window"] = "Нажмите чтобы переключить отображение окна дополнения"
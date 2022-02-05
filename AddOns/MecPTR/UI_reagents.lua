local C = _G["MecPTR"].config
local CUIF = _G["MecPTR"].common_UI_functions

local data = {
    {itemId = 44605, itemName = "Wild Spineleaf", type = "Druid"},
    {itemId = 44614, itemName = "Starleaf Seed", type = "Druid"},
    {itemId = 17020, itemName = "Arcane Powder", type = "Mage"},
    {itemId = 17031, itemName = "Rune of Teleportation", type = "Mage"},
    {itemId = 17032, itemName = "Rune of Portals", type = "Mage"},
    {itemId = 21177, itemName = "Symbol of Kings", type = "Paladin"},
    {itemId = 44615, itemName = "Devout Candle", type = "Priest"},
    --{itemId = 17056, itemName = "Light Feather", type = "Priest"},
    {itemId = 17030, itemName = "Ankh", type = "Shaman"},
    {itemId = 5178, itemName = "Air Totem", type = "Shaman"},
    {itemId = 5176, itemName = "Fire Totem", type = "Shaman"},
    {itemId = 5175, itemName = "Earth Totem", type = "Shaman"},
    {itemId = 5177, itemName = "Water Totem", type = "Shaman"},
    {itemId = 6265, itemName = "Soul Shard", type = "Warlock"},
}

local f = CUIF.createBodyFrame("MecPTRReagentsFrame", "reagents")

current_type = "default"
current_x = 5
current_y = -20
for index, value in pairs(data) do
    CUIF.addTextToFrame(f, value.itemName, 12, current_x - 270, current_y - 7, "TOPRIGHT", "RIGHT", "MIDDLE")
    CUIF.createItemFrame(f, value.itemId, 30, current_x + 235, current_y)
    if value.itemId >= 5175 and value.itemId <= 5178 then
        CUIF.createAddButtonFrame(f, value.itemId, 1, 20, 37, current_x + 275, current_y - 4)
    else
        CUIF.createAddButtonFrame(f, value.itemId, 5, 20, 37, current_x + 275, current_y - 4)
        CUIF.createAddButtonFrame(f, value.itemId, 20, 20, 43, current_x + 325, current_y - 4)
    end
    current_y = current_y - 35
end

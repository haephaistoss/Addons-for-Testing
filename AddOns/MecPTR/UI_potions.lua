local C = _G["MecPTR"].config
local CUIF = _G["MecPTR"].common_UI_functions

local data = {
    {itemId = 36894, itemName = "Fel Healthstone (Rank 3)", type = "Health", stats = "Restores 5136 hp"},
    {itemId = 33447, itemName = "Runic Healing Potion", type = "Health", stats = "Restores 2700 to 4500 hp"},
    {itemId = 33448, itemName = "Runic Mana Potion", type = "Mana", stats = "Restores 4200 to 4400 mp"},
    {itemId = 40211, itemName = "Potion of Speed", type = "Combat", stats = "500 Haste for 15 sec"},
    {itemId = 40212, itemName = "Potion of Wild Magic", type = "Combat", stats = "200 Crit and 200 SP for 15 sec"},
    {itemId = 40093, itemName = "Indestructible Potion", type = "Combat", stats = "3500 Armor for 2 minutes"},
}

local f = CUIF.createBodyFrame("MecPTRPotionsFrame", "potions")

current_type = "default"
current_x = 5
current_y = 0
for index, value in pairs(data) do
    if current_type ~= value.type then
        current_y = current_y - 15
        local t = CUIF.addTextToFrame(f, value.type, 14, current_x, current_y, "TOP", "MIDDLE", "TOP")
        t:SetTextColor(1,0,0,1)
        current_y = current_y - 25
        current_type = value.type
    end
    CUIF.addTextToFrame(f, value.itemName, 10, current_x - 270, current_y, "TOPRIGHT", "RIGHT", "MIDDLE")
    local stat = CUIF.addTextToFrame(f, value.stats, 10, current_x - 270, current_y - 10, "TOPRIGHT", "RIGHT", "MIDDLE")
    stat:SetTextColor(0.7,0.3,0.7,1)
    CUIF.createItemFrame(f, value.itemId, 30, current_x + 235, current_y)
    if value.itemId >= 36892 and value.itemId <= 36894 then
        CUIF.createAddButtonFrame(f, value.itemId, 1, 20, 37, current_x + 275, current_y - 4)
    else
        CUIF.createAddButtonFrame(f, value.itemId, 5, 20, 37, current_x + 275, current_y - 4)
        CUIF.createAddButtonFrame(f, value.itemId, 20, 20, 43, current_x + 325, current_y - 4)
    end

    current_y = current_y - 35
end

local C = _G["MecPTR"].config
local CUIF = _G["MecPTR"].common_UI_functions

local data = {
    {itemId = 43523, itemName = "Conjured Mana Strudel", type = "Water", stats = "22500 health and 19200 mana over 30 sec"},
    {itemId = 43015, itemName = "Fish Feast", type = "Buff Food", stats = "80 AP, 46 SP and 40 Stam"},
    {itemId = 42999, itemName = "Blackened Dragonfin", type = "Buff Food", stats = "40 Agi, 40 Stam"},
    {itemId = 42995, itemName = "Hearty Rhino", type = "Buff Food", stats = "40 ArP, 40 Stam"},
    {itemId = 34756, itemName = "Spiced Worm Burger", type = "Buff Food", stats = "40 Crit, 40 Stam"},
    {itemId = 42994, itemName = "Rhinolicious Wormsteak", type = "Buff Food", stats = "40 Expertise, 40 Stam"},
    {itemId = 34769, itemName = "Imperial Manta Steak", type = "Buff Food", stats = "40 Haste, 40 Stam"},
    {itemId = 42996, itemName = "Snapper Extreme", type = "Buff Food", stats = "40 Hit, 40 Stam"},
    {itemId = 34758, itemName = "Mighty Rhino Dogs", type = "Buff Food", stats = "16 mp5, 40 Stam"},
    {itemId = 42998, itemName = "Cuttlesteak", type = "Buff Food", stats = "40 Spirit, 40 Stam"},
    {itemId = 43000, itemName = "Dragonfin Filet", type = "Buff Food", stats = "40 Str, 40 Stam"}
}

local f = CUIF.createBodyFrame("MecPTRFoodFrame", "food/water")

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
    CUIF.createAddButtonFrame(f, value.itemId, 5, 20, 37, current_x + 275, current_y - 4)
    CUIF.createAddButtonFrame(f, value.itemId, 20, 20, 43, current_x + 325, current_y - 4)

    current_y = current_y - 35
end

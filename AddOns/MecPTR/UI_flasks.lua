local C = _G["MecPTR"].config
local CUIF = _G["MecPTR"].common_UI_functions

local data = {
    {itemId = 46376, itemName = "Flask of the Frost Wyrm", type = "Flask", stats = "125 SP"},
    {itemId = 46377, itemName = "Flask of Endless Rage", type = "Flask", stats = "180 AP"},
    {itemId = 46379, itemName = "Flask of Stoneblood", type = "Flask", stats = "1300 max hp"},
    {itemId = 13511, itemName = "Flask of Distilled Wisdom", type = "Flask", stats = "65 Int"},
    {itemId = 46378, itemName = "Flask of Pure Mojo", type = "Flask", stats = "45 mp5"},
    {itemId = 40079, itemName = "Lesser Flask of Toughness", type = "Flask", stats = "50 Resilience"},
    {itemId = 44939, itemName = "Lesser Flask of Resistance", type = "Flask", stats = "50 All Res"},
}

local f = CUIF.createBodyFrame("MecPTRFlaskFrame", "flasks")

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

local C = _G["MecPTR"].config
local CUIF = _G["MecPTR"].common_UI_functions

local data = {
    {factionId = 1106, factionName = "Argent Crusade", side = "Alliance & Horde"},
    {factionId = 1104, factionName = "Frenzyheart Tribe", side = "Alliance & Horde"},
    {factionId = 1090, factionName = "Kirin Tor", side = "Alliance & Horde"},
    {factionId = 1098, factionName = "Knights of the Ebon Blade", side = "Alliance & Horde"},
	{factionId = 1011, factionName = "Lower City", side = "Alliance & Horde"},
    {factionId = 1156, factionName = "The Ashen Verdict", side = "Alliance & Horde"},
    {factionId = 1073, factionName = "The Kalu'ak", side = "Alliance & Horde"},
    {factionId = 1105, factionName = "The Oracles", side = "Alliance & Horde"},
    {factionId = 1119, factionName = "The Sons of Hodir", side = "Alliance & Horde"},
    {factionId = 1091, factionName = "The Wyrmrest Accord", side = "Alliance & Horde"},
    {factionId = 1037, factionName = "Alliance Vanguard", side = "Alliance Only"},
    {factionId = 1068, factionName = "Explorers' League", side = "Alliance Only"},
    {factionId = 1094, factionName = "The Silver Covenant", side = "Alliance Only"},
    {factionId = 1050, factionName = "Valiance Expedition", side = "Alliance Only"},
    {factionId = 1052, factionName = "Horde Expedition", side = "Horde Only"},
    {factionId = 1067, factionName = "The Hand of Vengeance", side = "Horde Only"},
    {factionId = 1124, factionName = "The Sunreavers", side = "Horde Only"},
    {factionId = 1064, factionName = "The Taunka", side = "Horde Only"},
    {factionId = 1085, factionName = "Warsong Offensive", side = "Horde Only"},
}

local function createRepFrame(parent_frame, factionId, rep_level, rep_value, x, y)
	local f2 = CreateFrame("Button", nil, parent_frame)
	f2:SetFrameStrata('DIALOG')
	f2:SetHeight(15)
	f2:SetWidth(C.ui_width / 11 - 5)
	f2:SetPoint("CENTER", parent_frame, "TOPLEFT", x, y)

	f2:EnableMouse(true)

	f2.background = f2:CreateTexture(nil, "Background")
	f2.background:SetTexture(0,0,1, 0.5)
	f2.background:SetAllPoints()

	f2.text = f2:CreateFontString(nil, "ARTWORK")
	f2.text:SetFont("Interface\\AddOns\\MecPTR\\skurri.ttf", 10)
	f2.text:SetPoint("CENTER", 0, 0)
	f2.text:SetJustifyH("RIGHT")
	f2.text:SetJustifyV("TOP")
	f2.text:SetText(rep_level)

	f2:SetScript("OnClick", function ()
        SendChatMessage('.mod rep '..factionId..' '..rep_value, "SAY")
	end)
end

local f = CUIF.createBodyFrame("MecPTRRepFrame", "rep")

rep_levels = {"Exalted", "Revered", "Honored", "Friendly", "Neutral", "Unfriendly", "Hostile", "Hated"}
rep_values = {42000, 21000, 9000, 3000, 0, -3000, -6000, -42000}

current_x = 5
current_y = 5
current_side = "default"
for index, value in pairs(data) do
    if current_side ~= value.side then
        current_y = current_y - 15
        local t = CUIF.addTextToFrame(f, value.side, 14, current_x, current_y, "TOP", "MIDDLE", "TOP")
        t:SetTextColor(1,0,0,1)
        current_y = current_y - 15
        current_side = value.side
    end
    CUIF.addTextToFrame(f, value.factionName, 12, current_x - 385, current_y - 5, "TOPRIGHT", "RIGHT", "MIDDLE")
    for i, v in pairs(rep_levels) do
        createRepFrame(f, value.factionId, rep_levels[i], rep_values[i], C.ui_width * ((i+2)/11)+10, current_y - 10)
    end
    current_y = current_y - 22
end

local C = _G["MecPTR"].config
local CUIF = _G["MecPTR"].common_UI_functions

local function activateTab(tab_frame)
	local text = tab_frame.text:GetText()

	for index, value in pairs(CUIF.body_frames) do
		if text == value.tab_title then
			value.body_frame:Show()
			value.tab_frame.background:SetTexture(1, 0.1, 0.4, 0.9)
		else
			value.body_frame:Hide()
			value.tab_frame.background:SetTexture(1, 0.1, 0.4, 0.3)
		end
	end
end

local function createTabFrame(position, title)
	local width = 60
	local height = 25

	local f = CreateFrame("Button", "MecPTRTitleBarFrame", MecPTRParentFrame)
	f:SetFrameStrata('HIGH')
	f:SetHeight(height)
	f:SetWidth(width)
	f:SetPoint("TOPLEFT", MecPTRTitleBarFrame, "BOTTOMLEFT", -width, position * (-height-3) - 3)

	--Background
	f.background = f:CreateTexture(nil, "Background")
	if position == 0 then
		f.background:SetTexture(1, 0.1, 0.4, 0.9)
	else
		f.background:SetTexture(1, 0.1, 0.4, 0.3)
	end
	f.background:SetAllPoints()

	f:EnableMouse(true)

	-- Text
	f.text = f:CreateFontString(nil, "ARTWORK")
	f.text:SetFont("Interface\\AddOns\\MecPTR\\skurri.ttf", 12)
	f.text:SetPoint("CENTER", 0, 0)
	f.text:SetJustifyH("MIDDLE")
	f.text:SetJustifyV("MIDDLE")
	f.text:SetText(title)

	-- Handle click
	f:SetScript("OnClick", function()
		activateTab(f)
	end)

	f:Show()

	return f
end

for index, value in pairs(CUIF.body_frames) do
	local f = createTabFrame(index-1, value.tab_title)
	CUIF.body_frames[index].tab_frame = f
end

activateTab(CUIF.body_frames[1].tab_frame) --activate first tab by default
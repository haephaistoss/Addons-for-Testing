local C = _G["MecPTR"].config
local CUIF = _G["MecPTR"].common_UI_functions

CUIF["body_frames"] = {}

local function createBodyFrame(frame_name, tab_title)
	local f = CreateFrame("Frame", frame_name, MecPTRParentFrame)
	f:SetFrameStrata('HIGH')
	f:SetHeight(C.ui_height)
	f:SetWidth(C.ui_width)
	f:SetPoint("TOPLEFT", MecPTRTitleBarFrame, "BOTTOMLEFT", 0, -3)

	f.background = f:CreateTexture(nil, "Background")
	f.background:SetTexture(0, 0, 0, 0.7)
	f.background:SetAllPoints()

	--f:EnableMouse(true)

	f:Hide()

	table.insert(CUIF["body_frames"], {body_frame = f, tab_title = tab_title, tab_frame = nil})

	return f
end
CUIF["createBodyFrame"] = createBodyFrame


local function createItemFrame(parent_frame, itemId, length, x, y)
	local f = CreateFrame("Button", nil, parent_frame)
	f:SetFrameStrata('DIALOG')
	f:SetHeight(length)
	f:SetWidth(length)
	f:SetPoint("TOPLEFT", parent_frame, "TOPLEFT", x, y)

	f:EnableMouse(true)

	--Icon
	f.icon = f:CreateTexture(nil, "ARTWORK")
	f.icon:SetAllPoints(true)
	local icon = GetItemIcon(itemId)
	f.icon:SetTexture(icon)

	--Item Link
	f:SetScript("OnEnter", function()
		GameTooltip:SetOwner(f, "ANCHOR_TOP")
		GameTooltip:SetHyperlink('item:'..itemId..':0:0:0:0:0:0:0')
		GameTooltip:Show()
	end)

	f:SetScript("OnLeave", function()
		GameTooltip:Hide()
	end)

	f:SetScript("OnClick", function()
		SendChatMessage(".additem "..itemId, "SAY")
	end)
end
CUIF["createItemFrame"] = createItemFrame


local function addTextToFrame(f, text, fontsize, x, y, anchor, justifyh, justifyv)
	f.text = f:CreateFontString(nil, "ARTWORK")
	f.text:SetFont("Interface\\AddOns\\MecPTR\\skurri.ttf", fontsize)
	f.text:SetPoint(anchor, x, y)
	f.text:SetJustifyH(justifyh)
	f.text:SetJustifyV(justifyv)
	f.text:SetText(text)

	return f.text
end
CUIF['addTextToFrame'] = addTextToFrame


local function createAddButtonFrame(parent_frame, itemId, addCount, height, width, x, y)
	local f = CreateFrame("Button", nil, parent_frame)
	f:SetFrameStrata('DIALOG')
	f:SetHeight(height)
	f:SetWidth(width)
	f:SetPoint("TOPLEFT", parent_frame, "TOPLEFT", x, y)

	f:EnableMouse(true)

	f.background = f:CreateTexture(nil, "Background")
	f.background:SetTexture(0, 0, 1, 0.7)
	f.background:SetAllPoints()

	f.text = f:CreateFontString(nil, "ARTWORK")
	f.text:SetFont("Interface\\AddOns\\MecPTR\\skurri.ttf", 12)
	f.text:SetPoint("LEFT", 5, 0)
	f.text:SetJustifyH("CENTER")
	f.text:SetJustifyV("MIDDLE")
	f.text:SetText("Add "..addCount)

	f:SetScript("OnClick", function()
		SendChatMessage(".additem "..itemId.." "..addCount, "SAY")
	end)
end
CUIF["createAddButtonFrame"] = createAddButtonFrame

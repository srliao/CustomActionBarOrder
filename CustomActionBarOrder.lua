-- Register for events
local frame = CreateFrame("Frame")
frame:RegisterEvent("PLAYER_ENTERING_WORLD")
frame:SetScript("OnEvent", function(self, event, ...)
    if event == "PLAYER_ENTERING_WORLD" then
        -- Swap positions of buttons 1 to 6 with buttons 7 to 12
        for i = 1, 6 do
            local button1 = _G["ActionButton" .. i]
            local button2 = _G["ActionButton" .. (i + 6)] -- Get corresponding button from the other half

            -- Store original positions of button 1 to 6
            local point1, relativeTo1, relativePoint1, x1, y1 = button1:GetPoint()
            local point2, relativeTo2, relativePoint2, x2, y2 = button2:GetPoint() 

            -- Swap positions
            button1:SetPoint(point2, relativeTo2, point2, x2, y2)
            button2:SetPoint(point1, relativeTo1, point1, x1, y1)
        end
    end
end)
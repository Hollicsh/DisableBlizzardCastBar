local disableCastBar = CreateFrame("Frame")
disableCastBar:RegisterEvent("PLAYER_ENTERING_WORLD")
disableCastBar:SetScript("OnEvent", function()
    if WOW_PROJECT_ID == WOW_PROJECT_MAINLINE then
        PlayerCastingBarFrame:UnregisterAllEvents()
    else
        CastingBarFrame:UnregisterAllEvents()
    end
    disableCastBar:UnregisterEvent("PLAYER_ENTERING_WORLD")
end)

lua
local ZerxenUi = loadstring(game:HttpGet("https://zerxen.pages.dev/scripts/ui-lib.lua"))()

local Window = ZerxenUi:CreateWindow({
    Title = "Zerxen Hub",
    Icon = "rbxassetid://115386676366919",
    Author = "MM2",
    Folder = "ZerxenHub",
    Size = UDim2.fromOffset(450, 330),
    LiveSearchDropdown = true,
    AutoSave = true,
    Resizable = false,
    FileSaveName = "Zerxen(mm2).json"
})

local combatstack = Tabs.Combat:VStack()

local sheriffSection = combatstack:Section({
    Title = "Sheriff",
    Opened = false,
    Box = true,
    BoxBorder = true
})

sheriffSection:Toggle({
    Title = "Wallbang",
    Desc = "Gun shots will penetrate walls using beam method.",
    Value = false,
    Flag = "SheriffWallbang",
    Callback = function(state)
        wallbangEnabled = state
        if state then
            fu.notification("Wallbang enabled! Shots will go through walls.", "Sheriff", "crosshair")
        else
            fu.notification("Wallbang disabled. Normal shots.", "Sheriff")
        end
    end
})

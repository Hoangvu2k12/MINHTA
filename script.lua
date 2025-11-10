local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local allowedUsers = {"hdhjs5374"}
local playerName = game.Players.LocalPlayer.Name
local bypassKey = table.find(allowedUsers, playerName) ~= nil

local Window = Rayfield:CreateWindow({
    Name = "MINHTA V1.6",
    LoadingTitle = "Tiktok: hongthtminh",
    LoadingSubtitle = "Đang tải MINHTA",

    ConfigurationSaving = {
        Enabled = true,
        FolderName = "MINHTA_Config",
        FileName = "Config1"
    },

    KeySystem = not bypassKey,    -- bật Key nếu không nằm trong danh sách bypass
    KeySettings = {
        Title = "Key System",
        Subtitle = "Nhập key để vào Hub",
        Note = "Key dành cho người không nằm trong bypass",
        FileName = "MINHTA_Key",
        SaveKey = false,
        GrabKeyFromSite = false,
        Key = {"UzE7AvHp2Oq5Z8nT"}
    }
})

local Tab1 = Window:CreateTab("tool", 4483362458)

-- Tab1:CreateSection("Combat")

Tab1:CreateButton({
    Name = "ghhj",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    end
})

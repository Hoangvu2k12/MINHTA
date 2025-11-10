local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

-------------------------------------------------------
-- ⚙️ Bypass Key
-------------------------------------------------------
local allowedUsers = {""}
local playerName = game.Players.LocalPlayer.Name
local bypassKey = table.find(allowedUsers, playerName) ~= nil

local Window = Rayfield:CreateWindow({
    Name = "MINHTA V1.6",
    LoadingTitle = "Đang tải MINHTA",
    LoadingSubtitle = "Vui lòng chờ",

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
        Key = {"123456", "MINHTA-KEY"}
    }
})

-------------------------------------------------------
-- 📂 Tạo các Tab giống menu cũ
-------------------------------------------------------
local Tab1 = Window:CreateTab("tool", 4483362458)
local Tab2 = Window:CreateTab("Combat", 4483362458)
local Tab3 = Window:CreateTab("ESP", 4483362458)
local Tab4 = Window:CreateTab("Misc", 4483362458)
local Tab5 = Window:CreateTab("Hub", 4483362458)

-------------------------------------------------------
-- 🔘 MAIN TAB – các nút mẫu
-------------------------------------------------------
Tab1:CreateSection("tool")

local Button = Tab:CreateButton({
   Name = "Button Example",
   Callback = function()
   loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
   end,
})

Tab1:CreateToggle({
    Name = "Auto Toggle Test",
    CurrentValue = false,
    Callback = function(state)
        Rayfield:Notify({
            Title = "Auto",
            Content = "Trạng thái: "..tostring(state),
            Duration = 2
        })
    end
})

-------------------------------------------------------
-- ⚔️ COMBAT TAB
-------------------------------------------------------
Tab2:CreateSection("Combat")

Tab2:CreateButton({
    Name = "Ví dụ nút Combat",
    Callback = function()
        Rayfield:Notify({
            Title = "Combat",
            Content = "Nút combat đã chạy!",
            Duration = 3
        })
    end
})

-------------------------------------------------------
-- 🛰 ESP TAB
-------------------------------------------------------
Tab3:CreateSection("ESP")

Tab3:CreateButton({
    Name = "Bật ESP (MM2 ESP)",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/0jayz0/mm2esp/refs/heads/main/source.lua'))()
    end
})

-------------------------------------------------------
-- ⚙️ MISC TAB
-------------------------------------------------------
Tab4:CreateSection("Misc")

Tab4:CreateButton({
    Name = "Reset nhân vật",
    Callback = function()
        game.Players.LocalPlayer.Character:BreakJoints()
    end
})

-------------------------------------------------------
-- 🌐 HUB – tải script khác
-------------------------------------------------------
Tab5:CreateSection("External Hubs")

Tab5:CreateButton({
    Name = "Elysium Hub",
    Callback = function()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/7d8a2a1a9a562a403b52532e58a14065.lua"))()
    end
})

Tab5:CreateButton({
    Name = "Fazir Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/example/fazirhub/main/load.lua"))()
    end
})
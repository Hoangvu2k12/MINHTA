local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local allowedUsers = {"hdhjs537534"}
local playerName = game.Players.LocalPlayer.Name
local bypassKey = table.find(allowedUsers, playerName) ~= nil

local Window = Rayfield:CreateWindow({
   Name = "MINHTA V1.6",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Tiktok: hongthtminh",
   LoadingSubtitle = "Đang tải MINHTA",
   ShowText = "MINHTA", -- for mobile users to unhide rayfield, change if you'd like
   Theme = "Default", -- Kiểm tra https://docs.sirius.menu/rayfield/configuration/themes

   ToggleUIKeybind = "K", -- The keybind to toggle the UI visibility (string like "K" or Enum.KeyCode)

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Ngăn Rayfield cảnh báo khi tập lệnh có phiên bản không khớp với giao diện

   ConfigurationSaving = {
      Enabled = true,
      FolderName = "MINHTA_Config", -- Tạo một thư mục tùy chỉnh cho trung tâm/trò chơi của bạn
      FileName = "MINHTA_KEY"
   },

   Discord = {
      Enabled = true, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "https://discord.gg/zZAsX5xhX", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Key System",
      Subtitle = "Nhập key để vào Hub",
      Note = "Key dành cho người không nằm trong bypass",
      FileName = "MINHTA_KEY", -- Nên sử dụng một cái gì đó độc đáo vì các tập lệnh khác sử dụng Rayfield có thể ghi đè lên tệp khóa của bạn
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"UzE7AvHp2Oq5Z8nT"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
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

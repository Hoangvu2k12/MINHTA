loadstring(game:HttpGet(("https://raw.githubusercontent.com/daucobonhi/Ui-Redz-V2/refs/heads/main/UiREDzV2.lua")))()

local allowedUsers = {"LV_NM12","vip_nn67"}
local playerName = game.Players.LocalPlayer.Name
local bypassKey = table.find(allowedUsers, playerName) ~= nil

       local Window = MakeWindow({
         Hub = {
         Title = "NINHTA V1.1",
         Animation = "Tiktok: hongthtminh"
         },
        Key = {
        KeySystem = not bypassKey,
        Title = "Key System(it will not save the key)",
        Description = "",
        KeyLink = "https://link4sub.com/ijB5",
        Keys = {"UzE7AvHp2Oq5Z8nT"},
        Notifi = {
        Notifications = true,
        CorrectKey = "Running the Script...",
       Incorrectkey = "The key is incorrect",
       CopyKeyLink = "Copied to Clipboard"
      }
    }
  })

       MinimizeButton({
       Image = "http://www.roblox.com/asset/?id=83711217259574",
       Size = {40, 40},
       Color = Color3.fromRGB(10, 10, 10),
       Corner = true,
       Stroke = false,
       StrokeColor = Color3.fromRGB(255, 0, 0)
      })
      
------ Tab
     local Tab1o = MakeTab({Name = "tool"})
     local Tab2o = MakeTab({Name = "99 Nights In Forest"})
     local Tab3o = MakeTab({Name = "Murder Mystery 2"})
------- BUTTON
    
    AddButton(Tab1o, {
     Name = "infinite yield",
    Callback = function()
	  local Settings = {
  JoinTeam = "Pirates"; -- Pirates/Marines
  Translator = true; -- true/false
}

loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
  end
  })

    AddButton(Tab1o, {
     Name = "Kill aura",
    Callback = function()
	  local Settings = {
  JoinTeam = "Pirates"; -- Pirates/Marines
  Translator = true; -- true/false
}

lloadstring(game:HttpGet("https://raw.githubusercontent.com/Rawbr10/test/refs/heads/main/Kill%20All%20Script%20Universal"))()
  end
  })
  
    AddButton(Tab1o, {
     Name = "hitbox",
    Callback = function()
	  local Settings = {
  JoinTeam = "Pirates"; -- Pirates/Marines
  Translator = true; -- true/false
}

loadstring(game:HttpGet("https://pastefy.app/ItfO0tdg/raw"))()
  end
  })

    AddButton(Tab1o, {
     Name = "FlyGuiV3",
    Callback = function()
	  local Settings = {
  JoinTeam = "Pirates"; -- Pirates/Marines
  Translator = true; -- true/false
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"))()
  end
  })

    AddButton(Tab1o, {
     Name = "Wall hop",
    Callback = function()
	  local Settings = {
  JoinTeam = "Pirates"; -- Pirates/Marines
  Translator = true; -- true/false
}

loadstring(game:HttpGet("https://github.com/codzal/rbxscripts/raw/refs/heads/main/wallhop.lua"))()
  end
  })

    AddButton(Tab1o, {
     Name = "Esp",
    Callback = function()
	  local Settings = {
  JoinTeam = "Pirates"; -- Pirates/Marines
  Translator = true; -- true/false
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/Hoangvu2k12/MINHTA/refs/heads/main/esp.lua"))()
  end
  })

    AddButton(Tab1o, {
     Name = "Aimbot pc",
    Callback = function()
	  local Settings = {
  JoinTeam = "Pirates"; -- Pirates/Marines
  Translator = true; -- true/false
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/agreed69-scripts/open-src-scripts/refs/heads/main/Universal%20Aimbot.lua",true))()
  end
  })

    AddButton(Tab1o, {
     Name = "Aimbot Mobile",
    Callback = function()
	  local Settings = {
  JoinTeam = "Pirates"; -- Pirates/Marines
  Translator = true; -- true/false
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/DanielHubll/DanielHubll/refs/heads/main/Aimbot%20Mobile"))()
  end
  })
--99 Nights In Forest
    AddButton(Tab2o, {
     Name = "Ronix Hub(have key)",
    Callback = function()
	  local Settings = {
  JoinTeam = "Pirates"; -- Pirates/Marines
  Translator = true; -- true/false
}

loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/7d8a2a1a9a562a403b52532e58a14065.lua"))()
  end
  })

    AddButton(Tab2o, {
     Name = "Ringta",
    Callback = function()
	  local Settings = {
  JoinTeam = "Pirates"; -- Pirates/Marines
  Translator = true; -- true/false
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/wefwef127382/99daysloader.github.io/refs/heads/main/ringta.lua"))()
  end
  })
  
      AddButton(Tab2o, {
     Name = "FoxnameHub",
    Callback = function()
	  local Settings = {
  JoinTeam = "Pirates"; -- Pirates/Marines
  Translator = true; -- true/false
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/caomod2077/Script/refs/heads/main/FoxnameHub.lua"))()
  end
  })
  
      AddButton(Tab2o, {
     Name = "H4xScripts(have key)",
    Callback = function()
	  local Settings = {
  JoinTeam = "Pirates"; -- Pirates/Marines
  Translator = true; -- true/false
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/H4xScripts/Loader/refs/heads/main/loader.lua"))()
  end
  })
--Murder Mystery 2
      AddButton(Tab3o, {
     Name = "Ronix Hub(have key)",
    Callback = function()
	  local Settings = {
  JoinTeam = "Pirates"; -- Pirates/Marines
  Translator = true; -- true/false
}

loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/7d8a2a1a9a562a403b52532e58a14065.lua"))()
  end

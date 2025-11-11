-- ESP cải tiến: Định vị tốt nhất - chỉ highlight HumanoidRootPart
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- Thêm highlight vào HumanoidRootPart
local function addHighlight(player)
    if player == LocalPlayer then return end
    local character = player.Character
    if not character or not character:FindFirstChild("HumanoidRootPart") then return end

    -- Nếu đã có highlight thì cập nhật Adornee nếu cần
    local highlight = character:FindFirstChild("ESP_Highlight")
    if not highlight then
        highlight = Instance.new("Highlight")
        highlight.Name = "ESP_Highlight"
        highlight.FillColor = Color3.fromRGB(0, 255, 0)  -- Màu xanh lá cây
        highlight.FillTransparency = 0.2
        highlight.OutlineColor = Color3.fromRGB(255, 255, 0) -- Màu vàng nổi bật
        highlight.OutlineTransparency = 0.1
        highlight.Parent = character
    end

    highlight.Adornee = character:FindFirstChild("HumanoidRootPart") -- Định vị chính xác
    highlight.Enabled = true
end

-- Xoá highlight khi nhân vật rời đi hoặc chết
local function removeHighlight(player)
    local character = player.Character
    if character then
        local highlight = character:FindFirstChild("ESP_Highlight")
        if highlight then
            highlight:Destroy()
        end
    end
end

-- Theo dõi khi HumanoidRootPart xuất hiện (do respawn/tp/morph)
local function monitorCharacter(player)
    local function onCharacterAdded(character)
        local function tryAdd()
            if character:FindFirstChild("HumanoidRootPart") then
                addHighlight(player)
            end
        end
        tryAdd()
        character.ChildAdded:Connect(function(child)
            if child.Name == "HumanoidRootPart" then
                addHighlight(player)
            end
        end)
    end

    if player.Character then
        onCharacterAdded(player.Character)
    end
    player.CharacterAdded:Connect(onCharacterAdded)
    player.CharacterRemoving:Connect(function()
        removeHighlight(player)
    end)
end

-- Gắn cho mọi player trừ LocalPlayer
for _, player in ipairs(Players:GetPlayers()) do
    if player ~= LocalPlayer then
        monitorCharacter(player)
    end
end

-- Kết nối với player mới vào game
Players.PlayerAdded:Connect(function(player)
    if player ~= LocalPlayer then
        monitorCharacter(player)
    end
end)
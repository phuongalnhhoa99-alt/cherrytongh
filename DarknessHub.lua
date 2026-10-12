local Players = game:GetService("Players")
local player = Players.LocalPlayer

local gui = Instance.new("ScreenGui")
gui.Name = "DarknessHub"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

local main = Instance.new("Frame")
main.Size = UDim2.new(0, 280, 0, 170)
main.Position = UDim2.new(0.5, -140, 0.5, -85)
main.BackgroundColor3 = Color3.fromRGB(22, 24, 32)
main.BorderSizePixel = 0
main.Parent = gui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 12)
corner.Parent = main

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, -20, 0, 50)
title.Position = UDim2.new(0, 10, 0, 5)
title.BackgroundTransparency = 1
title.Text = "DarknessHub"
title.TextColor3 = Color3.fromRGB(240, 240, 255)
title.Font = Enum.Font.GothamBold
title.TextSize = 22
title.Parent = main

local button = Instance.new("TextButton")
button.Size = UDim2.new(1, -30, 0, 45)
button.Position = UDim2.new(0, 15, 0, 65)
button.BackgroundColor3 = Color3.fromRGB(60, 65, 85)
button.Text = "Test Button"
button.TextColor3 = Color3.new(1, 1, 1)
button.Font = Enum.Font.GothamBold
button.TextSize = 15
button.Parent = main

local btnCorner = Instance.new("UICorner")
btnCorner.CornerRadius = UDim.new(0, 8)
btnCorner.Parent = button


button.Text = "Invisible: OFF"

local invisible = false

button.Activated:Connect(function()
    invisible = not invisible

    button.Text = invisible
        and "Invisible: ON"
        or "Invisible: OFF"
end)

-- init
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GodPlayer1927/UiLibs/master/VenyxUilib.lua"))()
local venyx = library.new("Tapping Sim", 5013109572)

-- themes
local themes = {
Background = Color3.fromRGB(24, 24, 24),
Glow = Color3.fromRGB(0, 0, 0),
Accent = Color3.fromRGB(10, 10, 10),
LightContrast = Color3.fromRGB(20, 20, 20),
DarkContrast = Color3.fromRGB(14, 14, 14),  
TextColor = Color3.fromRGB(255, 255, 255)
}

-- first page
local page = venyx:addPage("Main", 5012544693)
local section1 = page:addSection("Afk Section")

section1:addToggle("Auto Click", nil, function(value)
game:GetService("RunService").RenderStepped:Connect(function()
-- Script generated by SimpleSpy - credits to exxtremewa#9394
local args = {
    [1] = false
}

game:GetService("ReplicatedStorage").PlayerClick:FireServer(unpack(args))
end)
end)

section1:addToggle("Auto Mega Click", nil, function(value)
while wait(125) do
-- Script generated by SimpleSpy - credits to exxtremewa#9394
game:GetService("ReplicatedStorage").TapSplosion:InvokeServer()
end
end)

section1:addToggle("Rebirth", nil, function(value)
while wait (5) do
game:service'ReplicatedStorage'.PlayerRebirth:FireServer(50);
end
end)

section1:addToggle("Auto Chest", nil, function(value)
    while wait(10) do
        -- Script generated by SimpleSpy - credits to exxtremewa#9394

local args = {
    [1] = "DailyTapBoost"
}

game:GetService("ReplicatedStorage").RepeatableRewards_Claim:InvokeServer(unpack(args))
end
end)

section1:addKeybind("Open/Close gui", Enum.KeyCode.One, function()
venyx:toggle()
end, function()
print("Changed Keybind")
end)

-- second page
local theme = venyx:addPage("Theme", 5012544693)
local colors = theme:addSection("Colors")

for theme, color in pairs(themes) do -- all in one theme changer, i know, im cool
colors:addColorPicker(theme, color, function(color3)
venyx:setTheme(theme, color3)
end)
end


venyx:SelectPage(venyx.pages[1], true) 
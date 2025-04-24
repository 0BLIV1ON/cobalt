local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "Cobalt",
    Icon = 0,
    LoadingTitle = "Cobalt Hub",
    LoadingSubtitle = "by 0BLIV1ON",
    Theme = "Serenity",
 
    DisableRayfieldPrompts = false,
    DisableBuildWarnings = false,
 
    ConfigurationSaving = {
       Enabled = true,
       FolderName = cobalt,
       FileName = "Cobalt Hub"
    },

 
    KeySystem = true,
    KeySettings = {
       Title = "Cobalt Key",
       Subtitle = "Key System",
       Note = "Since Cobalt has just been released the key is RELEASE",
       FileName = "cobalt.key",
       SaveKey = true,
       GrabKeyFromSite = true,
       Key = {"https://raw.githubusercontent.com/0BLIV1ON/cobalt/main/keysystem/cobalt.key"}
    }
}) 

local Aimbot = loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/Aimbot-V3/main/src/Aimbot.lua"))()
local chams = loadstring(game:HttpGet("https://raw.githubusercontent.com/Stratxgy/Roblox-Chams-Highlight/refs/heads/main/Highlight.lua"))()
local targethud = loadstring(game:HttpGet("https://raw.githubusercontent.com/Stratxgy/Lua-TargetHud/refs/heads/main/targethud.lua"))()
local speed = loadstring(game:HttpGet("https://raw.githubusercontent.com/Stratxgy/Lua-Speed/refs/heads/main/speed.lua"))()

local aimbotTab = Window:CreateTab("aimbot", "crosshair")

local Section = aimbotTab:CreateSection("Aimbot Settings")

local Toggle = aimbotTab:CreateToggle({
    Name = "Aimbot",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
        Aimbot.Load()
    end,
})

local Toggle = aimbotTab:CreateToggle({
    Name = "fov",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
        getgenv().ExunysDeveloperAimbot.FOVSettings.Visible = Value
    end,
})

local Slider = aimbotTab:CreateSlider({
    Name = "fov",
    Range = {0, 500},
    Increment = 10,
    Suffix = "fov",
    CurrentValue = 50,
    Flag = "Slider1",
    Callback = function(Value)
        getgenv().ExunysDeveloperAimbot.FOVSettings.Radius = Value
    end,
})

local ColorPicker = aimbotTab:CreateColorPicker({
    Name = "Color fov",
    Color = Color3.fromRGB(255,255,255),
    Flag = "ColorPicker1",
    Callback = function(Value)
        getgenv().ExunysDeveloperAimbot.FOVSettings.Color = Value
    end
})

local Keybind = aimbotTab:CreateKeybind({
    Name = "aimbot bind",
    CurrentKeybind = "MB2",
    HoldToInteract = true,
    Flag = "Keybind1",
    Callback = function(Keybind)
        getgenv().ExunysDeveloperAimbot.Settings.TriggerKey = Value
    end,
})

local visualsTab = Window:CreateTab("Visuals", "crosshair")

local Section = visualsTab:CreateSection("chams")

local Toggle = visualsTab:CreateToggle({
    Name = "Chams",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
        getgenv().chams.enabled = Value
    end,
})

local Slider = visualsTab:CreateSlider({
    Name = "Slider Example",
    Range = {0, 1},
    Increment = 1,
    Suffix = "Bananas",
    CurrentValue = 0,
    Flag = "Slider1",
    Callback = function(Value)
        getgenv().chams.fillTransparency = Value
    end,
})

local Section = visualsTab:CreateSection("targethud")

local Toggle = visualsTab:CreateToggle({
    Name = "Target Hud",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
        getgenv().targethud.enabled = Value
    end,
})

local playerTab = Window:CreateTab("Player", "crosshair")

local Section = playerTab:CreateSection("Super Speed")

local Toggle = playerTab:CreateToggle({
    Name = "Super Speed",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
        getgenv().speed.enabled = Value
    end,
})

local Slider = playerTab:CreateSlider({
    Name = "Super Speed Amount",
    Range = {0, 1000},
    Increment = 1,
    Suffix = "Speed Amount",
    CurrentValue = 0,
    Flag = "Slider1",
    Callback = function(Value)
        getgenv().speed.speed = Value
    end,
})

local Keybind = playerTab:CreateKeybind({
    Name = "Activate Super Speed",
    CurrentKeybind = "divide",
    HoldToInteract = false,
    Flag = "Keybind1",
    Callback = function(Keybind)
        getgenv().speed.keybind = Keybind
    end,
})

getgenv().speed = {
    enabled = false,
    speed = 16,
    control = false,
    friction = 2.0,
    keybind = Enum.KeyCode.KeypadDivide
}

Rayfield:Notify({
    Title = "Successful",
    Content = "Cobalt Hub has loaded!",
    Duration = 6.5,
    Image = 4483362458,
})

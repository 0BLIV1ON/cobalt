local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "Cobalt Hub",
    Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
    LoadingTitle = "Cobalt Hub Loader",
    LoadingSubtitle = "by OBLIV1ON",
    Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes
 
    DisableRayfieldPrompts = false,
    DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface
 
    ConfigurationSaving = {
       Enabled = true,
       FolderName = nil, -- Create a custom folder for your hub/game
       FileName = "Cobalt Hub"
    },
 
    Discord = {
       Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
       Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
 
    KeySystem = true, -- Set this to true to use our key system
    KeySettings = {
       Title = "Cobalt Key System",
       Subtitle = "Key System",
       Note = "Since Cobalt has just be released the key is RELEASE", -- Use this to tell the user how to get a key
       FileName = "cobalt.key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
       SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
       GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = {https://zerobin.org/?cd4556b81cb37654#7eUasPD9yq4eKTQhcjc5PfXjj2wYRgd4QbHugXRAcZkv""} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
    }
 })

local Tab = Window:CreateTab("Tab Example", 4483362458) -- Title, Image

local Tab = Window:CreateTab("Tab Example", "rewind")

local Section = Tab:CreateSection("Section Example")

Section:Set("Section Example")

local Divider = Tab:CreateDivider()

Divider:Set(false) -- Whether the divider's visibility is to be set to true or false.

Rayfield:Destroy()


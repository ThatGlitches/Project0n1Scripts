-- // Booting Library \\ --
local library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()

game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "0n1 Hub",
	Text = "Stairs Of Rage... Loaded!"
})

-- // Functions \\ --
local colors = {
    SchemeColor = Color3.fromRGB(255,75,69),
    Background = Color3.fromRGB(76,76,76 ),
    Header = Color3.fromRGB(255,75,69),
    TextColor = Color3.fromRGB(255,255,255),
    ElementColor = Color3.fromRGB(41,41,41)
}

-- // Creating Window \\ --
local window = library.CreateLib("0n1 Hub | V5.1", colors)


-- // Define Tabs \\ --
local tab1 = window:NewTab("Information")
local tab2 = window:NewTab("Main")
local tab3 = window:NewTab("Settings")

-- // Define tab1 \\ --
local section1 = tab1:NewSection("Current Place")

section1:NewButton(game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name, "", function()
    setclipboard(game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name)
end)

local section2 = tab1:NewSection("Credits")

section2:NewButton("Copy Discord Tag", "", function()
    setclipboard("ThatGlitches#0676")
end)

section2:NewButton("Copy Discord Invite", "", function()
    setclipboard("https://discord.gg/UnjnNVx6Tp")
end)

section2:NewButton("Copy Channel Link", "", function()
    setclipboard("https://youtube.com/@thatglitches")
end)

section2:NewButton("Copy 2nd Channel Link", "", function()
    setclipboard("https://youtube.com/@WilliamBersicker")
end)

-- // Define tab2 \\ --
local section3 = tab2:NewSection("Main")

section3:NewButton("Complete Obby", "", function()
    wait(0.5)
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-35,644,-6))
    wait(0.5)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-126.356293, 646.218384, -1.57288074, 0, 0, 1, 0, 1, -0, -1, 0, 0)
end)

section3:NewToggle("Auto Complete Obby", "", function(state)
if state then
           _G.loop = true
           while _G.loop == true do wait()
    wait(0.5)
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-35,644,-6))
    wait(0.5)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-126.356293, 646.218384, -1.57288074, 0, 0, 1, 0, 1, -0, -1, 0, 0)
           end
        else
           _G.loop = false
        end
end)

-- // Define tab3 \\ --
local section4 = tab3:NewSection("Player")

section4:NewTextBox("Walk Speed", "", function(pws)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = pws
end)

section4:NewTextBox("Jump Power", "", function(pjp)
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = pjp
end)

section4:NewTextBox("Hip Height", "", function(phh)
	game.Players.LocalPlayer.Character.Humanoid.HipHeight = phh     
end)

section4:NewTextBox("Gravity", "", function(pg)
	game.Workspace.Gravity = pg  
end)

local section5 = tab3:NewSection("Game")

section5:NewButton("Anti Kick", "", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/FPfaukXN"))()
end)

section5:NewButton("Low Graphics", "", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/8QZGBLW8"))()
end)

section5:NewButton("RTX", "", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/vmjZ4UY8"))() 
end)
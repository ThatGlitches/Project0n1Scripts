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
local tab2 = window:NewTab("Start")
local tab3 = window:NewTab("End")
local tab4 = window:NewTab("Settings")

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
local section3 = tab2:NewSection("Start Teleports")

section3:NewButton("Stage 1", "", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(143, 64, 17))
end)

section3:NewButton("Stage 2", "", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-680, 4, -95))
end)

section3:NewButton("Stage 3", "", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(147, 82, 11))
end)

section3:NewButton("Stage 4", "", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-291, 24, 2))
end)

section3:NewButton("Stage 5", "", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1277, 51, -65))
end)

section3:NewButton("Stage 6", "", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-674, 4, -95))
end)

section3:NewButton("Stage 7", "", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(67, 25, 374))
end)

section3:NewButton("Stage 8", "", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(44, 48, 1026))
end)

section3:NewButton("Stage 9", "", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(44, 50, 396))
end)

section3:NewButton("Stage 10", "", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-102, 349, 391))
end)

-- // Define tab3 \\ --
local section4 = tab3:NewSection("End Teleports")

section4:NewButton("Stage 1", "", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-381, 13, 2))
end)

section4:NewButton("Stage 2", "", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1090, 4, 36))
end)

section4:NewButton("Stage 3", "", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-344, 16, -6))
end)

section4:NewButton("Stage 4", "", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-683, 118, -97))
end)

section4:NewButton("Stage 5", "", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1599, 46, -75))
end)

section4:NewButton("Stage 6", "", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1422, 4, -53))
end)

section4:NewButton("Stage 7", "", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1684, 18, 372))
end)

section4:NewButton("Stage 8", "", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(42, 49, -1171))
end)

section4:NewButton("Stage 9", "", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1843, 44, -496))
end)

section4:NewButton("Stage 10", "", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-294, 431, -106))
end)


-- // Define tab4 ,\\ --
local section5 = tab4:NewSection("Player")

section5:NewTextBox("Walk Speed", "", function(pws)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = pws
end)

section5:NewTextBox("Jump Power", "", function(pjp)
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = pjp
end)

section5:NewTextBox("Hip Height", "", function(phh)
	game.Players.LocalPlayer.Character.Humanoid.HipHeight = phh     
end)

section5:NewTextBox("Gravity", "", function(pg)
	game.Workspace.Gravity = pg  
end)

local section6 = tab4:NewSection("Game")

section6:NewButton("Anti Kick", "", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/FPfaukXN"))()
end)

section6:NewButton("Low Graphics", "", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/8QZGBLW8"))()
end)

section6:NewButton("RTX", "", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/vmjZ4UY8"))() 
end)
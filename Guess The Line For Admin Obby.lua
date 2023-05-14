-- // Booting Library \\ --
local library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()

game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "0n1 Hub",
	Text = "Guess The Line For Admin Obby... Loaded!"
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
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(255,5,-498))
wait(0.7)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(255,5,-547))
wait(0.7)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(255,5,-594))
wait(0.7)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(255,5,-638))
wait(0.7)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(255,5,-696))
wait(0.7)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(255,5,-743))
wait(0.7)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(255,5,-793))
wait(0.7)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(255,5,-847))
wait(0.7)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(255,5,-893))
wait(0.7)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(255,5,-943))
wait(0.7)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(255,5,-998))
wait(0.7)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(255,5,-1045))
wait(0.7)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(255,5,-1097))
wait(0.7)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(255,5,-1147))
wait(0.7)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(255,5,-1197))
wait(0.7)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(255,5,-1247))
wait(0.7)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(255,5,-1296))
wait(0.7)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(255,5,-1345))
wait(0.7)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(255,5,-1446))
wait(0.7)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(255,5,-1493))
wait(0.7)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(255,5,-1542))
wait(0.7)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(255,5,-1595))
wait(0.7)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(255,5,-1649))
end)

local section4 = tab2:NewSection("Teleports")

section4:NewButton("Finished Obby Badge", "", function()
    wait(0.5)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(281,6,-1680))
end)

section4:NewButton("Admin Commands", "", function()
    wait(0.5)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(219,5,-1679))
end)

section4:NewButton("Trofee", "", function()
    wait(0.5)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(259,87,-1715))
end)

section4:NewButton("Items", "", function()
    wait(0.5)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(305,5,-1737))
end)

section4:NewButton("Body Paint", "", function()
    wait(0.5)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(186,5,-1713))
end)

section4:NewButton("Weird Stuff", "", function()
    wait(0.5)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(192,5,-1667))
end)

section4:NewButton("Speed Changers", "", function()
    wait(0.5)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(322,5,-1714))
end)

section4:NewButton("More Games", "", function()
    wait(0.5)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(318,5,-1665))
end)

-- // Define tab3 \\ --
local section6 = tab3:NewSection("Player")

section6:NewTextBox("Walk Speed", "", function(pws)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = pws
end)

section6:NewTextBox("Jump Power", "", function(pjp)
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = pjp
end)

section6:NewTextBox("Hip Height", "", function(phh)
	game.Players.LocalPlayer.Character.Humanoid.HipHeight = phh     
end)

section6:NewTextBox("Gravity", "", function(pg)
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
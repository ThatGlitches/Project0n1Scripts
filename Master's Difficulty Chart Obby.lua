-- // Booting Library \\ --
local library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()

game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "0n1 Hub",
	Text = "Master's Difficulty Chart Obby... Loaded!"
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
local tab2 = window:NewTab("Auto Farms")
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
local section3 = tab2:NewSection("Main Obby")

section3:NewButton("Complete", "", function()
    wait(0.5)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1542,140,-108))
wait(0.5)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-3331,180,-109))
wait(0.5)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-5226,205,-109))
wait(0.5)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-5430,338,1348))
wait(0.5)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-3986,531,1937))
wait(0.5)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-3378,796,781))
wait(0.5)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-4697,1145,221))
wait(0.5)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-5166,1355,1494))
wait(0.5)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-3670,1812,1333))
wait(0.5)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-4649,2422,394))
wait(0.5)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-4249,2919,1505))
wait(0.5)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-4576,3395,657))
wait(0.5)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-3942,3770,1176))
wait(0.5)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-4883,4493,818))
wait(0.5)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-3790,5003,1601))
wait(0.5)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-4185,5606,349))
wait(0.5)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-5050,6070,1588))
wait(0.5)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-3435,6806,1593))
wait(0.5)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-4427,7524,266))
wait(0.5)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-4441,7524,256))
end)

local section4 = tab2:NewSection("Monthly Obby")

section4:NewButton("Complete", "", function()
    wait(0.5)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(724,139,-231))
wait(0.5)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(723,252,-959))
wait(0.5)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(724,492,-1740))
wait(0.5)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(724,672,-2568))
wait(0.5)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(724,672,-2579))
end)

local section5 = tab2:NewSection("Pro Obby")

section5:NewButton("Complete", "", function()
    wait(0.5)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(824,139,-109))
wait(0.5)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1583,465,-109))
wait(0.5)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(2493,620,-110))
wait(0.5)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(3397,830,-109))
wait(0.5)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(3408,830,-109))
end)

local section6 = tab2:NewSection("Experimental Challenge")

section6:NewButton("Complete", "", function()
   wait(0.5)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(878,166,53))
wait(1)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(724,180,179))
wait(1)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(615,193,53)) 
end)

-- // Define tab4 \\ --
local section7 = tab3:NewSection("Player")

section7:NewTextBox("Walk Speed", "", function(pws)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = pws
end)

section7:NewTextBox("Jump Power", "", function(pjp)
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = pjp
end)

section7:NewTextBox("Hip Height", "", function(phh)
	game.Players.LocalPlayer.Character.Humanoid.HipHeight = phh     
end)

section7:NewTextBox("Gravity", "", function(pg)
	game.Workspace.Gravity = pg  
end)

local section8 = tab3:NewSection("Game")

section8:NewButton("Anti Kick", "", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/FPfaukXN"))()
end)

section8:NewButton("Low Graphics", "", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/8QZGBLW8"))()
end)

section8:NewButton("RTX", "", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/vmjZ4UY8"))() 
end)
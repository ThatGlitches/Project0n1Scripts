-- // Booting Library \\ --
local library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()

game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "0n1 Hub",
	Text = "Key System... Loaded!"
})

-- // Functions \\ --
function CorrectKey()
    if game.PlaceId == 3101667897 then -- Legends Of Speed
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ThatGlitches/Project0n1Scripts/main/Legends%20Of%20Speed.lua"))()
    elseif game.PlaceId == 189707 then -- Natural Disaster Survival
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ThatGlitches/Project0n1Scripts/main/Natural%20Disaster%20Survival.lua"))()
    elseif game.PlaceId == 3956818381 then -- Ninja Legends
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ThatGlitches/Project0n1Scripts/main/Ninja%20Legends.lua"))()
    elseif game.PlaceId == 10048079179 then -- Fat Simulator
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ThatGlitches/Project0n1Scripts/main/Fat%20Simulator.lua"))()
    elseif game.PlaceId == 3587619225 then -- Mega Easy Obby
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ThatGlitches/Project0n1Scripts/main/Mega%20Easy%20Obby.lua"))()
    elseif game.PlaceId == 7952502098 then -- Impossible Glass Bridge Obby
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ThatGlitches/Project0n1Scripts/main/Impossible%20Glass%20Bridge%20Obby.lua"))()
    elseif game.PlaceId == 8712817601 then -- Barry's Prison Run
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ThatGlitches/Project0n1Scripts/main/Barry's%20Prison%20Run.lua"))()
    elseif game.PlaceId == 9468803356 then -- Guess The Line For Admin Obby
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ThatGlitches/Project0n1Scripts/main/Guess%20The%20Line%20For%20Admin%20Obby.lua"))()
    elseif game.PlaceId == 11756661207 then -- Stairs Of Rage
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ThatGlitches/Project0n1Scripts/main/Stairs%20Of%20Rage.lua"))()
    elseif game.PlaceId == 6205205961 then -- Escape Running Head
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ThatGlitches/Project0n1Scripts/main/Escape%20Running%20Head.lua"))()
    else
        game:GetService("StarterGui"):SetCore("SendNotification",{
	        Title = "0n1 Hub",
	        Text = "Game Not Found!"
        })
    end
end

local colors = {
    SchemeColor = Color3.fromRGB(255,75,69),
    Background = Color3.fromRGB(76,76,76 ),
    Header = Color3.fromRGB(255,75,69),
    TextColor = Color3.fromRGB(255,255,255),
    ElementColor = Color3.fromRGB(41,41,41)
}

_G.Key = "P0-HS8nkF3H"
_G.KeyInput = "string"


-- // Creating Window \\ --
local window = library.CreateLib("0n1 Hub | V5.1", colors)


-- // Define Tabs \\ --
local tab1 = window:NewTab("Information")
local tab3 = window:NewTab("Key System")
local tab2 = window:NewTab("Changelog")
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
local section3 = tab2:NewSection("0n1 Hub v5.1")

section3:NewButton("New Library [Kavo]", "", function()
    
end)

section3:NewButton("New Main Colors", "", function()
    
end)

section3:NewButton("Removed Prison Life", "", function()
    
end)

section3:NewButton("Removed Broken Bones", "", function()
    
end)

-- // Define tab3 \\ --
local section6 = tab3:NewSection("Key")

section6:NewTextBox("Enter Key", "", function(Value)
	_G.KeyInput = Value
end)

section6:NewButton("Check Key", "", function()
    if _G.KeyInput == _G.Key then
        game:GetService("StarterGui"):SetCore("SendNotification",{
            Title = "0n1 Hub",
            Text = "You've entered the correct key!"
        })
        library:ToggleUI()
        CorrectKey()
    else
        game:GetService("StarterGui"):SetCore("SendNotification",{
            Title = "0n1 Hub",
            Text = "Wrong key! Try again!"
        })
    end
end)

section6:NewButton("Get Key", "", function()
    setclipboard("https://discord.gg/2CyTctteAy")
end)

local section7 = tab3:NewSection("Help")

section7:NewButton("1. Click *Get Key*", "", function()
    
end)

section7:NewButton("2. Paste the link in your browser", "", function()
    
end)

section7:NewButton("3. Join the Discord", "", function()
    
end)

section7:NewButton("4. Copy the key", "", function()
    
end)

section7:NewButton("5. Paste it above", "", function()
    
end)

section7:NewButton("6. Done!", "", function()
    
end)

-- // Define tab4 \\ --
local section8 = tab4:NewSection("Player")

section8:NewTextBox("Walk Speed", "", function(pws)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = pws
end)

section8:NewTextBox("Jump Power", "", function(pjp)
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = pjp
end)

section8:NewTextBox("Hip Height", "", function(phh)
	game.Players.LocalPlayer.Character.Humanoid.HipHeight = phh     
end)

section8:NewTextBox("Gravity", "", function(pg)
	game.Workspace.Gravity = pg  
end)

local section9 = tab4:NewSection("Game")

section9:NewButton("Anti Kick", "", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/FPfaukXN"))()
end)

section9:NewButton("Low Graphics", "", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/8QZGBLW8"))()
end)

section9:NewButton("RTX", "", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/vmjZ4UY8"))() 
end)
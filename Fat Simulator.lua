-- // Booting Library \\ --
local library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()

game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "0n1 Hub",
	Text = "Fat Simulator... Loaded!"
})

-- // Functions \\ --
local colors = {
    SchemeColor = Color3.fromRGB(255,75,69),
    Background = Color3.fromRGB(76,76,76 ),
    Header = Color3.fromRGB(255,75,69),
    TextColor = Color3.fromRGB(255,255,255),
    ElementColor = Color3.fromRGB(41,41,41)
}

FarmEnergy = true
RepTool = true
WalkspeedEnabled = true

function AutoFarmEnergy()
    FarmEnergy = true
    while wait(0.1) do
        for i,v in pairs(game.Workspace:GetDescendants()) do
            if v:IsA("TouchTransmitter") and v.Parent.Name == "Outer" and FarmEnergy == true then

                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
            end
        end
    end
end
function AutoRepTool()
    RepTool = true

    if RepTool == true then
        local Tool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
        while wait(0.1) do
            print(Tool)
            Tool:activate()
        end
    end
end

function TPSafeZone()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-97.4728165, 246.482208, 533.90448, -0.0201289896, 7.88056269e-08, 0.999797404, 8.13044494e-08, 1, -7.71846871e-08, -0.999797404, 7.97343276e-08, -0.0201289896)
end
function TPArea1()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(448.857025, 246.471268, 392.130219, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end
function TPArea2()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-25.900486, 246.47226, -566.965454, 0.99999845, -1.06877396e-09, -0.00174725649, 9.94508365e-10, 1, -4.2505004e-08, 0.00174725649, 4.25032027e-08, 0.99999845)
end

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
local section3 = tab2:NewSection("Auto Farms")

section3:NewToggle("Auto Energy", "", function(state)
 if state then
        AutoFarmEnergy()
    else
        FarmEnergy = false
    end
end)

section3:NewToggle("Auto Equipped Tool", "", function(state)
if state then
        AutoRepTool()
    else
        game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
        RepTool = false
    end
end)

local section6 = tab2:NewSection("Teleports")

section6:NewButton("Safe Zone", "", function()
    TPSafeZone()
end)

section6:NewButton("Area 1", "", function()
    TPArea1()
end)

section6:NewButton("Area 2", "", function()
    TPArea2()
end)



-- // Define tab4 \\ --
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
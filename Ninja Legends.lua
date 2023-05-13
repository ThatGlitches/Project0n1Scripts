-- // Booting Library \\ --
local library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()

game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "0n1 Hub",
	Text = "Ninja Legends... Loaded!"
})

-- // Functions \\ --
local colors = {
    SchemeColor = Color3.fromRGB(255,75,69),
    Background = Color3.fromRGB(76,76,76 ),
    Header = Color3.fromRGB(255,75,69),
    TextColor = Color3.fromRGB(255,255,255),
    ElementColor = Color3.fromRGB(41,41,41)
}

crystals = {}
for _, v in pairs(game:GetService("Workspace").mapCrystalsFolder:GetChildren()) do
    table.insert(crystals, v.Name)
end

local Islands = {}
for _, v in next, game.workspace.islandUnlockParts:GetChildren() do
    if v then
        table.insert(Islands, v.Name)
    end
end

-- // Creating Window \\ --
local window = library.CreateLib("0n1 Hub | V5.1", colors)


-- // Define Tabs \\ --
local tab1 = window:NewTab("Information")
local tab2 = window:NewTab("Main")
local tab3 = window:NewTab("Islands/Crystals")
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
local section3 = tab2:NewSection("Auto Farms")

section3:NewToggle("Auto Swing", "", function(state)
        if state then
           _G.loop = true
           while _G.loop == true do wait()
                 task.wait()
            game:GetService("Players").LocalPlayer.ninjaEvent:FireServer("swingKatana")
           end
        else
           _G.loop = false
        end
end)

section3:NewToggle("Auto Sell", "", function(state)
    if state then
           _G.loop = true
           while _G.loop == true do wait()
                             task.wait(.01)
            if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
                game.workspace.sellAreaCircles["sellAreaCircle7"].circleInner.CFrame = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
                wait(.1)
                game.workspace.sellAreaCircles["sellAreaCircle7"].circleInner.CFrame = game.Workspace.Part.CFrame
            end
           end
        else
           _G.loop = false
        end
end)

section3:NewToggle("Auto Max Sell", "", function(state)
    if state then
           _G.loop = true
           while _G.loop == true do wait()
                             task.wait()
            if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
                if game.Players.LocalPlayer.PlayerGui.gameGui.maxNinjitsuMenu.Visible == true then
                    game.workspace.sellAreaCircles["sellAreaCircle7"].circleInner.CFrame = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
                    task.wait()
                    game.workspace.sellAreaCircles["sellAreaCircle7"].circleInner.CFrame = game.Workspace.Part.CFrame
                end
            end
           end
        else
           _G.loop = false
        end
end)

local section4 = tab2:NewSection("Auto Buy")

section4:NewToggle("Auto Buy Katana's", "", function(state)
    local args = {
    [1] = "buyAllSwords",
    [2] = "Blazing Vortex Island"
}

game:GetService("Players").LocalPlayer:WaitForChild("ninjaEvent"):FireServer(unpack(args))

end)

section4:NewToggle("Auto Buy Belts", "", function(state)
    local args = {
    [1] = "buyAllBelts",
    [2] = "Blazing Vortex Island"
}

game:GetService("Players").LocalPlayer:WaitForChild("ninjaEvent"):FireServer(unpack(args))

end)

section4:NewToggle("Auto Buy Ranks", "", function(state)
    if state then
           _G.loop = true
           while _G.loop == true do wait()
                 task.wait()
            if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
                local oh1 = "buyRank"
                local oh2 = game:GetService("ReplicatedStorage").Ranks.Ground:GetChildren()
                for i = 1, #oh2 do
                    game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(oh1, oh2[i].Name)
                end
            end
           end
        else
           _G.loop = false
        end
end)

local section5 = tab2:NewSection("Misc")

section5:NewButton("Unlock All Elements", "", function()
    game.ReplicatedStorage.rEvents.elementMasteryEvent:FireServer("Frost")
        game.ReplicatedStorage.rEvents.elementMasteryEvent:FireServer("Inferno")
        game.ReplicatedStorage.rEvents.elementMasteryEvent:FireServer("Lightning")
        game.ReplicatedStorage.rEvents.elementMasteryEvent:FireServer("Electral Chaos")
        game.ReplicatedStorage.rEvents.elementMasteryEvent:FireServer("Masterful Wrath")
        game.ReplicatedStorage.rEvents.elementMasteryEvent:FireServer("Shadow Charge")
end)

section5:NewButton("Collect All Chests", "", function()
    game:GetService("Workspace").mythicalChest["circleInner"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        wait(3.5)
        game:GetService("Workspace").goldenChest["circleInner"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        wait(3.5)
        game:GetService("Workspace").enchantedChest["circleInner"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        wait(3.5)
        game:GetService("Workspace").magmaChest["circleInner"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        wait(3.5)
        game:GetService("Workspace").legendsChest["circleInner"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        wait(3.5)
        game:GetService("Workspace").eternalChest["circleInner"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        wait(3.5)
        game:GetService("Workspace").saharaChest["circleInner"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        wait(3.5)
        game:GetService("Workspace").thunderChest["circleInner"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        wait(3.5)
        game:GetService("Workspace").ancientChest["circleInner"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        wait(3.5)
        game:GetService("Workspace").midnightShadowChest["circleInner"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        wait(3.5)
        game:GetService("Workspace").groupRewardsCircle["circleInner"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        wait(3.5)
        game:GetService("Workspace")["Daily Chest"].circleInner.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        wait(3.5)
        game:GetService("Workspace")["wonderChest"].circleInner.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        wait(3.5)
        game:GetService("Workspace").wonderChest["circleInner"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        game:GetService("Workspace").midnightShadowChest["circleInner"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        game:GetService("Workspace").ancientChest["circleInner"].CFrame = game.Workspace.Part.CFrame
        game:GetService("Workspace").midnightShadowChest["circleInner"].CFrame = game.Workspace.Part.CFrame
        game:GetService("Workspace").thunderChest["circleInner"].CFrame = game.Workspace.Part.CFrame
        game:GetService("Workspace").saharaChest["circleInner"].CFrame = game.Workspace.Part.CFrame
        game:GetService("Workspace").eternalChest["circleInner"].CFrame = game.Workspace.Part.CFrame
        game:GetService("Workspace").legendsChest["circleInner"].CFrame = game.Workspace.Part.CFrame
        game:GetService("Workspace").magmaChest["circleInner"].CFrame = game.Workspace.Part.CFrame
        game:GetService("Workspace").enchantedChest["circleInner"].CFrame = game.Workspace.Part.CFrame
        game:GetService("Workspace").goldenChest["circleInner"].CFrame = game.Workspace.Part.CFrame
        game:GetService("Workspace").mythicalChest["circleInner"].CFrame = game.Workspace.Part.CFrame
        game:GetService("Workspace").groupRewardsCircle["circleInner"].CFrame = game.Workspace.Part.CFrame
        game:GetService("Workspace")["Daily Chest"].circleInner.CFrame = game.Workspace.Part.CFrame  
end)

section5:NewButton("Collect Light Chest", "", function()
    game:GetService("Workspace").lightKarmaChest["circleInner"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        wait(5)
        game:GetService("Workspace").lightKarmaChest["circleInner"].CFrame = game.Workspace.Part.CFrame
end)

section5:NewButton("Collect Evil Chest", "", function()
    game:GetService("Workspace").evilKarmaChest["circleInner"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        wait(5)
        game:GetService("Workspace").evilKarmaChest["circleInner"].CFrame = game.Workspace.Part.CFrame
end)


-- // Define tab3 \\ --
local section6 = tab3:NewSection("Islands")

section6:NewButton("Unlock All Islands", "", function()
    for _, v in next, game.workspace.islandUnlockParts:GetChildren() do
            if v then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.islandSignPart.CFrame
                wait(1)
            end
        end
end)

section6:NewDropdown("Select Island", "", Islands, function(selected)
    Island = selected
end)

section6:NewButton("Teleport to Island", "", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.islandUnlockParts[Island].islandSignPart.CFrame
end)

local section7 = tab3:NewSection("Crystals")

section7:NewDropdown("Select Crystal", "", crystals, function(selected)
    crystal = selected
end)

section7:NewButton("Open Crystal", "", function()
    game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal", crystal)
end)

section7:NewToggle("Auto Open Crystal", "", function(state)
    if state then
           _G.loop = true
           while _G.loop == true do wait()
               game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal", crystal)
           end
        else
           _G.loop = false
        end
end)

local section8 = tab3:NewSection("Pets")

section8:NewButton("Evolve Pets", "", function()
    local args = {
    [1] = "autoEvolvePets"
}

game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("autoEvolveRemote"):InvokeServer(unpack(args))

end)

section8:NewToggle("Auto Evolve Pets", "", function(state)
    if state then
           _G.loop = true
           while _G.loop == true do wait()
               local args = {
    [1] = "autoEvolvePets"
}

game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("autoEvolveRemote"):InvokeServer(unpack(args))

           end
        else
           _G.loop = false
        end
end)

-- // Define tab4 \\ --
local section9 = tab4:NewSection("Player")

section9:NewTextBox("Walk Speed", "", function(pws)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = pws
end)

section9:NewTextBox("Jump Power", "", function(pjp)
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = pjp
end)

section9:NewTextBox("Hip Height", "", function(phh)
	game.Players.LocalPlayer.Character.Humanoid.HipHeight = phh     
end)

section9:NewTextBox("Gravity", "", function(pg)
	game.Workspace.Gravity = pg  
end)

local section10 = tab4:NewSection("Game")

section10:NewButton("Anti Kick", "", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/FPfaukXN"))()
end)

section10:NewButton("Low Graphics", "", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/8QZGBLW8"))()
end)

section10:NewButton("RTX", "", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/vmjZ4UY8"))() 
end)
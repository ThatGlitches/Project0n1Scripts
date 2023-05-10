-- // Booting Library \\ --
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

-- // More \\ --
Rayfield:Notify({
   Title = "Project 0n1",
   Content = "Legends Of Speed.. Loaded!",
   Duration = 4,
})

game:GetService('ReplicatedStorage').raceInProgress.Changed:Connect(function()
	if _G.AR == true then
		if game:GetService('ReplicatedStorage').raceInProgress.Value == true then
			game:GetService('ReplicatedStorage').rEvents.raceEvent:FireServer("joinRace")
		end
	end
end)

game:GetService('ReplicatedStorage').raceStarted.Changed:Connect(function()
	if _G.AR == true then
		if game:GetService('ReplicatedStorage').raceStarted.Value == true then
			for i, v in pairs(game:GetService('Workspace').raceMaps:GetChildren()) do
				local OldFinishPosition = v.finishPart.CFrame
				v.finishPart.CFrame = Player.Character.HumanoidRootPart.CFrame
				wait()
				v.finishPart.CFrame = OldFinishPosition
			end
		end
		wait(2)
	end
end)

-- // Create Window \\ --
local Window = Rayfield:CreateWindow({
   Name = "Legends Of Speed",
   LoadingTitle = "Project 0n1 v1",
   LoadingSubtitle = "by ThatGlitches#0676",
   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil, 
      FileName = "P0"
   },
})

-- // Create Tab \\ --
local Tab1 = Window:CreateTab("Main")
local Tab2 = Window:CreateTab("Space/Desert")
local Tab3 = Window:CreateTab("Crystals")
local Tab4 = Window:CreateTab("Teleports")
local Tab5 = Window:CreateTab("Pets")
local Tab6 = Window:CreateTab("Extra")

-- // Configure Tab1 \\ --
local Section = Tab1:CreateSection("Universal")

local Toggle = Tab1:CreateToggle({
   Name = "Auto Race",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(state)
   if state then
            _G.AR = true
        else
            _G.AR = false
        end
   end,
})

local Toggle = Tab1:CreateToggle({
   Name = "Auto Rebirths",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(state)
   if state then
           _G.loop = true
           while _G.loop == true do wait()
               game:GetService("ReplicatedStorage").rEvents.rebirthEvent:FireServer("rebirthRequest")
           end
        else
           _G.loop = false
        end
   end,
})

local Toggle = Tab1:CreateToggle({
   Name = "Auto Hoops V1",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(state)
   if state then
           _G.loop = true
           while _G.loop == true do wait()
               for i,v in pairs(game:GetService("Workspace").Hoops:GetChildren()) do
				firetouchinterest(v, game:GetService('Players').LocalPlayer.Character.HumanoidRootPart, 0)
				wait()
				firetouchinterest(v, game:GetService('Players').LocalPlayer.Character.HumanoidRootPart, 1)
				end
           end
        else
           _G.loop = false
        end
   end,
})

local Toggle = Tab1:CreateToggle({
   Name = "Auto Hoops V2",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(state)
   if state then
           _G.loop = true
           while _G.loop == true do wait()
              local children = workspace.Hoops:GetChildren()
                    for i, child in ipairs(children) do
                        if child.Name == "Hoop" then
                        child.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                    end    
                end 
           end
        else
           _G.loop = false
        end
   end,
})

local Button = Tab1:CreateButton({
   Name = "Enable Trades",
   Callback = function()
   local args = {

    [1] = "enableTrading"

}



game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("tradingEvent"):FireServer(unpack(args))

   end,
})

local Button = Tab1:CreateButton({
   Name = "Disable Trades",
   Callback = function()
   local args = {

    [1] = "disableTrading"

}



game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("tradingEvent"):FireServer(unpack(args))

   end,
})

local Section = Tab1:CreateSection("Main City")

local Toggle = Tab1:CreateToggle({
   Name = "Yellow Orbs",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(state)
   if state then
           _G.loop = true
           while _G.loop == true do wait()
               game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")

           end
        else
           _G.loop = false
        end
   end,
})
local Toggle = Tab1:CreateToggle({
   Name = "Red Orbs",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(state)
   if state then
           _G.loop = true
           while _G.loop == true do wait()
    game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
           
           end
        else
           _G.loop = false
        end
   end,
})

local Toggle = Tab1:CreateToggle({
   Name = "Gems",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(state)
   if state then
           _G.loop = true
           while _G.loop == true do wait()
         game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City")
      
           end
        else
           _G.loop = false
        end
   end,
})


local Section = Tab1:CreateSection("Snow City")

local Toggle = Tab1:CreateToggle({
   Name = "Yellow Orbs",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(state)
   if state then
           _G.loop = true
           while _G.loop == true do wait()
   game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City")
            
           end
        else
           _G.loop = false
        end
   end,
})
local Toggle = Tab1:CreateToggle({
   Name = "Red Orbs",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(state)
   if state then
           _G.loop = true
           while _G.loop == true do wait()
    game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City")
           
           end
        else
           _G.loop = false
        end
   end,
})

local Toggle = Tab1:CreateToggle({
   Name = "Gems",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(state)
   if state then
           _G.loop = true
           while _G.loop == true do wait()
         game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City")
      
           end
        else
           _G.loop = false
        end
   end,
})


local Section = Tab1:CreateSection("Magma City")

local Toggle = Tab1:CreateToggle({
   Name = "Yellow Orbs",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(state)
   if state then
           _G.loop = true
           while _G.loop == true do wait()
             game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City")
  
           end
        else
           _G.loop = false
        end
   end,
})
local Toggle = Tab1:CreateToggle({
   Name = "Red Orbs",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(state)
   if state then
           _G.loop = true
           while _G.loop == true do wait()
               game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City")

           end
        else
           _G.loop = false
        end
   end,
})

local Toggle = Tab1:CreateToggle({
   Name = "Gems",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(state)
   if state then
           _G.loop = true
           while _G.loop == true do wait()
               game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City")

           end
        else
           _G.loop = false
        end
   end,
})

-- // Configure Tab2 \\ --
local Section = Tab2:CreateSection("Space")

local Toggle = Tab2:CreateToggle({
   Name = "Yellow Orbs",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(state)
   if state then
           _G.loop = true
           while _G.loop == true do wait()
              game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space") 
 
           end
        else
           _G.loop = false
        end
   end,
})

local Toggle = Tab2:CreateToggle({
   Name = "Red Orbs",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(state)
   if state then
           _G.loop = true
           while _G.loop == true do wait()
     game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space") 
          
           end
        else
           _G.loop = false
        end
   end,
})

local Toggle = Tab2:CreateToggle({
   Name = "Gems",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(state)
   if state then
           _G.loop = true
           while _G.loop == true do wait()
  game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space") 
             
           end
        else
           _G.loop = false
        end
   end,
})

local Section = Tab2:CreateSection("Desert")

local Toggle = Tab2:CreateToggle({
   Name = "Yellow Orbs",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(state)
   if state then
           _G.loop = true
           while _G.loop == true do wait()
        game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert") 
       
           end
        else
           _G.loop = false
        end
   end,
})
local Toggle = Tab2:CreateToggle({
   Name = "Red Orbs",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(state)
   if state then
           _G.loop = true
           while _G.loop == true do wait()
               game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert") 

           end
        else
           _G.loop = false
        end
   end,
})

local Toggle = Tab2:CreateToggle({
   Name = "Gems",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(state)
   if state then
           _G.loop = true
           while _G.loop == true do wait()
               game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert") 

           end
        else
           _G.loop = false
        end
   end,
})

-- // Configure Tab3 \\ --
local Section = Tab3:CreateSection("Main World")

local Toggle = Tab3:CreateToggle({
   Name = "Red Crystal",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(state)
   if state then
           _G.loop = true
           while _G.loop == true do wait()
               game:GetService('ReplicatedStorage').rEvents.openCrystalRemote:InvokeServer("openCrystal", "Red Crystal")
           end
        else
           _G.loop = false
        end
   end,
})

local Toggle = Tab3:CreateToggle({
   Name = "Blue Crystal",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(state)
   if state then
           _G.loop = true
           while _G.loop == true do wait()
               game:GetService('ReplicatedStorage').rEvents.openCrystalRemote:InvokeServer("openCrystal", "Blue Crystal")
           end
        else
           _G.loop = false
        end
   end,
})

local Toggle = Tab3:CreateToggle({
   Name = "Purple Crystal",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(state)
   if state then
           _G.loop = true
           while _G.loop == true do wait()
               game:GetService('ReplicatedStorage').rEvents.openCrystalRemote:InvokeServer("openCrystal", "Purple Crystal")
           end
        else
           _G.loop = false
        end
   end,
})

local Toggle = Tab3:CreateToggle({
   Name = "Yellow Crystal",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(state)
   if state then
           _G.loop = true
           while _G.loop == true do wait()
               game:GetService('ReplicatedStorage').rEvents.openCrystalRemote:InvokeServer("openCrystal", "Yellow Crystal")
           end
        else
           _G.loop = false
        end
   end,
})

local Toggle = Tab3:CreateToggle({
   Name = "Lightning Crystal",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(state)
   if state then
           _G.loop = true
           while _G.loop == true do wait()
               game:GetService('ReplicatedStorage').rEvents.openCrystalRemote:InvokeServer("openCrystal", "Lightning Crystal")
           end
        else
           _G.loop = false
        end
   end,
})

local Toggle = Tab3:CreateToggle({
   Name = "Snow Crystal",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(state)
   if state then
           _G.loop = true
           while _G.loop == true do wait()
               game:GetService('ReplicatedStorage').rEvents.openCrystalRemote:InvokeServer("openCrystal", "Snow Crystal")
           end
        else
           _G.loop = false
        end
   end,
})

local Toggle = Tab3:CreateToggle({
   Name = "Lava Crystal",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(state)
   if state then
           _G.loop = true
           while _G.loop == true do wait()
               game:GetService('ReplicatedStorage').rEvents.openCrystalRemote:InvokeServer("openCrystal", "Lava Crystal")
           end
        else
           _G.loop = false
        end
   end,
})

local Toggle = Tab3:CreateToggle({
   Name = "Inferno Crystal",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(state)
   if state then
           _G.loop = true
           while _G.loop == true do wait()
               game:GetService('ReplicatedStorage').rEvents.openCrystalRemote:InvokeServer("openCrystal", "Inferno Crystal")
           end
        else
           _G.loop = false
        end
   end,
})

local Toggle = Tab3:CreateToggle({
   Name = "Electro Legends Crystal",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(state)
   if state then
           _G.loop = true
           while _G.loop == true do wait()
               game:GetService('ReplicatedStorage').rEvents.openCrystalRemote:InvokeServer("openCrystal", "Electro Legends Crystal")
           end
        else
           _G.loop = false
        end
   end,
})

local Section = Tab3:CreateSection("Space")

local Toggle = Tab3:CreateToggle({
   Name = "Space Crystal",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(state)
   if state then
           _G.loop = true
           while _G.loop == true do wait()
               game:GetService('ReplicatedStorage').rEvents.openCrystalRemote:InvokeServer("openCrystal", "Space Crystal")
           end
        else
           _G.loop = false
        end
   end,
})

local Toggle = Tab3:CreateToggle({
   Name = "Alien Crystal",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(state)
   if state then
           _G.loop = true
           while _G.loop == true do wait()
               game:GetService('ReplicatedStorage').rEvents.openCrystalRemote:InvokeServer("openCrystal", "Alien Crystal")
           end
        else
           _G.loop = false
        end
   end,
})


local Section = Tab3:CreateSection("Desert")

local Toggle = Tab3:CreateToggle({
   Name = "Desert Crystal",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(state)
   if state then
           _G.loop = true
           while _G.loop == true do wait()
               game:GetService('ReplicatedStorage').rEvents.openCrystalRemote:InvokeServer("openCrystal", "Desert Crystal")
           end
        else
           _G.loop = false
        end
   end,
})

local Toggle = Tab3:CreateToggle({
   Name = "Electro Crystal",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(state)
   if state then
           _G.loop = true
           while _G.loop == true do wait()
               game:GetService('ReplicatedStorage').rEvents.openCrystalRemote:InvokeServer("openCrystal", "Electro Crystal")
           end
        else
           _G.loop = false
        end
   end,
})

-- // Configure Tab4 \\ --
local Section = Tab4:CreateSection("Teleports")

local Button = Tab4:CreateButton({
   Name = "Main City",
   Callback = function()
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9682.98828, 74.8522873, 3099.03394, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
   end,
})

local Button = Tab4:CreateButton({
   Name = "Snow City",
   Callback = function()
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9676.13867, 74.8522873, 3782.69385, 0, 0, -1, 0, 1, 0, 1, 0, 0)
   end,
})

local Button = Tab4:CreateButton({
   Name = "Magma City",
   Callback = function()
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-11054.9688, 232.791656, 4898.62842, -0.0872479677, 0.000158954252, -0.996186614, -0.00054083002, 0.999999821, 0.00020692969, 0.996186495, 0.000556821818, -0.0872478485)
   end,
})

local Button = Tab4:CreateButton({
   Name = "Legends Highway",
   Callback = function()
     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-13098.8711, 232.791656, 5907.62793, -0.0872479677, 0.000158954252, -0.996186614, -0.00054083002, 0.999999821, 0.00020692969, 0.996186495, 0.000556821818, -0.0872478485)  
   end,
})

-- // Configure Tab5 \\ --
local Section = Tab5:CreateSection("Basic Pets")

local Toggle = Tab5:CreateToggle({
   Name = "Red Kitty",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(state)
   if state then
           _G.loop = true
           while _G.loop == true do wait()
               local args = {

    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Red Kitty")

}



game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))

           end
        else
           _G.loop = false
        end
   end,
})

local Toggle = Tab5:CreateToggle({
   Name = "Red Bunny",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(state)
   if state then
           _G.loop = true
           while _G.loop == true do wait()
               local args = {

    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Red Bunny")

}



game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))

           end
        else
           _G.loop = false
        end
   end,
})

local Toggle = Tab5:CreateToggle({
   Name = "Blue Bunny",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(state)
   if state then
           _G.loop = true
           while _G.loop == true do wait()
               local args = {

    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Blue Bunny")

}



game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))

           end
        else
           _G.loop = false
        end
   end,
})

local Toggle = Tab5:CreateToggle({
   Name = "Silver Dog",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(state)
   if state then
           _G.loop = true
           while _G.loop == true do wait()
               local args = {

    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Silver Dog")

}



game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))


           end
        else
           _G.loop = false
        end
   end,
})

local Toggle = Tab5:CreateToggle({
   Name = "Yellow Squeak",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(state)
   if state then
           _G.loop = true
           while _G.loop == true do wait()
               local args = {

    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Yellow Squeak")
}



game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))


           end
        else
           _G.loop = false
        end
   end,
})


local Section = Tab5:CreateSection("Advanced Pets")

local Toggle = Tab5:CreateToggle({
   Name = "Green Vampy",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(state)
   if state then
           _G.loop = true
           while _G.loop == true do wait()
               local args = {

    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Green Vampy")
}



game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))


           end
        else
           _G.loop = false
        end
   end,
})

local Toggle = Tab5:CreateToggle({
   Name = "Dark Golem",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(state)
   if state then
           _G.loop = true
           while _G.loop == true do wait()
              local args = {

    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Dark Golem")
}



game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
 
           end
        else
           _G.loop = false
        end
   end,
})

local Toggle = Tab5:CreateToggle({
   Name = "Pink Butterfly",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(state)
   if state then
           _G.loop = true
           while _G.loop == true do wait()
               local args = {

    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Pink Butterfly")
}



game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))

           end
        else
           _G.loop = false
        end
   end,
})

local Toggle = Tab5:CreateToggle({
   Name = "Yellow Butterfly",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(state)
   if state then
           _G.loop = true
           while _G.loop == true do wait()
               local args = {

    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Yellow Butterfly")
}



game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))


           end
        else
           _G.loop = false
        end
   end,
})

local Toggle = Tab5:CreateToggle({
   Name = "Green Golem",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(state)
   if state then
           _G.loop = true
           while _G.loop == true do wait()
              local args = {

    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Green Golem")
}



game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
 
           end
        else
           _G.loop = false
        end
   end,
})

local Section = Tab5:CreateSection("Rare Pets")

local Toggle = Tab5:CreateToggle({
   Name = "Purple Pegasus",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(state)
   if state then
           _G.loop = true
           while _G.loop == true do wait()
              local args = {

    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Purple Pegasus")
}



game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))

 
           end
        else
           _G.loop = false
        end
   end,
})

local Toggle = Tab5:CreateToggle({
   Name = "Golden Angel",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(state)
   if state then
           _G.loop = true
           while _G.loop == true do wait()
               local args = {

    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Golden Angel")
}



game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))

           end
        else
           _G.loop = false
        end
   end,
})

local Toggle = Tab5:CreateToggle({
   Name = "Orange Pegasus",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(state)
   if state then
           _G.loop = true
           while _G.loop == true do wait()
               local args = {

    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Orange Pegasus")
}



game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))

           end
        else
           _G.loop = false
        end
   end,
})

local Toggle = Tab5:CreateToggle({
   Name = "Orange Falcon",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(state)
   if state then
           _G.loop = true
           while _G.loop == true do wait()
               local args = {

    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Orange Falcon")
}



game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))

           end
        else
           _G.loop = false
        end
   end,
})

local Section = Tab5:CreateSection("Epic Pets")

local Toggle = Tab5:CreateToggle({
   Name = "Golden Pheonix",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(state)
   if state then
           _G.loop = true
           while _G.loop == true do wait()
               local args = {

    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Golden Pheonix")
}



game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))


           end
        else
           _G.loop = false
        end
   end,
})

local Toggle = Tab5:CreateToggle({
   Name = "Green Firecaster",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(state)
   if state then
           _G.loop = true
           while _G.loop == true do wait()
               local args = {

    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Green Firecaster")
}



game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))


           end
        else
           _G.loop = false
        end
   end,
})

local Toggle = Tab5:CreateToggle({
   Name = "White Pheonix",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(state)
   if state then
           _G.loop = true
           while _G.loop == true do wait()
               local args = {

    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("White Pheonix")
}



game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))

           end
        else
           _G.loop = false
        end
   end,
})

local Toggle = Tab5:CreateToggle({
   Name = "Blue Firecaster",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(state)
   if state then
           _G.loop = true
           while _G.loop == true do wait()
               local args = {

    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Blue Firecaster")
}



game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))


           end
        else
           _G.loop = false
        end
   end,
})

local Toggle = Tab5:CreateToggle({
   Name = "Red Pheonix",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(state)
   if state then
           _G.loop = true
           while _G.loop == true do wait()
               local args = {

    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Red Pheonix")
}



game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))

           end
        else
           _G.loop = false
        end
   end,
})

local Toggle = Tab5:CreateToggle({
   Name = "Red Firecaster",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(state)
   if state then
           _G.loop = true
           while _G.loop == true do wait()
              local args = {

    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Red Firecaster")
}



game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))
 
           end
        else
           _G.loop = false
        end
   end,
})

local Section = Tab5:CreateSection("Unique/Omega Pets")

local Toggle = Tab5:CreateToggle({
   Name = "Flaming Hedgehog",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(state)
   if state then
           _G.loop = true
           while _G.loop == true do wait()
               local args = {

    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Flaming Hedgehog")
}



game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))


           end
        else
           _G.loop = false
        end
   end,
})

local Toggle = Tab5:CreateToggle({
   Name = "Dark Soul Birdie",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(state)
   if state then
           _G.loop = true
           while _G.loop == true do wait()
               local args = {

    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Dark Soul Birdie")
}



game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))

           end
        else
           _G.loop = false
        end
   end,
})

local Toggle = Tab5:CreateToggle({
   Name = "Eternal Nebula Dragon",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(state)
   if state then
           _G.loop = true
           while _G.loop == true do wait()
               local args = {

    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Eternal Nebula Dragon")
}



game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))


           end
        else
           _G.loop = false
        end
   end,
})

local Toggle = Tab5:CreateToggle({
   Name = "Hypersonic Pegasus",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(state)
   if state then
           _G.loop = true
           while _G.loop == true do wait()
               local args = {

    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Hypersonic Pegasus")
}



game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))

           end
        else
           _G.loop = false
        end
   end,
})

local Toggle = Tab5:CreateToggle({
   Name = "Shadows Edge Kitty",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(state)
   if state then
           _G.loop = true
           while _G.loop == true do wait()
               local args = {

    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Shadows Edge Kitty")
}



game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))


           end
        else
           _G.loop = false
        end
   end,
})

local Toggle = Tab5:CreateToggle({
   Name = "Soul Fusion Dog",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(state)
   if state then
           _G.loop = true
           while _G.loop == true do wait()
               local args = {

    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Soul Fusion Dog")
}



game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))


           end
        else
           _G.loop = false
        end
   end,
})

local Toggle = Tab5:CreateToggle({
   Name = "Ultimate Overdrive Bunny",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(state)
   if state then
           _G.loop = true
           while _G.loop == true do wait()
               local args = {

    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild("Ultimate Overdrive Bunny")
}



game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args))

           end
        else
           _G.loop = false
        end
   end,
})


-- // Configure Tab6 \\ --
local Section = Tab6:CreateSection("Player")

local Input = Tab6:CreateInput({
   Name = "Walk Speed",
   PlaceholderText = "",
   RemoveTextAfterFocusLost = false,
   Callback = function(pws)
 game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = pws
   end,
})

local Input = Tab6:CreateInput({
   Name = "Jump Power",
   PlaceholderText = "",
   RemoveTextAfterFocusLost = false,
   Callback = function(pjp)
 game.Players.LocalPlayer.Character.Humanoid.JumpPower = pjp
   end,
})

local Input = Tab6:CreateInput({
   Name = "Hip Height",
   PlaceholderText = "",
   RemoveTextAfterFocusLost = false,
   Callback = function(phh)
 game.Players.LocalPlayer.Character.Humanoid.HipHeight = phh     
   end,
})

local Input = Tab6:CreateInput({
   Name = "Gravity",
   PlaceholderText = "",
   RemoveTextAfterFocusLost = false,
   Callback = function(pg)
 game.Workspace.Gravity = pg  
   end,
})

local Section = Tab6:CreateSection("Game")

local Button = Tab6:CreateButton({
   Name = "Anti Kick",
   Callback = function()
       loadstring(game:HttpGet("https://pastebin.com/raw/FPfaukXN"))()
   end,
})

local Button = Tab6:CreateButton({
   Name = "Low Graphics",
   Callback = function()
       loadstring(game:HttpGet("https://pastebin.com/raw/8QZGBLW8"))()
   end,
})

local Button = Tab6:CreateButton({
   Name = "RTX",
   Callback = function()
       loadstring(game:HttpGet("https://pastebin.com/raw/vmjZ4UY8"))() 
   end,
})

local Section = Tab6:CreateSection("Credits")

Tab6:CreateLabel("Discord Tag")

local Button = Tab6:CreateButton({
   Name = "Copy",
   Callback = function()
       setclipboard("ThatGlitches#0676")
   end,
})

Tab6:CreateLabel("Discord Server")

local Button = Tab6:CreateButton({
   Name = "Copy",
   Callback = function()
       setclipboard("https://discord.gg/UnjnNVx6Tp")
   end,
})

Tab6:CreateLabel("YouTube Channel")

local Button = Tab6:CreateButton({
   Name = "Copy",
   Callback = function()
       setclipboard("https://youtube.com/@thatglitches")
   end,
})

Tab6:CreateLabel("Second YouTube Channel")

local Button = Tab6:CreateButton({
   Name = "Copy",
   Callback = function()
       setclipboard("https://youtube.com/@oneandonlyspeeddevil")
   end,
})
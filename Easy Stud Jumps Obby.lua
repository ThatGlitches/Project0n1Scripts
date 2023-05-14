-- // Booting Library \\ --
local library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()

game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "0n1 Hub",
	Text = "Easy Stud Jumps Obby... Loaded!"
})

-- // Functions \\ --
local colors = {
    SchemeColor = Color3.fromRGB(255,75,69),
    Background = Color3.fromRGB(76,76,76 ),
    Header = Color3.fromRGB(255,75,69),
    TextColor = Color3.fromRGB(255,255,255),
    ElementColor = Color3.fromRGB(41,41,41)
}

local function fireproximityprompt(Obj, Amount, Skip) 
     if Obj.ClassName == "ProximityPrompt" then  
         Amount = Amount or 1 
         local PromptTime = Obj.HoldDuration 
         if Skip then  
             Obj.HoldDuration = 0 
         end 
         for i = 1, Amount do  
             Obj:InputHoldBegin() 
             if not Skip then  
                 wait(Obj.HoldDuration) 
             end 
             Obj:InputHoldEnd() 
         end 
         Obj.HoldDuration = PromptTime 
     else  
         error("userdata<ProximityPrompt> expected") 
     end 
 end
 
-- // Creating Window \\ --
local window = library.CreateLib("0n1 Hub | V5.1", colors)


-- // Define Tabs \\ --
local tab1 = window:NewTab("Information")
local tab2 = window:NewTab("Auto Farms")
local tab3 = window:NewTab("Pets")
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
local section3 = tab2:NewSection("Spawn World")

section3:NewButton("Complete Obby", "", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(200,1266,-871))
    wait(0.6)
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(200,1266,-987))
    wait(0.2)
    fireproximityprompt(workspace.RebirthButtons.Spawn.ProximityPrompt, 1, true)
end)

section3:NewToggle("Auto Complete Obby", "", function(state)
 if state then
           _G.loop = true
           while _G.loop == true do wait()
           game.Players.LocalPlayer.Character:MoveTo(Vector3.new(200,1266,-871))
    wait(0.6)
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(200,1266,-987))
    wait(0.2)
    fireproximityprompt(workspace.RebirthButtons.Spawn.ProximityPrompt, 1, true)
           end
        else
           _G.loop = false
        end
end)

local section4 = tab2:NewSection("Candy World")

section4:NewButton("Complete Obby", "", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-3168,2480,-626))
    wait(0.6)
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-3168,2482,-655))
    wait(0.2)
    fireproximityprompt(workspace.RebirthButtons.Candy.ProximityPrompt, 1, true)
    wait(1)
end)

section4:NewToggle("Auto Complete Obby", "", function(state)
 
 if state then
           _G.loop = true
           while _G.loop == true do wait()
           game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-3168,2480,-626))
    wait(0.6)
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-3168,2482,-655))
    wait(0.2)
    fireproximityprompt(workspace.RebirthButtons.Candy.ProximityPrompt, 1, true)
    wait(1)
           end
        else
           _G.loop = false
        end
end)

-- // Define tab3 \\ --
local section5 = tab3:NewSection("Spawn World Eggs")

section5:NewToggle("Grass Egg", "", function(state)
 if state then
           _G.loop = true
           while _G.loop == true do wait()
           local args = {

    [1] = "Grass Egg",

    [2] = 1

}

 

game:GetService("ReplicatedStorage"):WaitForChild("RecodeRemotes"):WaitForChild("BuyEgg"):InvokeServer(unpack(args))   

           end
        else
           _G.loop = false
        end
end)

section5:NewToggle("Jungle Egg", "", function(state)
 if state then
           _G.loop = true
           while _G.loop == true do wait()
           local args = {

    [1] = "Jungle Egg",

    [2] = 1

}

 

game:GetService("ReplicatedStorage"):WaitForChild("RecodeRemotes"):WaitForChild("BuyEgg"):InvokeServer(unpack(args))             

           end
        else
           _G.loop = false
        end
end)

section5:NewToggle("Noob Egg", "", function(state)
 if state then
           _G.loop = true
           while _G.loop == true do wait()
           local args = {

    [1] = "Noob Egg",

    [2] = 1

}

 

game:GetService("ReplicatedStorage"):WaitForChild("RecodeRemotes"):WaitForChild("BuyEgg"):InvokeServer(unpack(args))              

           end
        else
           _G.loop = false
        end
end)

local section6 = tab3:NewSection("Candy World Eggs")

section6:NewToggle("Demonic Egg", "", function(state)
 if state then
           _G.loop = true
           while _G.loop == true do wait()
           local args = {

    [1] = "Demonic Egg",

    [2] = 1

}

 

game:GetService("ReplicatedStorage"):WaitForChild("RecodeRemotes"):WaitForChild("BuyEgg"):InvokeServer(unpack(args))

           end
        else
           _G.loop = false
        end
end)

section6:NewToggle("Hell Egg", "", function(state)
 if state then
           _G.loop = true
           while _G.loop == true do wait()
           local args = {

    [1] = "Hell Egg",

    [2] = 1

}

 

game:GetService("ReplicatedStorage"):WaitForChild("RecodeRemotes"):WaitForChild("BuyEgg"):InvokeServer(unpack(args))

           end
        else
           _G.loop = false
        end
end)

-- // Define tab4 \\ --
local section7 = tab4:NewSection("Player")

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

local section8 = tab4:NewSection("Game")

section8:NewButton("Anti Kick", "", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/FPfaukXN"))()
end)

section8:NewButton("Low Graphics", "", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/8QZGBLW8"))()
end)

section8:NewButton("RTX", "", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/vmjZ4UY8"))() 
end)
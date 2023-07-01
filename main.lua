local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Title of the library", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

OrionLib:MakeNotification({
	Name = "Started",
	Content = "Welcome to aky hub",
	Image = "rbxassetid://4483345998",
	Time = 5
})


--Variables

_G.autoClick = true;
_G.autoHatch = true;
_G.autoCraft = true;

--script


function autoClick()
    while _G.autoClick == true do 
        game:GetService('ReplicatedStorage').Events.Click3:FireServer()
       wait()
   end
end

function autoHatch()
    while _G.autoHatch == true do 
        local args = {
            [1] = "Basic",
            [2] = "Single"
        }
        game:GetService('ReplicatedStorage').Functions.Unbox:InvokeServer(unpack(args))
       wait()
   end
end


function autoClick()
    while _G._G.autoCraft == true do 
        game:GetService('ReplicatedStorage').Functions.Request:FireServer()
       wait()
   end
end

-- Tabs
local FarmTab = Window:MakeTab({
	Name = "Farm",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local EggsTab = Window:MakeTab({
	Name = "Eggs",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

-- Toggle

FarmTab:AddToggle({
	Name = "Autoclick",
	Default = false,
	Callback = function(Value)
		_G.autoClick = Value
        autoClick()
	end      
})

EggsTab:AddToggle({
	Name = "Auto hatch",
	Default = false,
	Callback = function(Value)
		_G.autoHatch = Value
        autoHatch()
	end      
})

EggsTab:AddToggle({
	Name = "Auto Craft",
	Default = false,
	Callback = function(Value)
		_G.autoCraft = Value
        autoCraft()
	end      
})









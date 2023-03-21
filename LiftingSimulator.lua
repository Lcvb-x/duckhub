function Muscle() 
    local args = {
        [1] = "GainMuscle"
    }
    game:GetService("ReplicatedStorage").RemoteEvent:FireServer(args)
    wait(0.8)
end
function SellMuscle()
    local args = {
        [1] = "SellMuscle"
    }
    game:GetService("ReplicatedStorage").RemoteEvent:FireServer(args)
    wait(5)
end
function Part() 
    NewPart = Instance.new("Part")
	NewPart.Parent = Workspace
    NewPart.Size = Vector3.new(1,0.5,1)
	NewPart.Anchored = true
	NewPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    return NewPart
end
speed = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed
jump = game.Players.LocalPlayer.Character.Humanoid.JumpPower
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()
local Window = Library.CreateLib("Lifting simulator hack", "RJTheme3")
local MuscleTab = Window:NewTab("Muscle")
local MuscleSection = MuscleTab:NewSection("Muscle")
local ctab = Window:NewTab("Character")
local csect = ctab:NewSection("Character")
local ct = Window:NewTab("Credits")
local cs = ct:NewSection("Credits")
cs:NewLabel("Script by Duck Hub")
cs:NewLabel("Want more scripts ?")
cs:NewLabel("Join to duck hub !")
cs:NewLabel("https://discord.gg/2JYcvwCeTJ")
cs:NewButton("Copy link to discord server", "Discord server", function()
    setclipboard(tostring("https://discord.gg/2JYcvwCeTJ"))
end)
Musclestate = false
sps = false
jps = false
csect:NewToggle("SpeedHack","SpeedHack toggle",function(state)
    if state then
        sps = true
        while sps do
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speed
            wait(0.05)
        end
    else
        sps = false
    end
end)
csect:NewSlider("WalkSpeed", "Speed", 1000, 0, function(s) 
    speed = s
end)
csect:NewToggle("JumpHack","JumpHack toggle",function(state)
    if state then
        jps = true
        while jps do
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = jump
            wait(0.005)
        end
    else
        jps = false
    end
end)
ifs = false

csect:NewSlider("JumpPower", "Jump", 1000, 0, function(s) 
    jump = s
end)
csect:NewToggle("Infinite Jump","Jump !",function(state)
    if state then
        ifs = true
        local p = Part()
        p.Transparency = 100
        while ifs do
            local Torso = game.Players.LocalPlayer.Character.HumanoidRootPart
            game.Players.LocalPlayer.Character.Humanoid.Jump = true
            p.CFrame = CFrame.new(Torso.CFrame.X, Torso.CFrame.Y - 2.55, Torso.CFrame.Z)
            wait(0.005)
        end
        p.CFrame = CFrame.new(-100,-2000,-100)
    else
        ifs = false
    end
end)
MuscleSection:NewToggle("Gain Muscle", "AutoMuscle", function(state)
    if state then
        Musclestate = true
        while Musclestate do
            Muscle()
        end

    else
       Musclestate = false
    end
end)
Sellstate = false
MuscleSection:NewToggle("Sell Muscle", "AutoSell",function(state)
    if state then
        Sellstate = true
        while Sellstate do
            SellMuscle()
        end
    
    else
        Sellstate = false
    end
end)

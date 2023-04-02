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
dj  = game.Players.LocalPlayer.Character.Humanoid.JumpPower
ds =  game.Players.LocalPlayer.Character.Humanoid.WalkSpeed

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()
local Window = Library.CreateLib("Hack for every obby", "RJTheme3")
local ctab = Window:NewTab("Character")
local csect = ctab:NewSection("Character")
local dd = ctab:NewSection("Default")
local m = Window:NewTab("Other")
local mm = m:NewSection("Other")
mm:NewButton("BTools","bottt",function()
    loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/BTools.txt"))()
end)
mih = false
mm:NewButton("Night/Day","ok",function()
    loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Night%20Time%20Toggle.txt"))()
end)
dd:NewButton("Reset Speed","No speed :(",function()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = ds
end)
dd:NewButton("Reset Jump","ok",function()
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = dj
end)
mm:NewButton("Block Head","ok",function()
    loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Blockhead.txt"))()
end)
local ct = Window:NewTab("Credits")
local cs = ct:NewSection("Credits")
cs:NewLabel("Script by Duck Hub")
cs:NewLabel("Want more scripts ?")
cs:NewLabel("Join to duck hub !")
cs:NewLabel("https://discord.gg/ASq2kcueru")
cs:NewButton("Copy link to discord server", "Discord server", function()
    setclipboard(tostring("https://discord.gg/ASq2kcueru"))
end)
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
            wait(0.05)
        end
    else
        jps = false
    end
end)
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
nfs = false
csect:NewToggle("Slow fall","Slow fall !",function(state)
    if state then
        nfs = true
        local p = Part()
        p.Transparency = 100
        while nfs do
            local Torso = game.Players.LocalPlayer.Character.HumanoidRootPart
            game.Players.LocalPlayer.Character.Humanoid.Jump = false
            p.CFrame = CFrame.new(Torso.CFrame.X, Torso.CFrame.Y - 3.3, Torso.CFrame.Z)
            wait(0.005)
        end
        p.CFrame = CFrame.new(-100,-2000,-100)
    else
        nfs = false
    end
end)

local ImGui = loadstring(game:HttpGet("https://raw.githubusercontent.com/wiIlow/imgui-rbx/main/main.lua", true))()

local Window = ImGui:Begin({
    Name = "Demo",
    Width = 530,
    Height = 400
})

Window:SliderInteger({
    Name = "JumpPower",
    Min = 50,
    Max = 100,
    Default = 50,
    OnChanged = function(value) 
        game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = value
    end
})

Window:End()
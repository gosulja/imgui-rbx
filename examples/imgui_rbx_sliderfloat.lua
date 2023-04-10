local ImGui = loadstring(game:HttpGet("https://raw.githubusercontent.com/wiIlow/imgui-rbx/main/main.lua", true))()

local Window = ImGui:Begin({
    Name = "Demo",
    Width = 530,
    Height = 400
})

Window:SliderFloat({
    Name = "WalkSpeed",
    Min = 16,
    Max = 100,
    Default = 16,
    OnChanged = function(value) 
        game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = value
    end
})

Window:End()
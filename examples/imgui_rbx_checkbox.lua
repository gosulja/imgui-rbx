local ImGui = loadstring(game:HttpGet("https://raw.githubusercontent.com/wiIlow/imgui-rbx/main/main.lua", true))()

local Window = ImGui:Begin({
    Name = "Demo",
    Width = 530,
    Height = 400
})

Window:CheckBox({
    Name = "Sit",
    Enabled = false,
    OnChanged = function(value) 
        game:GetService("Players").LocalPlayer.Character.Humanoid.Sit = value
    end
})

Window:End()
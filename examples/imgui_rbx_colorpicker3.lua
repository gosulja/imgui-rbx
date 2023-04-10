local ImGui = loadstring(game:HttpGet("https://raw.githubusercontent.com/wiIlow/imgui-rbx/main/main.lua", true))()

local Window = ImGui:Begin({
    Name = "Demo",
    Width = 530,
    Height = 400
})

Window:ColorPicker3({
    Name = "Color",
    DefaultColor = Color3.fromRGB(255, 0, 0),
    OnChanged = function(color)
        print(string.format("Color changed to: %s", tostring(color)))
    end
})

Window:End()
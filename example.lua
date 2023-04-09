local ImGui = loadstring(game:HttpGet("https://raw.githubusercontent.com/wiIlow/imgui-rbx/main/main.lua", true))()

local Window = ImGui:Begin({
    Name = "ColorPicker3 Example",
    Width = 500,
    Height = 350
})

local colorPicker = Window:ColorPicker3({
    Name = "Color picker 3",
    DefaultColor = Color3.fromRGB(34, 89, 6),
    OnChanged = function(clr) 
        print(tostring(clr))
    end
})

Window:Seperator()

Window:End()
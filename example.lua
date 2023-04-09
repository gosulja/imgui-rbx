local ImGui = loadstring(game:HttpGet("https://raw.githubusercontent.com/wiIlow/imgui-rbx/main/main.lua", true))()

local Window = ImGui:Begin({
    Name = "ImGui-rbx Example",
    Width = 550, -- if this value isn't given it'll set to a default,
    Height = 350, -- ^^
})

local Color = Window:ColorPicker3({
    Name = "Color picker 3",
    DefaultColor = Color3.fromRGB(200, 0 ,50),
    OnChanged = function(clr) 
        print(tostring(clr))
    end
})
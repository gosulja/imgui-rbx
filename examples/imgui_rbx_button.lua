local ImGui = loadstring(game:HttpGet("https://raw.githubusercontent.com/wiIlow/imgui-rbx/main/main.lua", true))()

local Window = ImGui:Begin({
    Name = "Demo",
    Width = 530,
    Height = 400
})

local i = 0
Window:Button("Button"):Connect(function()
    i += 1
    print(i)
end)

Window:End()
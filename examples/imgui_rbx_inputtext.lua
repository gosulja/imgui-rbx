local ImGui = loadstring(game:HttpGet("https://raw.githubusercontent.com/wiIlow/imgui-rbx/main/main.lua", true))()

local Window = ImGui:Begin({
    Name = "Demo",
    Width = 530,
    Height = 400
})

Window:InputText({
    Name = "Enter message",
    OnEnter = function(text) 
        print(text)
    end
})

Window:End()
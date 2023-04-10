-- This is very buggy and shouldn't be used yet

local ImGui = loadstring(game:HttpGet("https://raw.githubusercontent.com/wiIlow/imgui-rbx/main/main.lua", true))()

local Window = ImGui:Begin({
    Name = "Demo",
    Width = 530,
    Height = 400
})

Window:BeginMenuBar()
    
Window:BeginMenu("File")

Window:MenuItem({Menu="File",Name="Open",OnClick=function() print("Open selected") end})


Window:End()

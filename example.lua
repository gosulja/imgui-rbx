local ImGui = loadstring(game:HttpGet("https://raw.githubusercontent.com/wiIlow/imgui-rbx/main/main.lua", true))()

local Window = ImGui:Begin({
    Name = "Radio Example",
    Width = 500,
    Height = 350
})

local radios = Window:RadioButtons({
    Default = "Test 1",
    Buttons = {"Test 1", "Test 2", "Test 3"}
    
})

Window:Seperator()

Window:End()
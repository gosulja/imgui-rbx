local ImGui = loadstring(game:HttpGet("https://haste.powercord.dev/raw/cigaxalika", true))()

local Window = ImGui:Begin({
    Name = "Radio Example",
    Width = 500,
    Height = 350
})

local radios = Window:RadioButtons({
    Default = "Test 1",
    Buttons = {"Test 1", "Test 2", "Test 3"},
    OnChanged = function(x) print(x) end
})

Window:Seperator()

Window:End()
local ImGui = loadstring(game:HttpGet("https://raw.githubusercontent.com/wiIlow/imgui-rbx/main/main.lua", true))()

local Window = ImGui:Begin({
    Name = "Demo",
    Width = 530,
    Height = 400
})

local currentOption = ""

Window:RadioButtons({
    Default = "Closest",
    Buttons = {"Closest", "Threat", "Health"},
    OnChanged = function(radio, state) 
        if radio == "Closest" and state then
            print("Closest has been enabled!");
            currentOption = radio
        end
    end
})

Window:End()
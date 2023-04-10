local ImGui = loadstring(game:HttpGet("https://raw.githubusercontent.com/wiIlow/imgui-rbx/main/main.lua", true))()

local Window = ImGui:Begin({
    Name = "ImGui RBX Example",
    Width = 530,
    Height = 400
})

Window:Text("Test, hello 123");

Window:Seperator();

local i = 0
Window:Button("Button"):Connect(function()
    i += 1
    print(i)
end)

Window:Seperator();

Window:InputText({
    Name = "Enter name",
    OnEnter = function(text) 
        print(text)
    end
})

Window:Seperator();

Window:SliderFloat({
    Name = "WalkSpeed",
    Min = 16,
    Max = 100,
    Default = 16,
    OnChanged = function(value) 
        game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = value
    end
})

Window:Seperator();

Window:SliderInteger({
    Name = "JumpPower",
    Min = 50,
    Max = 100,
    Default = 50,
    OnChanged = function(value) 
        game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = value
    end
})

Window:Seperator();

Window:CheckBox({
    Name = "Sit",
    Enabled = false,
    OnChanged = function(value) 
        game:GetService("Players").LocalPlayer.Character.Humanoid.Sit = value
    end
})

Window:Seperator();

Window:ColorPicker3({
    Name = "Color",
    DefaultColor = Color3.fromRGB(255, 0, 0),
    OnChanged = function(color)
        print(string.format("Color changed to: %s", tostring(color)))
    end
})

Window:Seperator();

Window:RadioButtons({
    Default = "Closest",
    Buttons = {"Closest", "Threat", "Health"},
    OnChanged = function(radio, state) 
        
    end
})

Window:Seperator();

Window:End()
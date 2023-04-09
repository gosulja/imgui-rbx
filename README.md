# imgui rbx

A Dear ImGui clone for roblox.
`This is an alpha release of imgui-rbx, expect some bugs and more elements being added soon`

# Documentation
```lua
local ImGui = loadstring(game:HttpGet("https://raw.githubusercontent.com/wiIlow/imgui-rbx/main/main.lua", true))()
```

```lua
-- Creating the window
local Window = ImGui:Begin({
    Name = "ImGui-rbx Example",
    Width = 550, -- if this value isn't given it'll set to a default,
    Height = 350, -- ^^
})
```

```lua
-- Create components

-- Text
local Text = Window:Text("Text example, 123")

-- Button
local Button = Window:Button("Button")
Button:Connect(function()             -- Connect any function to the button
    print("Hello, world!")  
end)

-- Input
local Input = Window:InputText({
    Name = "Input text example",
    Callback = function(text) 
        print(text)         -- Will print the text whenever enter is pressed (or lost focus)
    end
})

-- Slider float
local Slider = Window:SliderFloat({
    Name = "Slider float example",
    Min = 0,
    Max = 1000,
    OnChanged = function(val) 
        print(string.format("Value changed to: %s", tostring(val)))
    end
})

-- Slider int
local Slider = Window:SliderInteger({
    Name = "Slider integer example",
    Min = 0,
    Max = 1000,
    OnChanged = function(val) 
        print(string.format("Value changed to: %s", tostring(val)))
    end
})

-- Checkbox
local Checkbox = Window:Checkbox({
    Enabled = false,
    OnChanged = function(val) 
        print(val)
    end
})

-- THIS IS NEEDED, it runs all functions which need to be executed last
Window:End()       
```


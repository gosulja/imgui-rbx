# ImGui RBX 

A Dear ImGui clone for roblox.
`This is an alpha release of imgui-rbx, expect some bugs and more elements being added soon`

Contact: `cdy#8803`

![Example](https://cdn.discordapp.com/attachments/1089941257117257731/1094674670030172290/image.png)

Resizing feature (gyazo made it look buggy)


![](https://user-images.githubusercontent.com/111649405/230788331-c3af0e11-5ac7-4fdb-8a85-427b66f63232.gif)


ColorPicker3 Example

![](https://user-images.githubusercontent.com/111649405/230796228-78263db7-4066-4ca8-aa1e-ce69865b44b6.gif)


Radio Toggle Example

![](https://user-images.githubusercontent.com/111649405/230799997-33fad637-3ed8-45ef-be07-4aaa7fa8132f.gif)


Final Example

![](https://user-images.githubusercontent.com/111649405/230902091-64b606ad-ff28-4b1e-8021-7617dee9dab1.gif)

## Current Theme: Legacy (More will be added soon)
Some info on themes: Themes will have different components and styles, for example there will be rounded elements and boxxed elements, and there will be custom themes and light themes for ImGui-RBX

# Progress

| Element Type              | Added | Functional | Bugs (?)             |
|---------------------------|-------|------------|----------------------|
| Themes                    | false | false      | only legacy theme    |
| Text / Label              | true  | true       | none                 |
| Checkbox / Toggle         | true  | true       | none                 |
| Slider/s (Integer, Float) | true  | semi       | none                 |
| Seperator                 | true  | true       | none                 |
| Color Picker              | true  | true       | added logic, fixings |
| Radio Toggles             | true  | true       | none                 |
| Input Text                | true  | true       | none                 |
| Plot Lines                | false | false      | none                 |
| Menu Bar                  | false | false      | none                 |
| Text Colored              | false | false      | none                 |
| Mini Windows              | false | false      | none                 |
| Drodown Lists             | false | false      | none                 |
| Sections                  | false | false      | none                 |


# Information 
To make it feel more like ImGui,
creating and handling elements will be very similar to ImGui in C++.
For example, handling and creating a button
```lua
if (Window:Button("Hello")) then 
    My_function();
end
```
Things like this will be implemented.

# Todo
Fix up code, make it more clean and readable.


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
local SliderFloat = Window:SliderFloat({
    Name = "Slider float example",
    Min = 0,
    Max = 1000,
    Default = 500,
    OnChanged = function(val) 
        print(string.format("Value changed to: %s", tostring(val)))
    end
})

-- Slider int
local SliderInteger = Window:SliderInteger({
    Name = "Slider integer example",
    Min = 0,
    Max = 1000,
    Default = 500,
    OnChanged = function(val) 
        print(string.format("Value changed to: %s", tostring(val)))
    end
})

-- Checkbox
local CheckBox = Window:CheckBox({
    Name = "Checkbox 1",
    Enabled = false,
    OnChanged = function(val) 
        print(val)
    end
})

-- THIS IS NEEDED, it runs all functions which need to be executed last, will probably be deprecated in later versions
Window:End()       
```


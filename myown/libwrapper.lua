local LibWrapper = {}

local originalLib = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

function LibWrapper:CreateWindow(name)
    local window = originalLib:CreateWindow({
        Name = name .. " /// [>::<] ^(>.1)^",
        LoadingTitle = name,
        LoadingSubtitle = "by benomat"
    })
    
    local windowWrapper = {}
    
    function windowWrapper:CreateTab(tabName)
        local tab = window:CreateTab(tabName)
        
        local tabWrapper = {}
        
        function tabWrapper:CreateButton(name, callback)
            local Button = tab:CreateButton({
                Name = name,
                Callback = callback
            })
            
            local buttonWrapper = {}
            function buttonWrapper:Set(name)
                Button:Set(name)
            end
            return buttonWrapper
        end
        tabWrapper.AddButton = tabWrapper.CreateButton
        function tabWrapper:CreateSection(name)
            local Section = tab:CreateSection(name)
            local sectionWrapper = {}
            function sectionWrapper:Set(name)
                Section:Set(name)
            end
            return sectionWrapper
        end
        tabWrapper.AddSection = tabWrapper.CreateSection
        function tabWrapper:CreateToggle(name, currentValue, callback)
            local Toggle = tab:CreateToggle({
                Name = name,
                CurrentValue = currentValue,
                Callback = callback
            })
            
            local toggleWrapper = {}
            function toggleWrapper:Set(value)
                Toggle:Set(value)
            end
            return toggleWrapper
        end
        tabWrapper.AddToggle = tabWrapper.CreateToggle

        function tabWrapper:CreateColorPicker(name, color, callback)
            local ColorPicker = tab:CreateColorPicker({
                Name = name,
                Color = color,
                Callback = callback
            })
            
            local colorPickerWrapper = {}
            function colorPickerWrapper:Set(color)
                ColorPicker:Set(color)
            end
            return colorPickerWrapper
        end
        tabWrapper.AddColorPicker = tabWrapper.CreateColorPicker

        function tabWrapper:CreateSlider(name, range, increment, suffix, currentValue, callback)
            local Slider = tab:CreateSlider({
                Name = name,
                Range = range,
                Increment = increment,
                Suffix = suffix,
                CurrentValue = currentValue,
                Callback = callback
            })
            
            local sliderWrapper = {}
            function sliderWrapper:Set(value)
                Slider:Set(value)
            end
            return sliderWrapper
        end
        tabWrapper.AddSlider = tabWrapper.CreateSlider

        function tabWrapper:CreateInput(name, placeholderText, removeTextAfterFocusLost, callback)
            local Input = tab:CreateInput({
                Name = name,
                PlaceholderText = placeholderText,
                RemoveTextAfterFocusLost = removeTextAfterFocusLost,
                Callback = callback
            })
            return Input
        end
        tabWrapper.AddInput = tabWrapper.CreateInput

        function tabWrapper:CreateDropdown(name, options, currentOption, multipleOptions, callback)
            local Dropdown = tab:CreateDropdown({
                Name = name,
                Options = options,
                CurrentOption = currentOption,
                MultipleOptions = multipleOptions,
                Callback = callback
            })
            
            local dropdownWrapper = {}
            function dropdownWrapper:Set(options)
                Dropdown:Set(options)
            end
            return dropdownWrapper
        end
        tabWrapper.AddDropdown = tabWrapper.CreateDropdown

        function tabWrapper:CreateKeybind(name, currentKeybind, holdToInteract, callback)
            local Keybind = tab:CreateKeybind({
                Name = name,
                CurrentKeybind = currentKeybind,
                HoldToInteract = holdToInteract,
                Callback = callback
            })
            
            local keybindWrapper = {}
            function keybindWrapper:Set(keybind)
                Keybind:Set(keybind)
            end
            return keybindWrapper
        end
        tabWrapper.AddKeybind = tabWrapper.CreateKeybind

        function tabWrapper:CreateLabel(name)
            local Label = tab:CreateLabel(name)
            
            local labelWrapper = {}
            function labelWrapper:Set(name)
                Label:Set(name)
            end
            return labelWrapper
        end
        tabWrapper.AddLabel = tabWrapper.CreateLabel

        function tabWrapper:CreateParagraph(title, content)
            local Paragraph = tab:CreateParagraph({
                Title = title,
                Content = content
            })
            
            local paragraphWrapper = {}
            function paragraphWrapper:Set(title, content)
                Paragraph:Set({Title = title, Content = content})
            end
            return paragraphWrapper
        end
        tabWrapper.AddParagraph = tabWrapper.CreateParagraph
        
        return tabWrapper
    end
    windowWrapper.AddTab = windowWrapper.CreateTab
    windowWrapper.AddPage = windowWrapper.CreateTab
    
    return windowWrapper
end

LibWrapper.AddWindow = LibWrapper.CreateWindow
LibWrapper.Load = LibWrapper.CreateWindow
return LibWrapper

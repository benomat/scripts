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

        function tabWrapper:CreateToggle(name, currentValue, flag, callback)
            local Toggle = tab:CreateToggle({
                Name = name,
                CurrentValue = currentValue,
                Flag = flag,
                Callback = callback
            })
            
            local toggleWrapper = {}
            function toggleWrapper:Set(value)
                Toggle:Set(value)
            end
            return toggleWrapper
        end

        function tabWrapper:CreateColorPicker(name, color, flag, callback)
            local ColorPicker = tab:CreateColorPicker({
                Name = name,
                Color = color,
                Flag = flag,
                Callback = callback
            })
            
            local colorPickerWrapper = {}
            function colorPickerWrapper:Set(color)
                ColorPicker:Set(color)
            end
            return colorPickerWrapper
        end

        function tabWrapper:CreateSlider(name, range, increment, suffix, currentValue, flag, callback)
            local Slider = tab:CreateSlider({
                Name = name,
                Range = range,
                Increment = increment,
                Suffix = suffix,
                CurrentValue = currentValue,
                Flag = flag,
                Callback = callback
            })
            
            local sliderWrapper = {}
            function sliderWrapper:Set(value)
                Slider:Set(value)
            end
            return sliderWrapper
        end

        function tabWrapper:CreateInput(name, placeholderText, removeTextAfterFocusLost, callback)
            local Input = tab:CreateInput({
                Name = name,
                PlaceholderText = placeholderText,
                RemoveTextAfterFocusLost = removeTextAfterFocusLost,
                Callback = callback
            })
            return Input
        end

        function tabWrapper:CreateDropdown(name, options, currentOption, multipleOptions, flag, callback)
            local Dropdown = tab:CreateDropdown({
                Name = name,
                Options = options,
                CurrentOption = currentOption,
                MultipleOptions = multipleOptions,
                Flag = flag,
                Callback = callback
            })
            
            local dropdownWrapper = {}
            function dropdownWrapper:Set(options)
                Dropdown:Set(options)
            end
            return dropdownWrapper
        end

        function tabWrapper:CreateKeybind(name, currentKeybind, holdToInteract, flag, callback)
            local Keybind = tab:CreateKeybind({
                Name = name,
                CurrentKeybind = currentKeybind,
                HoldToInteract = holdToInteract,
                Flag = flag,
                Callback = callback
            })
            
            local keybindWrapper = {}
            function keybindWrapper:Set(keybind)
                Keybind:Set(keybind)
            end
            return keybindWrapper
        end

        function tabWrapper:CreateLabel(name)
            local Label = tab:CreateLabel(name)
            
            local labelWrapper = {}
            function labelWrapper:Set(name)
                Label:Set(name)
            end
            return labelWrapper
        end

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
        
        return tabWrapper
    end
    
    return windowWrapper
end

return LibWrapper

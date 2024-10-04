local LibWrapper = {}

local originalLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/biggaboy212/Public-Resources/main/MacLib/maclib.lua"))()
local isMobile,ScreenSize = game:GetService("UserInputService").TouchEnabled, workspace.CurrentCamera.ViewportSize


function LibWrapper:CreateWindow(name)
    local window = originalLib:Window({
        Title = name .. " /// [>::<] ^(>.1)^",
        Subtitle = "by benomat",
        Size = (isMobile and UDim2.fromOffset(ScreenSize.X*.7, ScreenSize.Y*.7)) or UDim2.fromOffset(868, 650),
        DragStyle = (isMobile and 2) or 1,
        DisabledWindowControls = {},
        ShowUserInfo = true,
        Keybind = Enum.KeyCode.RightControl,
        AcrylicBlur = true,
    })

    local windowWrapper = {}
    function windowWrapper:TabGroup(tabGroupName)
        local tabGroup = window:TabGroup()
        local tabGroupWrapper = {}
        function tabGroupWrapper:CreateTab(tabName)
            local tab = tabGroup:Tab(tabName)

            local tabWrapper = {}
            function tabWrapper:CreateSection(side)
                local section=tab:Section({side=side})
                local sectionWrapper={}
                function sectionWrapper:CreateButton(name, callback)
                    local Button = section:Button({
                        Name = name,
                        Callback = callback
                    })

                    local buttonWrapper = {}
                    function buttonWrapper:Set(name)
                        Button:Set(name)
                    end
                    return buttonWrapper
                end
                sectionWrapper.AddButton = sectionWrapper.CreateButton
                function sectionWrapper:CreateSection(name)
                    local Section = section:Section(name)
                    local sectionWrapper = {}
                    function sectionWrapper:Set(name)
                        Section:Set(name)
                    end
                    return sectionWrapper
                end
                sectionWrapper.AddSection = sectionWrapper.CreateSection
                function sectionWrapper:CreateToggle(name, currentValue, callback)
                    local Toggle = section:Toggle({
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
                sectionWrapper.AddToggle = sectionWrapper.CreateToggle

                function sectionWrapper:CreateColorPicker(name, color, callback)
                    local ColorPicker = section:ColorPicker({
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
                sectionWrapper.AddColorPicker = sectionWrapper.CreateColorPicker

                function sectionWrapper:CreateSlider(name, range, increment, suffix, currentValue, callback)
                    local Slider = section:Slider({
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
                sectionWrapper.AddSlider = sectionWrapper.CreateSlider

                function sectionWrapper:CreateInput(name, placeholderText, removeTextAfterFocusLost, callback)
                    local Input = section:Input({
                        Name = name,
                        PlaceholderText = placeholderText,
                        RemoveTextAfterFocusLost = removeTextAfterFocusLost,
                        Callback = callback
                    })
                    return Input
                end
                sectionWrapper.AddInput = sectionWrapper.CreateInput

                function sectionWrapper:CreateDropdown(name, options, currentOption, multipleOptions, callback)
                    local Dropdown = section:Dropdown({
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
                sectionWrapper.AddDropdown = sectionWrapper.CreateDropdown

                function sectionWrapper:CreateKeybind(name, currentKeybind, holdToInteract, callback)
                    local Keybind = section:Keybind({
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
                sectionWrapper.AddKeybind = sectionWrapper.CreateKeybind

                function sectionWrapper:CreateLabel(name)
                    local Label = section:Label(name)

                    local labelWrapper = {}
                    function labelWrapper:Set(name)
                        Label:Set(name)
                    end
                    return labelWrapper
                end
                sectionWrapper.AddLabel = sectionWrapper.CreateLabel

                function sectionWrapper:CreateParagraph(title, content)
                    local Paragraph = section:Paragraph({
                        Title = title,
                        Content = content
                    })

                    local paragraphWrapper = {}
                    function paragraphWrapper:Set(title, content)
                        Paragraph:Set({Title = title, Content = content})
                    end
                    return paragraphWrapper
                end
                sectionWrapper.AddParagraph = sectionWrapper.CreateParagraph
            end
            return tabWrapper
        end
        return tabGroupWrapper
    end
    windowWrapper.AddTab = windowWrapper.CreateTab
    windowWrapper.AddPage = windowWrapper.CreateTab
    return windowWrapper
end

LibWrapper.AddWindow = LibWrapper.CreateWindow
LibWrapper.Load = LibWrapper.CreateWindow
return LibWrapper

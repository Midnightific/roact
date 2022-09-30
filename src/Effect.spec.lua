--// Initialization

local TweenService = game:GetService("TweenService")

local Module = {}
Module.__index = Module

Module.Themes = {
    ["Midnight"] = {
        BackgroundProperties = {
            BackgroundColor3 = Color3.fromRGB(30, 30, 30),
            BackgroundTransparency = 0,
        },

        TextProperties = {
            TextColor3 = Color3.fromRGB(255, 255, 255),
            TextSize = 14,
            TextFont = Enum.Font.SourceSans,
            TextTransparency = 0,
        }
    },

    ["Fire"] = {
        BackgroundProperties = {
            BackgroundColor3 = Color3.fromRGB(207, 92, 54),
            BackgroundTransparency = 0,
        },

        TextProperties = {
            TextColor3 = Color3.fromRGB(),
            TextSize = 14,
            TextFont = Enum.Font.SourceSans,
            TextTransparency = 0,
        }
    },

    ["Cosmic"] = {
        BackgroundProperties = {
            BackgroundColor3 = Color3.fromRGB(47, 24, 71),
            BackgroundTransparency = 0,
        },

        TextProperties = {
            TextColor3 = Color3.fromRGB(),
            TextSize = 14,
            TextFont = Enum.Font.SourceSans,
            TextTransparency = 0,
        }
    },

    ["Ocean"] = {
        BackgroundProperties = {
            BackgroundColor3 = Color3.fromRGB(8, 103, 136),
            BackgroundTransparency = 0,
        },

        TextProperties = {
            TextColor3 = Color3.fromRGB(),
            TextSize = 14,
            TextFont = Enum.Font.SourceSans,
            TextTransparency = 0,
        }
    },

    ["Slate"] = {
        BackgroundProperties = {
            BackgroundColor3 = Color3.fromRGB(103, 125, 183),
            BackgroundTransparency = 0,
        },

        TextProperties = {
            TextColor3 = Color3.fromRGB(),
            TextSize = 14,
            TextFont = Enum.Font.SourceSans,
            TextTransparency = 0,
        },
    },
}



--// Functions

function Module.ColorElement(Element, Duration, TargetColor)
    local TweenInfo = TweenInfo.new(Duration, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)
    local Tween = TweenService:Create(Element, TweenInfo, {Color = TargetColor})

    Tween:Play()
end

function Module.ShakeElement(Element, Duration, TargetPosition)
    local TweenInfo = TweenInfo.new(Duration, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)
    local Tween = TweenService:Create(Element, TweenInfo, {Position = TargetPosition})

    Tween:Play()
end

function Module.SlideElement(Element, Duration, TargetPosition)
    local TweenInfo = TweenInfo.new(Duration, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)
    local Tween = TweenService:Create(Element, TweenInfo, {Position = TargetPosition})

    Tween:Play()
end

function Module.FadeIn(Element, Duration)
    local TweenInfo = TweenInfo.new(Duration, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)
    local Tween = TweenService:Create(Element, TweenInfo, {Transparency = 0})

    Tween:Play()
end

function Module.Fadeout(Element, Duration)
    local TweenInfo = TweenInfo.new(Duration, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)
    local Tween = TweenService:Create(Element, TweenInfo, {Transparency = 1})

    Tween:Play()
end

function Module.ApplyTheme(Element, Theme)
    local BackgroundProperties = Module.Themes[Theme].BackgroundProperties
    local TextProperties = Module.Themes[Theme].TextProperties

    Element.BackgroundColor3 = BackgroundProperties.BackgroundColor3
    Element.BackgroundTransparency = BackgroundProperties.BackgroundTransparency

    Element.TextColor3 = TextProperties.TextColor3
    Element.TextSize = TextProperties.TextSize
    Element.TextFont = TextProperties.TextFont
    Element.TextTransparency = TextProperties.TextTransparency
end

return Module
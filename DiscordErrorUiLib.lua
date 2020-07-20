local errorui = {}

function errorui:Create(amount,options,callback)
    assert(amount ~= nil, "Amount needs to be passed as an argument")
    assert(type(amount) == "number", "Amount needs to be passed as an interger")

    assert(options ~= nil,"Options not found")
    assert(type(options) == "table","Options need to be a table")

    if amount == 1 then
        local errortitle = options.title
        local errordescription = options.description
        local buttontext = options.buttontext

        local ScreenGui = Instance.new("ScreenGui")
        local discorderror = Instance.new("ImageLabel")
        local Frame = Instance.new("ImageLabel")
        local e = Instance.new("Frame")
        local Error = Instance.new("TextLabel")
        local description = Instance.new("TextLabel")
        local confirm = Instance.new("TextButton")
        local TextButton_Roundify_4px = Instance.new("ImageLabel")
        local Drop_Shadow = Instance.new("ImageLabel")
        
        ScreenGui.Name = "discord_error"
        ScreenGui.Parent = game:GetService("CoreGui")

        discorderror.Name = "discorderror"
        discorderror.Parent = ScreenGui
        discorderror.AnchorPoint = Vector2.new(0.5, 0.5)
        discorderror.BackgroundColor3 = Color3.fromRGB(54, 57, 63)
        discorderror.BackgroundTransparency = 1.000
        discorderror.Position = UDim2.new(0.5, 0, -2, 0)
        discorderror.Size = UDim2.new(0, 415, 0, 162)
        discorderror.Image = "rbxassetid://3570695787"
        discorderror.ImageColor3 = Color3.fromRGB(54, 57, 63)
        discorderror.ScaleType = Enum.ScaleType.Slice
        discorderror.SliceCenter = Rect.new(100, 100, 100, 100)
        discorderror.SliceScale = 0.090
        
        Frame.Name = "Frame"
        Frame.Parent = discorderror
        Frame.BackgroundColor3 = Color3.fromRGB(47, 49, 54)
        Frame.BackgroundTransparency = 1.000
        Frame.Position = UDim2.new(0, 0, 0.639163435, 0)
        Frame.Size = UDim2.new(0, 415, 0, 58)
        Frame.Image = "rbxassetid://3570695787"
        Frame.ImageColor3 = Color3.fromRGB(47, 49, 54)
        Frame.ScaleType = Enum.ScaleType.Slice
        Frame.SliceCenter = Rect.new(100, 100, 100, 100)
        Frame.SliceScale = 0.090
        
        e.Name = "e"
        e.Parent = Frame
        e.BackgroundColor3 = Color3.fromRGB(47, 49, 54)
        e.BorderSizePixel = 0
        e.Size = UDim2.new(0, 415, 0, 9)
        
        Error.Name = "error"
        Error.Parent = discorderror
        Error.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Error.BackgroundTransparency = 1.000
        Error.Position = UDim2.new(0.25786525, 0, 0.0640367568, 0)
        Error.Size = UDim2.new(0, 200, 0, 35)
        Error.Font = Enum.Font.GothamBlack
        Error.Text = errortitle
        Error.TextColor3 = Color3.fromRGB(239, 239, 240)
        Error.TextSize = 14.000
        
        description.Name = "description"
        description.Parent = discorderror
        description.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        description.BackgroundTransparency = 1.000
        description.Position = UDim2.new(0.265094161, 0, 0.38764295, 0)
        description.Size = UDim2.new(0, 200, 0, 21)
        description.Font = Enum.Font.ArialBold
        description.Text = errordescription
        description.TextColor3 = Color3.fromRGB(193, 195, 197)
        description.TextSize = 14.000
        
        confirm.Name = "confirm"
        confirm.Parent = discorderror
        confirm.BackgroundColor3 = Color3.fromRGB(103, 123, 196)
        confirm.BackgroundTransparency = 1.000
        confirm.BorderSizePixel = 0
        confirm.Position = UDim2.new(0.267469883, 0, 0.725193083, 0)
        confirm.Size = UDim2.new(0, 200, 0, 29)
        confirm.ZIndex = 2
        confirm.Font = Enum.Font.Gotham
        confirm.Text = buttontext
        confirm.TextColor3 = Color3.fromRGB(239, 239, 240)
        confirm.TextSize = 24.000
        
        TextButton_Roundify_4px.Name = "TextButton_Roundify_4px"
        TextButton_Roundify_4px.Parent = confirm
        TextButton_Roundify_4px.Active = true
        TextButton_Roundify_4px.AnchorPoint = Vector2.new(0.5, 0.5)
        TextButton_Roundify_4px.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextButton_Roundify_4px.BackgroundTransparency = 1.000
        TextButton_Roundify_4px.Position = UDim2.new(0.5, 0, 0.5, 0)
        TextButton_Roundify_4px.Selectable = true
        TextButton_Roundify_4px.Size = UDim2.new(1, 0, 1, 0)
        TextButton_Roundify_4px.Image = "rbxassetid://3570695787"
        TextButton_Roundify_4px.ImageColor3 = Color3.fromRGB(103, 123, 196)
        TextButton_Roundify_4px.ScaleType = Enum.ScaleType.Slice
        TextButton_Roundify_4px.SliceCenter = Rect.new(100, 100, 100, 100)
        TextButton_Roundify_4px.SliceScale = 0.040
        
        Drop_Shadow.Name = "Drop_Shadow"
        Drop_Shadow.Parent = discorderror
        Drop_Shadow.AnchorPoint = Vector2.new(0.5, 0.5)
        Drop_Shadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Drop_Shadow.BackgroundTransparency = 1.000
        Drop_Shadow.Position = UDim2.new(0.5, 0, 0.5, 0)
        Drop_Shadow.Size = UDim2.new(1, 75, 1, 75)
        Drop_Shadow.ZIndex = -5
        Drop_Shadow.Image = "rbxassetid://1113384364"
        Drop_Shadow.ImageTransparency = 0.500
        Drop_Shadow.ScaleType = Enum.ScaleType.Slice
        Drop_Shadow.SliceCenter = Rect.new(50, 50, 50, 50)

        discorderror:TweenPosition(UDim2.new(0.5, 0, 0.5, 0),"Out","Quad",1,true)

        confirm.MouseButton1Click:Connect(function()
            callback(confirm.Text)
            discorderror:TweenPosition(UDim2.new(0.5, 0, -2, 0),"Out","Quad",1,true,function( ... )
                ScreenGui:Destroy()
            end)
        end)
    elseif amount == 2 then
        local discorderror_two = Instance.new("ScreenGui")
        local discorderror = Instance.new("ImageLabel")
        local Frame = Instance.new("ImageLabel")
        local e = Instance.new("Frame")
        local error = Instance.new("TextLabel")
        local description = Instance.new("TextLabel")
        local confirm = Instance.new("TextButton")
        local TextButton_Roundify_4px = Instance.new("ImageLabel")
        local Drop_Shadow = Instance.new("ImageLabel")
        local confirm_2 = Instance.new("TextButton")
        local TextButton_Roundify_4px_2 = Instance.new("ImageLabel")

        local errortitle = options.title
        local errordescription = options.description
        local buttontext1 = options.buttontext1
        local buttontext2 = options.buttontext2

        discorderror_two.Name = "discord_error"
        discorderror_two.Parent = game.CoreGui

        discorderror.Name = "discorderror"
        discorderror.Parent = discorderror_two
        discorderror.AnchorPoint = Vector2.new(0.5, 0.5)
        discorderror.BackgroundColor3 = Color3.fromRGB(54, 57, 63)
        discorderror.BackgroundTransparency = 1.000
        discorderror.Position = UDim2.new(0.5, 0, -2, 0)
        discorderror.Size = UDim2.new(0, 415, 0, 162)
        discorderror.Image = "rbxassetid://3570695787"
        discorderror.ImageColor3 = Color3.fromRGB(54, 57, 63)
        discorderror.ScaleType = Enum.ScaleType.Slice
        discorderror.SliceCenter = Rect.new(100, 100, 100, 100)
        discorderror.SliceScale = 0.090

        Frame.Name = "Frame"
        Frame.Parent = discorderror
        Frame.BackgroundColor3 = Color3.fromRGB(47, 49, 54)
        Frame.BackgroundTransparency = 1.000
        Frame.Position = UDim2.new(0, 0, 0.639163435, 0)
        Frame.Size = UDim2.new(0, 415, 0, 58)
        Frame.Image = "rbxassetid://3570695787"
        Frame.ImageColor3 = Color3.fromRGB(47, 49, 54)
        Frame.ScaleType = Enum.ScaleType.Slice
        Frame.SliceCenter = Rect.new(100, 100, 100, 100)
        Frame.SliceScale = 0.090

        e.Name = "e"
        e.Parent = Frame
        e.BackgroundColor3 = Color3.fromRGB(47, 49, 54)
        e.BorderSizePixel = 0
        e.Size = UDim2.new(0, 415, 0, 9)

        error.Name = "error"
        error.Parent = discorderror
        error.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        error.BackgroundTransparency = 1.000
        error.Position = UDim2.new(0.25786525, 0, 0.0640367568, 0)
        error.Size = UDim2.new(0, 200, 0, 35)
        error.Font = Enum.Font.GothamBlack
        error.Text = errortitle
        error.TextColor3 = Color3.fromRGB(239, 239, 240)
        error.TextSize = 14.000

        description.Name = "description"
        description.Parent = discorderror
        description.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        description.BackgroundTransparency = 1.000
        description.Position = UDim2.new(0.265094161, 0, 0.38764295, 0)
        description.Size = UDim2.new(0, 200, 0, 21)
        description.Font = Enum.Font.ArialBold
        description.Text = errordescription
        description.TextColor3 = Color3.fromRGB(193, 195, 197)
        description.TextSize = 14.000

        confirm.Name = "confirm"
        confirm.Parent = discorderror
        confirm.BackgroundColor3 = Color3.fromRGB(103, 123, 196)
        confirm.BackgroundTransparency = 1.000
        confirm.BorderSizePixel = 0
        confirm.Position = UDim2.new(0, 10, 0.725192964, 0)
        confirm.Size = UDim2.new(0, 180, 0, 29)
        confirm.ZIndex = 2
        confirm.Font = Enum.Font.Gotham
        confirm.Text = buttontext1
        confirm.TextColor3 = Color3.fromRGB(239, 239, 240)
        confirm.TextSize = 24.000

        TextButton_Roundify_4px.Name = "TextButton_Roundify_4px"
        TextButton_Roundify_4px.Parent = confirm
        TextButton_Roundify_4px.Active = true
        TextButton_Roundify_4px.AnchorPoint = Vector2.new(0.5, 0.5)
        TextButton_Roundify_4px.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextButton_Roundify_4px.BackgroundTransparency = 1.000
        TextButton_Roundify_4px.Position = UDim2.new(0.5, 0, 0.5, 0)
        TextButton_Roundify_4px.Selectable = true
        TextButton_Roundify_4px.Size = UDim2.new(1, 0, 1, 0)
        TextButton_Roundify_4px.Image = "rbxassetid://3570695787"
        TextButton_Roundify_4px.ImageColor3 = Color3.fromRGB(103, 123, 196)
        TextButton_Roundify_4px.ScaleType = Enum.ScaleType.Slice
        TextButton_Roundify_4px.SliceCenter = Rect.new(100, 100, 100, 100)
        TextButton_Roundify_4px.SliceScale = 0.040

        Drop_Shadow.Name = "Drop_Shadow"
        Drop_Shadow.Parent = discorderror
        Drop_Shadow.AnchorPoint = Vector2.new(0.5, 0.5)
        Drop_Shadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Drop_Shadow.BackgroundTransparency = 1.000
        Drop_Shadow.Position = UDim2.new(0.5, 0, 0.5, 0)
        Drop_Shadow.Size = UDim2.new(1, 75, 1, 75)
        Drop_Shadow.ZIndex = -5
        Drop_Shadow.Image = "rbxassetid://1113384364"
        Drop_Shadow.ImageTransparency = 0.500
        Drop_Shadow.ScaleType = Enum.ScaleType.Slice
        Drop_Shadow.SliceCenter = Rect.new(50, 50, 50, 50)

        confirm_2.Name = "confirm"
        confirm_2.Parent = discorderror
        confirm_2.BackgroundColor3 = Color3.fromRGB(103, 123, 196)
        confirm_2.BackgroundTransparency = 1.000
        confirm_2.BorderSizePixel = 0
        confirm_2.Position = UDim2.new(0.566265047, -10, 0.725192964, 0)
        confirm_2.Size = UDim2.new(0, 180, 0, 29)
        confirm_2.ZIndex = 2
        confirm_2.Font = Enum.Font.Gotham
        confirm_2.Text = buttontext2
        confirm_2.TextColor3 = Color3.fromRGB(239, 239, 240)
        confirm_2.TextSize = 24.000

        TextButton_Roundify_4px_2.Name = "TextButton_Roundify_4px"
        TextButton_Roundify_4px_2.Parent = confirm_2
        TextButton_Roundify_4px_2.Active = true
        TextButton_Roundify_4px_2.AnchorPoint = Vector2.new(0.5, 0.5)
        TextButton_Roundify_4px_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextButton_Roundify_4px_2.BackgroundTransparency = 1.000
        TextButton_Roundify_4px_2.Position = UDim2.new(0.5, 0, 0.5, 0)
        TextButton_Roundify_4px_2.Selectable = true
        TextButton_Roundify_4px_2.Size = UDim2.new(1, 0, 1, 0)
        TextButton_Roundify_4px_2.Image = "rbxassetid://3570695787"
        TextButton_Roundify_4px_2.ImageColor3 = Color3.fromRGB(103, 123, 196)
        TextButton_Roundify_4px_2.ScaleType = Enum.ScaleType.Slice
        TextButton_Roundify_4px_2.SliceCenter = Rect.new(100, 100, 100, 100)
        TextButton_Roundify_4px_2.SliceScale = 0.040

        discorderror:TweenPosition(UDim2.new(0.5, 0, 0.5, 0),"Out","Quad",1,true)

        confirm.MouseButton1Click:Connect(function()
            callback(confirm.Text)
            discorderror:TweenPosition(UDim2.new(0.5, 0, -2, 0),"Out","Quad",1,true,function( ... )
                discorderror_two:Destroy()
            end)
        end)

        confirm_2.MouseButton1Click:Connect(function()
            callback(confirm_2.Text)
            discorderror:TweenPosition(UDim2.new(0.5, 0, -2, 0),"Out","Quad",1,true,function( ... )
                discorderror_two:Destroy() 
            end)
        end)
    else
        local errortitle = options.title
        local errordescription = options.description
        local buttontext = options.buttontext
    
        local ScreenGui = Instance.new("ScreenGui")
        local discorderror = Instance.new("ImageLabel")
        local Frame = Instance.new("ImageLabel")
        local e = Instance.new("Frame")
        local Error = Instance.new("TextLabel")
        local description = Instance.new("TextLabel")
        local confirm = Instance.new("TextButton")
        local TextButton_Roundify_4px = Instance.new("ImageLabel")
        local Drop_Shadow = Instance.new("ImageLabel")
        
        ScreenGui.Name = "discord_error"
        ScreenGui.Parent = game:GetService("CoreGui")
    
        discorderror.Name = "discorderror"
        discorderror.Parent = ScreenGui
        discorderror.AnchorPoint = Vector2.new(0.5, 0.5)
        discorderror.BackgroundColor3 = Color3.fromRGB(54, 57, 63)
        discorderror.BackgroundTransparency = 1.000
        discorderror.Position = UDim2.new(0.5, 0, -2, 0)
        discorderror.Size = UDim2.new(0, 415, 0, 162)
        discorderror.Image = "rbxassetid://3570695787"
        discorderror.ImageColor3 = Color3.fromRGB(54, 57, 63)
        discorderror.ScaleType = Enum.ScaleType.Slice
        discorderror.SliceCenter = Rect.new(100, 100, 100, 100)
        discorderror.SliceScale = 0.090
        
        Frame.Name = "Frame"
        Frame.Parent = discorderror
        Frame.BackgroundColor3 = Color3.fromRGB(47, 49, 54)
        Frame.BackgroundTransparency = 1.000
        Frame.Position = UDim2.new(0, 0, 0.639163435, 0)
        Frame.Size = UDim2.new(0, 415, 0, 58)
        Frame.Image = "rbxassetid://3570695787"
        Frame.ImageColor3 = Color3.fromRGB(47, 49, 54)
        Frame.ScaleType = Enum.ScaleType.Slice
        Frame.SliceCenter = Rect.new(100, 100, 100, 100)
        Frame.SliceScale = 0.090
        
        e.Name = "e"
        e.Parent = Frame
        e.BackgroundColor3 = Color3.fromRGB(47, 49, 54)
        e.BorderSizePixel = 0
        e.Size = UDim2.new(0, 415, 0, 9)
        
        Error.Name = "error"
        Error.Parent = discorderror
        Error.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Error.BackgroundTransparency = 1.000
        Error.Position = UDim2.new(0.25786525, 0, 0.0640367568, 0)
        Error.Size = UDim2.new(0, 200, 0, 35)
        Error.Font = Enum.Font.GothamBlack
        Error.Text = errortitle
        Error.TextColor3 = Color3.fromRGB(239, 239, 240)
        Error.TextSize = 14.000
        
        description.Name = "description"
        description.Parent = discorderror
        description.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        description.BackgroundTransparency = 1.000
        description.Position = UDim2.new(0.265094161, 0, 0.38764295, 0)
        description.Size = UDim2.new(0, 200, 0, 21)
        description.Font = Enum.Font.ArialBold
        description.Text = errordescription
        description.TextColor3 = Color3.fromRGB(193, 195, 197)
        description.TextSize = 14.000
        
        confirm.Name = "confirm"
        confirm.Parent = discorderror
        confirm.BackgroundColor3 = Color3.fromRGB(103, 123, 196)
        confirm.BackgroundTransparency = 1.000
        confirm.BorderSizePixel = 0
        confirm.Position = UDim2.new(0.267469883, 0, 0.725193083, 0)
        confirm.Size = UDim2.new(0, 200, 0, 29)
        confirm.ZIndex = 2
        confirm.Font = Enum.Font.Gotham
        confirm.Text = buttontext
        confirm.TextColor3 = Color3.fromRGB(239, 239, 240)
        confirm.TextSize = 24.000
        
        TextButton_Roundify_4px.Name = "TextButton_Roundify_4px"
        TextButton_Roundify_4px.Parent = confirm
        TextButton_Roundify_4px.Active = true
        TextButton_Roundify_4px.AnchorPoint = Vector2.new(0.5, 0.5)
        TextButton_Roundify_4px.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextButton_Roundify_4px.BackgroundTransparency = 1.000
        TextButton_Roundify_4px.Position = UDim2.new(0.5, 0, 0.5, 0)
        TextButton_Roundify_4px.Selectable = true
        TextButton_Roundify_4px.Size = UDim2.new(1, 0, 1, 0)
        TextButton_Roundify_4px.Image = "rbxassetid://3570695787"
        TextButton_Roundify_4px.ImageColor3 = Color3.fromRGB(103, 123, 196)
        TextButton_Roundify_4px.ScaleType = Enum.ScaleType.Slice
        TextButton_Roundify_4px.SliceCenter = Rect.new(100, 100, 100, 100)
        TextButton_Roundify_4px.SliceScale = 0.040
        
        Drop_Shadow.Name = "Drop_Shadow"
        Drop_Shadow.Parent = discorderror
        Drop_Shadow.AnchorPoint = Vector2.new(0.5, 0.5)
        Drop_Shadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Drop_Shadow.BackgroundTransparency = 1.000
        Drop_Shadow.Position = UDim2.new(0.5, 0, 0.5, 0)
        Drop_Shadow.Size = UDim2.new(1, 75, 1, 75)
        Drop_Shadow.ZIndex = -5
        Drop_Shadow.Image = "rbxassetid://1113384364"
        Drop_Shadow.ImageTransparency = 0.500
        Drop_Shadow.ScaleType = Enum.ScaleType.Slice
        Drop_Shadow.SliceCenter = Rect.new(50, 50, 50, 50)
    
        discorderror:TweenPosition(UDim2.new(0.5, 0, 0.5, 0),"Out","Quad",1,true)
    
        confirm.MouseButton1Click:Connect(function()
            discorderror:TweenPosition(UDim2.new(0.5, 0, -2, 0),"Out","Quad",1,true,function( ... )
                ScreenGui:Destroy()
                callback(confirm.Text)
            end)
        end)
    end
end

return errorui
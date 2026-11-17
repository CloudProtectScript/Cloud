-- Derative fork from: https://scriptblox.com/script/Universal-Script-Name-spoofer-7497
-- Changed to include Display Name.

local Plr = game.Players.LocalPlayer
for Index, Value in next, game:GetDescendants() do 
    if Value.ClassName == "TextLabel" then 
        local has = string.find(Value.Text,Plr.Name) 
        if has then 
            local str = Value.Text:gsub(Plr.Name,name)
            Value.Text = str 
        end
        Value:GetPropertyChangedSignal("Text"):Connect(function()
            local str = Value.Text:gsub(Plr.Name,name)
            Value.Text = str 
        end)
    end
end

game.DescendantAdded:Connect(function(Value)
    if Value.ClassName == "TextLabel" then 
        local has = string.find(Value.Text,Plr.Name)
        Value:GetPropertyChangedSignal("Text"):Connect(function()
            local str = Value.Text:gsub(Plr.Name,name)
            Value.Text = str 
        end)
        if has then 
            local str = Value.Text:gsub(Plr.Name,name)
            Value.Text = str 
        end
        
    end
end)



for Index, Value in next, game:GetDescendants() do 
    if Value.ClassName == "TextLabel" then 
        local has = string.find(Value.Text,Plr.DisplayName) 
        if has then 
            local str = Value.Text:gsub(Plr.DisplayName,name)
            Value.Text = str 
        end
        Value:GetPropertyChangedSignal("Text"):Connect(function()
            local str = Value.Text:gsub(Plr.DisplayName,name)
            Value.Text = str 
        end)
    end
end

game.DescendantAdded:Connect(function(Value)
    if Value.ClassName == "TextLabel" then 
        local has = string.find(Value.Text,Plr.DisplayName)
        Value:GetPropertyChangedSignal("Text"):Connect(function()
            local str = Value.Text:gsub(Plr.DisplayName,name)
            Value.Text = str 
        end)
        if has then 
            local str = Value.Text:gsub(Plr.DisplayName,name)
            Value.Text = str 
        end
        
    end
end)

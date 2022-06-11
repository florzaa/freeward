local Players = game:GetService("Players")

Players.PlayerAdded:Connect(function(Human)
    if Human.DisplayName == nil then
        local message = Human.Name .. " joined the game"
        local to = "All"
        local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
        Event:FireServer(message, to)
    else
        local message = Human.DisplayName .. " joined the game"
        local to = "All"
        local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
        Event:FireServer(message, to)
    end
end)

Players.PlayerRemoving:Connect(function(Human)
    if Human.DisplayName == nil then
        local A_1 = Human.Name .. " left the game"
        local A_2 = "All"
        local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
        Event:FireServer(A_1, A_2)
    else
        local A_1 = Human.DisplayName .. " left the game"
        local A_2 = "All"
        local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
        Event:FireServer(A_1, A_2)
    end
end)

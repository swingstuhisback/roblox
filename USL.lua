getgenv().servicesTest = false -- Runs a fast test to see if all services work.

if not game:IsLoaded() then
    game.Loaded:Wait()
end

local Services = {
    CollectionService = game:GetService("CollectionService"),
    ContextActionService = game:GetService("ContextActionService"),
    CoreGui = game:GetService("CoreGui"),
    DataStoreService = game:GetService("DataStoreService"),
    Lighting = game:GetService("Lighting"),
    LocalPlayer = game:GetService("Players").LocalPlayer,
    MarketplaceService = game:GetService("MarketplaceService"),
    MemoryStoreService = game:GetService("MemoryStoreService"),
    MessagingService = game:GetService("MessagingService"),
    Players = game:GetService("Players"),
    ReplicatedFirst = game:GetService("ReplicatedFirst"),
    ReplicatedStorage = game:GetService("ReplicatedStorage"),
    RunService = game:GetService("RunService"),
    SoundService = game:GetService("SoundService"),
    TweenService = game:GetService("TweenService"),
    Workspace = game:GetService("Workspace")
}

local Utils = {}

Utils.lineBreak = function(amt) amt = amt or 1 for i = 1, amt do print("\n") end end

if servicesTest == true then print"running services test" Utils.lineBreak() for i, v in pairs(Services) do print(i .. " = " .. tostring(v)) end Utils.lineBreak() end

return { Services, Utils }

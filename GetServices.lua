local services = {}
local success, result = pcall(function()
    for _, service in ipairs(game:GetChildren()) do
        table.insert(services, service)
    end
end)

if not success then
    print("Failed to fetch services: " .. tostring(result))
    return
end

table.sort(services, function(a, b)
    return a.Name < b.Name
end)

local contents = ""
for _, service in ipairs(services) do
    contents = contents .. service.Name .. "\n"
end

success, result = pcall(function()
    writefile("servicesList.txt", contents)
end)

if not success then
    print("Failed to write services to file: " .. tostring(result))
else
    print("Successfully wrote all services to servicesList.txt | Check the 'workspace' folder of your executor!")
end

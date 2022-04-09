local ropelength = false
local playername = game.Players.LocalPlayer.Name
game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(key)
   if key == "q" then
for i,v in pairs(game:GetService("Workspace")[game:GetService("Players").LocalPlayer.Name .. '']["Grapple Hook"]:GetDescendants()) do
    if v.Name == "GrappleHookRope" then
        ropelength = true
        repeat 
        local grapple = game:GetService("Workspace")[game:GetService("Players").LocalPlayer.Name .. '']["Grapple Hook"].Handle.GrappleHookRope
        grapple.Length = grapple.Length - 2
        wait(0.00001)
        game.Players.LocalPlayer:GetMouse().KeyUp:Connect(function(key)
            if key == "q" then
                ropelength = false
            end
        end)
        until ropelength == false

end
end
end
end)


local ropelength = false
game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(key)
   if key == "e" then
for i,v in pairs(game:GetService("Workspace")[game:GetService("Players").LocalPlayer.Name .. '']["Grapple Hook"]:GetDescendants()) do
    if v.Name == "GrappleHookRope" then
        ropelength = true
        repeat 
        local grapple = game:GetService("Workspace")[game:GetService("Players").LocalPlayer.Name .. '']["Grapple Hook"].Handle.GrappleHookRope
        grapple.Length = grapple.Length + 2
        wait(0.00001)
        game.Players.LocalPlayer:GetMouse().KeyUp:Connect(function(key)
            if key == "e" then
                ropelength = false
            end
        end)
        until ropelength == false

end
end
end
end)




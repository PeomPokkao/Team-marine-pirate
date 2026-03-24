_G.AutoPirate = true

local player = game.Players.LocalPlayer
local RS = game:GetService("ReplicatedStorage")

task.spawn(function()
    repeat task.wait() until player:FindFirstChild("PlayerGui")

    while _G.AutoPirate do
        task.wait(1)

        -- ถ้ายังไม่มีทีม (ยังไม่เลือก)
        if player.Team == nil then
            pcall(function()
                RS.Remotes.CommF_:InvokeServer("SetTeam", "Pirates")
            end)
        end
    end
end)

repeat task.wait() until game:IsLoaded()

local Players = game:GetService("Players")
local player = Players.LocalPlayer

local function SetMarine()
    pcall(function()
        game:GetService("ReplicatedStorage")
            :WaitForChild("Remotes")
            :WaitForChild("CommF_")
            :InvokeServer("SetTeam", "Marines")
    end)
end

-- ยิงรัวช่วงแรก (สำคัญมาก)
for i = 1, 30 do
    task.wait(0.2)
    SetMarine()
end

-- เช็ค ถ้ายังไม่ใช่ Marine ให้ยิงซ้ำ
task.spawn(function()
    while task.wait(1) do
        if player.Team and player.Team.Name ~= "Marines" then
            SetMarine()
        end
    end
end)

repeat task.wait() until game:IsLoaded()

local team = "Marines"

local function trySet()
    pcall(function()
        game:GetService("ReplicatedStorage")
            :WaitForChild("Remotes")
            :WaitForChild("CommF_")
            :InvokeServer("SetTeam", team)
    end)
end

-- ยิงถี่ + หลายรอบ
for i = 1, 20 do
    task.wait(0.2)
    trySet()
end

-- รีตัวช่วยอีกแรง
pcall(function()
    game.Players.LocalPlayer.Character:BreakJoints()
end)

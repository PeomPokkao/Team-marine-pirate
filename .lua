-- Auto Select Team (ใช้ได้กับหลาย executor)

repeat task.wait() until game:IsLoaded()

local team = "Pirates" -- เปลี่ยนเป็น "Marines"

local function SetTeam()
    pcall(function()
        game:GetService("ReplicatedStorage")
            :WaitForChild("Remotes")
            :WaitForChild("CommF_")
            :InvokeServer("SetTeam", team)
    end)
end

-- ยิงซ้ำหลายครั้ง กันไม่ติด
for i = 1, 10 do
    task.wait(0.5)
    SetTeam()
end

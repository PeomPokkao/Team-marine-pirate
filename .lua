-- Auto Select Team (Pirate / Marine)

local Team = "Marine" -- เปลี่ยนเป็น "Marine" ได้

repeat task.wait() until game:IsLoaded()

-- กันพลาด: รอ GUI โหลด
repeat task.wait() until game.Players.LocalPlayer:FindFirstChild("PlayerGui")

-- ฟังก์ชันเลือกทีม
local function ChooseTeam()
    local args = {
        [1] = Team
    }

    game:GetService("ReplicatedStorage")
        :WaitForChild("Remotes")
        :WaitForChild("CommF_")
        :InvokeServer("SetTeam", Team)
end

-- รัน
pcall(function()
    ChooseTeam()
end)

print("Selected Team:", Team)

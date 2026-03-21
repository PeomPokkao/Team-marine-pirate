-- Auto Click GUI เลือกทีม
repeat task.wait() until game:IsLoaded()

local player = game.Players.LocalPlayer
local gui = player.PlayerGui

repeat task.wait() until gui:FindFirstChild("Main")

local main = gui.Main

if main:FindFirstChild("ChooseTeam") then
    local choose = main.ChooseTeam

    -- เลือก Pirate
    for _,v in pairs(choose:GetDescendants()) do
        if v.Name == "Pirates" and v:IsA("TextButton") then
            firesignal(v.MouseButton1Click)
        end
    end

    -- เลือก Marine (ถ้าจะใช้ เปลี่ยนเป็น Marines)
    --[[ 
    for _,v in pairs(choose:GetDescendants()) do
        if v.Name == "Marines" and v:IsA("TextButton") then
            firesignal(v.MouseButton1Click)
        end
    end
    ]]
end

-- // krnlly without joining the crew or group by Misamiru#8232

local ps = game:GetService("Players")
local lp = ps.LocalPlayer

local info = lp.DataFolder.Information
local krnllyCrew = 7286260
local isInCrew
local oldCrew
local crewValue

if info:FindFirstChild("Crew") then
  crewValue = info:FindFirstChild("Crew")
  oldCrew = crewValue.Value
  isInCrew = true
else
  crewValue = Instance.new("StringValue")
  crewValue.Parent = info
  isInCrew = false
end

crewValue.Value = tostring(krnllyCrew)

loadstring(game:GetObjects("rbxassetid://5727419904")[1].Source)()

wait(1)
if isInCrew == true then
  crewValue.Value = oldCrew
else
  crewValue:Destroy()
end
